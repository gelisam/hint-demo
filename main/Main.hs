module Main where

import Language.Haskell.Interpreter

import Showable


main :: IO ()
main = do
    print (showIt (SomeShowable 1.0))
    r <- runInterpreter $ do
      setImports ["Prelude", "Showable", "Showable.Bool", "Showable.Int", "Showable.Tree"]
      showableBool <- interpret "showableBool" (as :: SomeShowable)
      showableInt <- interpret "showableInt" (as :: SomeShowable)
      showableTree <- interpret "showableTree" (as :: SomeShowable)
      lift $ print (showIt showableBool)
      lift $ print (showIt showableInt)
      lift $ print (showIt showableTree)
    case r of
      Left err -> print err
      Right () -> return ()
