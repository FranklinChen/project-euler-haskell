{-# LANGUAGE TemplateHaskell #-}

module Main where

import Test.Framework.TH (defaultMainGenerator)

import Test.HUnit
import Test.Framework.Providers.HUnit (testCase)

import Test.QuickCheck
import Test.Framework.Providers.QuickCheck2 (testProperty)

import Euler.Problem9 (threeAnswer)

main = $(defaultMainGenerator)

{-
  Make sure solution really is a solution.
-}
prop_threeAnswer_works =
  forAll (choose (1, 10000)) $
  \n ->
  case threeAnswer n of
    Right (a, b, c) -> a*a + b*b == c*c && a+b+c == n
    _ -> True
