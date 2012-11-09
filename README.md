# [Haskell](http://www.haskell.org/) solutions to [Project Euler](http://projecteuler.net/) problems

This repository uses [Cabal](http://www.haskell.org/cabal/) for building and testing.

## Installing Haskell setup

### Glasgow Haskell Compiler

Install a recent version of [Glasgow Haskell Compiler](http://www.haskell.org/ghc/).

The preferred method is to install the [Haskell Platform](http://www.haskell.org/platform/).

### Cabal

Even if you already have Cabal, you should make sure to have the latest version.

```
$ cabal update
$ cabal install cabal-install
```

### Setup

Set up your `PATH`, e.g., append to `.bash_profile`.

```
$ export PATH="$HOME/Library/Haskell/bin:$PATH"
```

## Building and running the Project Euler project

### Configure and install dependencies

```
$ cabal configure --enable-tests
```

You may need to install dependencies, e.g.,

```
$ cabal install HUnit
$ cabal install QuickCheck
$ cabal install test-framework
$ cabal install test-framework-hunit
$ cabal install test-framework-quickcheck2
$ cabal install test-framework-th
```

### Build and test

We are using [`test-framework`](http://batterseapower.github.com/test-framework/) for testing, wrapping around the [QuickCheck](http://hackage.haskell.org/packages/archive/QuickCheck/latest/doc/html/Test-QuickCheck.html) and [HUnit](http://hackage.haskell.org/packages/archive/HUnit/latest/doc/html/Test-HUnit.html) frameworks.

Also, we use [`test-framework-th`](http://hackage.haskell.org/package/test-framework-th), a nice wrapper using [Template Haskell](http://www.haskell.org/haskellwiki/Template_Haskell) to simplify the writing of test cases.

```
$ cabal build && cabal test
```

### Run

Run the sample executable:
```
$ dist/build/answer1/answer1
```

### View the Haddock documentation

To illustrate the Haddock documentation system, some annotations have been added to the code.

```
$ cabal haddock
```

Open up `dist/doc/html/project-euler-haskell/index.html` in your Web browser to view the generated documentation.

## More documentation

Use [Hoogle](http://www.haskell.org/hoogle/) to search for stuff.
