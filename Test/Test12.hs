{-# LANGUAGE TemplateHaskell #-}

module Main where

import Test.Framework.TH (defaultMainGenerator)

import Test.HUnit
import Test.Framework.Providers.HUnit (testCase)

import Test.QuickCheck
import Test.Framework.Providers.QuickCheck2 (testProperty)

import qualified Data.List as List

import Euler.Problem12 (firstTriangleNumberOverNDivisors,
                        triangleNumbers,
                        numDivisors,
                        countDuplicates)

main = $(defaultMainGenerator)

case_over_5_divisors =
  firstTriangleNumberOverNDivisors 5 @?= 28

case_seventh_triangle_number =
  triangleNumbers !! (7 - 1) @?= 28

{-
  Make sure the triangle numbers are as they are defined.
-}
prop_triangle_numbers =
  forAll (choose (1, 1000)) $
  \n -> triangleNumbers !! (fromInteger n - 1) == sum [1..n]

--- numDivisors

-- 1: 1
case_numDivisors_1 =
  numDivisors 1 @?= 1

-- 3: 1,3
case_numDivisors_3 =
  numDivisors 3 @?= 2

-- 6: 1,2,3,6
case_numDivisors_6 =
  numDivisors 6 @?= 4

-- 10: 1,2,5,10
case_numDivisors_10 =
  numDivisors 10 @?= 4

-- 28: 1,2,4,7,14,28
case_numDivisors_28 =
  numDivisors 28 @?= 6

{-
  Check our optimized implementation.
-}
prop_countDuplicates =
  forAll (listOf $ choose (1 :: Int, 3)) $
  \xs ->
  countDuplicates xs == [length ys | ys <- List.group xs]
