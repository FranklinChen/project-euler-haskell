{-|
  Problem 1 of Project Euler

  <http://projecteuler.net/problem=1>

  If we list all the natural numbers below 10 that are multiples of 3 or
  5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
-}

module Euler.Problem1 where

sumMultiple3or5Below :: Int -- ^ @n@, natural number upper range
                     -> Int -- ^ sum of multiples of 3 or 5 less than @n@
sumMultiple3or5Below n = sum $ filter multiple3or5 [1..n-1]

{-|
  The trick is to avoid /double-counting/ numbers that are multiples of
  both 3 and 5.  So we cannot count multiples of 3 and multiples of 5
  and add them.
-}
multiple3or5 :: Int  -- ^ @n@, natural number
             -> Bool -- ^ whether @n@ is a multiple of 3 or 5
multiple3or5 n = n `mod` 3 == 0 || n `mod` 5 == 0
