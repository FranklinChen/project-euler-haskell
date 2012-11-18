{-|
  Problem 16 of Project Euler

  <http://projecteuler.net/problem=16>

  2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

  What is the sum of the digits of the number 2^1000?
-}

module Euler.Problem16 where

import qualified Data.Char as Char

{-|
  Convert @2^n@ to base 10, then sum the digits.
  Use infinite-precision arithmetic.
-}
sumDigitsPowerOfTwo :: Integer -> Integer
sumDigitsPowerOfTwo = sum . toBase10Digits . (2^)

toBase10Digits :: Integer -> [Integer]
toBase10Digits = map (toInteger . Char.digitToInt) . show
