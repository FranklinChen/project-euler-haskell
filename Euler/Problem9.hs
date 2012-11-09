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

module Euler.Problem9 where

{-|
  Work backwards from the sum, reducing the size of the problem
  by searching the largest possible numbers given the constraints
  of the sum a + b + c as well as the sum a^2 + b^2 = c^2.
-}
threeAnswer :: Int -- ^ desired sum of three natural numbers > 0
            -> Either String (Int, Int, Int) -- ^ error message or triplet
threeAnswer aPlusBPlusC =
  case [(a, b, c) | c <- [aPlusBPlusC - 2, aPlusBPlusC - 3 .. 1],
                    let c2 = c*c,
                    let aPlusB = aPlusBPlusC - c,
                    aPlusB > 0,
                    b <- [c-1, c-2 .. 1],
                    let b2 = b*b,
                    let a2 = c2 - b2,
                    a2 < b2,
                    let a = aPlusB - b,
                    a > 0 && a*a == a2] of
    []    -> Left "no answer"
    (x:_) -> Right x
    _     -> Left "too many answers"
