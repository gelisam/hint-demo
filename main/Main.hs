module Main where

import Language.Haskell.Interpreter

import Showable


main :: IO ()
main = do
    print (showIt (SomeShowable 1.0))
    r <- runInterpreter $ do
      setImports ["Prelude", "Showable", "Showable.Hyphen"]
      interpret "showHyphenated" (as :: SomeShowable -> SomeShowable -> String)
    case r of
      Left err -> print err
      Right showHyphenated -> do
        r <- runInterpreter $ do
          setImports ["Prelude", "Showable", "Showable.Bool", "Showable.Int", "Showable.Tree"]
          showableBool <- interpret "showableBool" (as :: SomeShowable)
          showableInt <- interpret "showableInt" (as :: SomeShowable)
          showableTree <- interpret "showableTree" (as :: SomeShowable)
          lift $ print (showIt showableBool)
          lift $ print (showHyphenated showableInt showableTree)
        case r of
          Left err -> print err
          Right () -> return ()
