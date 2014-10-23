module Showable.Tree where

import Showable


data Tree a = Leaf a | Branch (Tree a) (Tree a)
  deriving Show

showableTree :: SomeShowable
showableTree = SomeShowable (Branch (Leaf 1) (Branch (Leaf 2) (Leaf 3)))
