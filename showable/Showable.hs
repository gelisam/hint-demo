{-# LANGUAGE GADTs #-}
module Showable where


data SomeShowable where
  SomeShowable :: Show a => a -> SomeShowable

showIt :: SomeShowable -> String
showIt (SomeShowable x) = show x
