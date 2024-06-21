use Math;
use UnitTest;
use Time;
use GpuDiagnostics;

record MandelInfo
{
    var ymin: imag = -1.2i;
    var ymax:imag = 1.2i;
    var xmin = -2.2;
    var  xmax = 0.6;
    param maxIterations = 1000;

    proc reset()
    {
        ymin = -1.2i;
        ymax = 1.2i;
        xmin = -2.2;
        xmax = 0.6;
    }

    proc scale(sf: real)
    {
        ymin /= sf;
        ymax /= sf;
        xmin /=sf;
        xmax /= sf;
    }

    proc move(deltaPercentX: real, deltaPercentY: real)
    {
        var dx: real = (xmax - xmin)*deltaPercentX / 100.0;
        var dy: imag = (ymax - ymin)*deltaPercentY / 100.0;
        ymin += dy; ymax += dy; xmin += dx; xmax += dx;
    }
}

record MandelKernel
{
    var maxIter: uint;
    
    proc init(mndlInfo: MandelInfo)
    {
        this.maxIter = mndlInfo.maxIterations;
    }
    
    proc compute(in point: complex): uint
    {
        var z: complex;
        var iteration: uint = 0;
        while(iteration < maxIter && (z.re**2 + z.im**2) < 4.0)
        {
            z = z*z + point;
            iteration+=1;
        }
        return iteration;
    }
}

param IMAGE_WIDTH = 800;
param IMAGE_HEIGHT = 600;
const IMAGE_SIZE = IMAGE_WIDTH * IMAGE_HEIGHT;
const ImageRange = {0..<IMAGE_SIZE};

proc ComputeMandelSet() : uint
{
    const info = new MandelInfo();
    var arguments: [ImageRange] complex;
    const rangeX: real = info.xmax - info.xmin;
    const rangeY: imag = info.ymax - info.ymin;
    const deltaY: imag = rangeY/(IMAGE_HEIGHT-1);
    const deltaX: real = rangeX/(IMAGE_WIDTH-1);
    var startTime = Time.dateTime.now();
    var cy: imag = info.ymin;
    for y in 0..<IMAGE_HEIGHT do
    {
      var cx: real = info.xmin;
      for x in 0..<IMAGE_WIDTH do
      {
        arguments[y * IMAGE_WIDTH + x] = cx + cy;
        cx += deltaX;
      }
      cy += deltaY;
    }
    var image: [ImageRange] uint;
    var kernel: MandelKernel = new MandelKernel(info);
    startVerboseGpu();
    image = kernel.compute(arguments);  // function promotion
    stopVerboseGpu();
    writeln(getGpuDiagnostics());
    var stopTime = Time.dateTime.now();
    return (stopTime - startTime).microseconds;
}

proc test_Mandel(test: borrowed Test) throws 
{
    var avgTime = 0.0;
    const n = 10;
    for i in 1..n do
    {
        var time = ComputeMandelSet();
        avgTime += time;
        writeln(time);
    }
    avgTime /= n;
    test.assertTrue(avgTime > 0);
}

UnitTest.main();
