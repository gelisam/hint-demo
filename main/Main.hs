module Main where

import Showable


main :: IO ()
main = do
    print (showIt (SomeShowable 1.0))
