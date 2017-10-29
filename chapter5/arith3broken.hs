module Arith3Broken where

main :: IO ()
main = do
  print b
  putStrLn "10"
  print a 
  print ((+) 0 blah)
  where blah = negate 1
        a = (negate (-1))
        b = 1 + 2
