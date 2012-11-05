{-# LANGUAGE TemplateHaskell #-}

module Main where

import Test.Framework.TH (defaultMainGenerator)
import Test.Framework.Providers.HUnit (testCase)
import Test.HUnit

import Euler.Problem1 (multiple3or5, sumMultiple3or5Below)

main = $(defaultMainGenerator)

case_1 = do
  multiple3or5 30 @?= True

case_2 = do
  multiple3or5 4 @?= False

case_3 = do
  sumMultiple3or5Below 10 @?= 23

