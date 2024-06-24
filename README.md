# What is this?

* Attempt to learn a bit of [chapel](https://chapel-lang.org) as it seems to be an interesting approach to leverage today's compute architectures by using concepts inherently provided by the language itself instead of using external libraries.
* Attempt to also learn a bit of [raylib](https://www.raylib.com/index.html) to quickly get graphical output from C/C++ (and by C interoperability also from _chapel_) without using heavyweight frameworks. In addition, I wanted to learn about immediate mode GUIs.

# Environment and Requirements

* The application was built on the Windows Subsystem for Linux (WSL) with NVIDIA Cuda support installed. Chapel was built with LLVM support and raylib was build according to the documentation using _cmake_.
* Note that I had to downgrade the (Windows) NVIDIA driver to a version from October 2023 b/c otherwise, the GPU was not found.
  
