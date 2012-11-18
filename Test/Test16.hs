{-# LANGUAGE TemplateHaskell #-}

module Main where

import Test.Framework.TH (defaultMainGenerator)

import Test.HUnit
import Test.Framework.Providers.HUnit (testCase)

import Test.QuickCheck
import Test.Framework.Providers.QuickCheck2 (testProperty)

import Euler.Problem16 (sumDigitsPowerOfTwo)

main = $(defaultMainGenerator)

case_small =
  sumDigitsPowerOfTwo 15 @?= 26
