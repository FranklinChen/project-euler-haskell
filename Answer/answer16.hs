{-|
  Problem 16 of Project Euler

  <http://projecteuler.net/problem=16>

  2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

  What is the sum of the digits of the number 2^1000?
-}

module Main where

import Euler.Problem16 (sumDigitsPowerOfTwo)

main :: IO ()
main = putStrLn $ show answer


{-|
  The answer.
-}
answer :: Integer
answer = sumDigitsPowerOfTwo 1000
