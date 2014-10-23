module Showable.Hyphen where

import Showable


showHyphenated :: SomeShowable -> SomeShowable -> String
showHyphenated (SomeShowable x) (SomeShowable y) = show x ++ "-" ++ show y
