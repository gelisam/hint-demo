module Main where

import Language.Haskell.Interpreter

import Showable


main :: IO ()
main = do
    print (showIt (SomeShowable 1.0))
    r <- runInterpreter $ do
      setImports ["Prelude"]
      n <- interpret "2+2" (as :: Int)
      lift $ print n
    case r of
      Left err -> print err
      Right () -> return ()
