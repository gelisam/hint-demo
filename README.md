# Hint Demo

A program to demonstrate that the [hint](http://hackage.haskell.org/package/hint) library can load arbitrary values; even if it doesn't have the source, even unserializable values such as functions, even values which involve existential datatypes, and even if the types hidden in those existential datatypes are unknown until runtime.

## Usage

Each folder except `hint-demo` contains a small library, which will be loaded at runtime by `hint-demo`. The first step is to navigate to each folder and to install each library using `cabal install`. It's possible to [ask hint to look inside a sandbox](https://github.com/gelisam/hawk/blob/master/src/System/Console/Hawk/Sandbox.hs) but in this demo, to make it easier for hint to find the installed binaries, please don't use a sandbox.

If you really want to make sure that hint-demo is loading the compiled `.hi`, `.a`, `.so` or `.dylib` files which have been installed to your `~/.cabal` folder, you can erase the source files for those libraries if you want.

Next, go to the `hint-demo` folder, install and run the program. If everything worked correctly, the output should be as follows:

    $ hint-demo
    "1.0"
    "True"
    "42-Branch (Leaf 1) (Branch (Leaf 2) (Leaf 3))"
