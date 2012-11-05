## [Haskell](http://www.haskell.org/) solutions to [Project Euler](http://projecteuler.net/) problems

This repository uses [Cabal](http://www.haskell.org/cabal/) for building and testing.

To use it:

- Install a recent version of [Glasgow Haskell Compiler](http://www.haskell.org/ghc/).
- Install a recent version of Cabal: `$ cabal update` and `$ cabal install cabal-install`
- Set up path in `.bash_profile`: `$ export PATH="$HOME/Library/Haskell/bin:$PATH"`

- `$ cabal configure --enable-tests`
- `$ cabal build && cabal test`
- Run the sample executable: `$ dist/build/answer1/answer1`
