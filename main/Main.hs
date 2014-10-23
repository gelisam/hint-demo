module Main where

import Language.Haskell.Interpreter

import Showable


main :: IO ()
main = do
    print (showIt (SomeShowable 1.0))
    r <- runInterpreter $ do
      setImports ["Prelude", "Showable", "Showable.Bool", "Showable.Int"]
      showableBool <- interpret "showableBool" (as :: SomeShowable)
      showableInt <- interpret "showableInt" (as :: SomeShowable)
      lift $ print (showIt showableBool)
      lift $ print (showIt showableInt)
    case r of
      Left err -> print err
      Right () -> return ()
