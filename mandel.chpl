use Math;
use Time;
use GPU;
use GpuDiagnostics;
use IO.FormattedIO;
use CTypes;

require "craylib.chpl";
use CRayLib;

record MandelInfo
{
    var ymin = -1.2;
    var ymax = 1.2;
    var xmin = -2.2;
    var xmax = 0.6;
    param maxIterations = 1000;

    proc reset()
    {
        ymin = -1.2;
        ymax = 1.2;
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
        var dx = (xmax - xmin)*deltaPercentX / 100.0;
        var dy = (ymax - ymin)*deltaPercentY / 100.0;
        ymin += dy; ymax += dy; xmin += dx; xmax += dx;
    }
}

param IMAGE_WIDTH = 800;
param IMAGE_HEIGHT = 600;
const IMAGE_SIZE = IMAGE_WIDTH * IMAGE_HEIGHT;
const ImageRange = {0..<IMAGE_SIZE};

proc ComputeMandelSet(out image: [ImageRange] uint) : uint
{
    const info = new MandelInfo();
    var arguments: [ImageRange] (real, real);
    const rangeX = info.xmax - info.xmin;
    const rangeY = info.ymax - info.ymin;
    const deltaY = rangeY/(IMAGE_HEIGHT-1);
    const deltaX = rangeX/(IMAGE_WIDTH-1);
    var startTime = Time.dateTime.now();
    var cy = info.ymin;
    for y in 0..<IMAGE_HEIGHT do
    {
      var cx: real = info.xmin;
      for x in 0..<IMAGE_WIDTH do
      {
        arguments[y * IMAGE_WIDTH + x] = (cx, cy);
        cx += deltaX;
      }
      cy += deltaY;
    }
    startVerboseGpu();

    on here.gpus[0] 
    {
        const maxIter = info.maxIterations;
        var gpuArgs = arguments;
        var gpuImage: [ImageRange] uint;

        foreach (i, point) in zip(gpuArgs.domain, gpuArgs) do  
        {
            var zr = 0.0, zi = 0.0;
            var iteration: uint = 0;
            while(iteration < maxIter && (zr**2 + zi**2) < 4.0)
            {
                const temp = zr * zr - zi * zi + point(0);
                zi = 2.0 * zr * zi + point(1);
                zr = temp;
                iteration+=1;
            }
            gpuImage[i] = iteration;
        }

        image = gpuImage;
    }
    stopVerboseGpu();
    var stopTime = Time.dateTime.now();
    return (stopTime - startTime).microseconds;
}

proc main() 
{
    const n = 10;

    CRayLib.InitWindow(800, 600, "MandelWindow");
    CRayLib.SetTargetFPS(60); 

    while(!CRayLib.WindowShouldClose()) do 
    {
        var image;
        ComputeMandelSet(image);
        CRayLib.BeginDrawing();

        for y in 0..<IMAGE_HEIGHT do
        {
            for x in 0..<IMAGE_WIDTH do
            {
                const px = image[y*IMAGE_WIDTH+x];
                var color: CRayLib.Color = new CRayLib.Color(((px << 1) % 256): uint(8),px: uint(8), ((px >> 1) % 256): uint(8), 255: uint(8));
                CRayLib.DrawPixel(x: int(32), y: int(32), color);        
            }
        }
        CRayLib.EndDrawing();
    }
    CRayLib.CloseWindow();
}
