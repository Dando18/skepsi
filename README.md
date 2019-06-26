# Magmadnn

A neural network library in c++ aimed at providing a simple, modularized framework for deep learning. This is a Work-In-Progress replacement for [MagmaDNN](https://bitbucket.org/icl/magmadnn).

===== VERSION 0.1.0 =====
- Currently magmadnn provides a dynamic memory manager, tensor wrapper for the memory manager, and a set of math operations for the tensor.
- As of 0.1.0 it now has support for a full compute graph, gradient computation, forward/backward propagation, and basic NN Layers.
- More is coming...


### Tutorials
-------------
There are several tutorials in [docs/tutorials](/docs/tutorials). These give an introduction into installing and using the library.

### Download and Installation
-----------------------------

##### Dependencies
MagmaDNN uses `make` as its build system, so it must be installed on your system and in your path before you can build the library. The build also requires a c++11 capable compiler.

If compiling with GPU capabilities, then CUDA and likewise nvcc must be installed and in the proper PATHs. MagmaDNN has only been tested on Ubuntu (>16) and MacOS using CUDA (>9.0), however it is likely to work on most *nix based systems with a recent CUDA install. 

MagmaDNN makes heavy use of BLAS libraries. For CPU only code a C BLAS library must be installed (such as [openblas](https://www.openblas.net/), [atlas](http://math-atlas.sourceforge.net/), intel mkl, etc...). If using the GPU, then [Magma](http://icl.cs.utk.edu/magma/) (>=2.5.0) and [CuDNN](https://developer.nvidia.com/cudnn) (>=7) must be installed.

##### Download
First get the repository on your computer with

```sh
git clone https://github.com/MagmaDNN/magmadnn
cd magmadnn
```

##### Install
Next copy the make include settings into the head directory and edit them to your preferences.

```sh
cp make.inc-examples/make.inc-standard ./make.inc
vim make.inc # if you want to edit the settings
```

After this simply run `make install` to build and install MagmaDNN. If your prefix (install location) has root priviledge access, then you'll need to run with `sudo`.

So the entire script looks like:

```sh
git clone https://github.com/MagmaDNN/magmadnn
cd magmadnn
cp make.inc-examples/make.inc-standard ./make.inc
sudo make install
```

### Testing 
------------
MagmaDNN comes with some tester files to make sure everything is working properly. You can build them using the same makefile as for installation. Use the following commands to build and run the testers:

```sh
make testing
cd testing
sh run_tests.sh
```

If you're getting failed testers, then there is something wrong with your installation. See the [troubleshooting section](https://github.com/MagmaDNN/magmadnn/tree/master/docs/troubleshooting.md) for more help.

### Examples
-----------
For examples of what MagmaDNN code looks like see the [examples/ folder](https://github.com/MagmaDNN/magmadnn/tree/master/examples). If MagmaDNN is downloaded and installed, then the examples can be made and run with `make examples`.


_author:_ Daniel Nichols

_co-author:_ Sedrick Keh
