{-|
  Problem 9 of Project Euler

  <http://projecteuler.net/problem=9>

   A Pythagorean triplet is a set of three natural numbers, a < b < c,
   for which,

   a^2 + b^2 = c^2

   For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

   There exists exactly one Pythagorean triplet for which a + b + c = 1000.
   Find the product abc.
-}

module Main where

import Euler.Problem9

main :: IO ()
main = putStrLn $ show answer


{-|
  The answer.
  We were told there was a unique answer for 1000.
-}
answer :: Int
answer =
  case threeAnswer 1000 of
    Right (a, b, c) -> a*b*c
