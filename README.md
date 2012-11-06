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
$ cabal install test-framework
$ cabal install test-framework-hunit
$ cabal install test-framework-th
$ cabal install HUnit
```

### Build and test

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
