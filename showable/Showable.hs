{-# LANGUAGE DeriveDataTypeable, GADTs #-}
module Showable where

import Data.Typeable


data SomeShowable where
  SomeShowable :: Show a => a -> SomeShowable
  deriving Typeable

showIt :: SomeShowable -> String
showIt (SomeShowable x) = show x
