{-# LANGUAGE TemplateHaskell #-}

{-|
  Sample tests.

  Links to the testing tools used:

  <http://batterseapower.github.com/test-framework/>

  <http://hackage.haskell.org/packages/archive/QuickCheck/latest/doc/html/Test-QuickCheck.html>
  <http://hackage.haskell.org/packages/archive/HUnit/latest/doc/html/Test-HUnit.html>

  <http://hackage.haskell.org/package/test-framework-th>
-}

module Main where

import Test.Framework.TH (defaultMainGenerator)

import Test.HUnit
import Test.Framework.Providers.HUnit (testCase)

import Test.QuickCheck
import Test.Framework.Providers.QuickCheck2 (testProperty)

import Euler.Problem1 (multiple3or5, sumMultiple3or5Below)

main = $(defaultMainGenerator)

{-
  Silly tests just to illustrate use of HUnit.
-}
case_shouldBeMultiple =
  multiple3or5 30 @?= True

case_shouldNotBeMultiple =
  multiple3or5 4 @?= False

case_sumShouldWork =
  sumMultiple3or5Below 10 @?= 23

{-
  Silly test just to illustrate use of QuickCheck with a generator
  and explicit universal quantification.
-}
prop_subsetSumShouldAlwaysBeLessThanFullSum =
  forAll (choose (1, 1000)) $
  \n -> sumMultiple3or5Below n <= sum [1..n-1]
