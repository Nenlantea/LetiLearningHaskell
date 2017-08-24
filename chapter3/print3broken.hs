module Print3Broken where

printSecond :: IO ()

printSecond = do
  putStrLn greeting

greeting = "yarrrrrr"

main :: IO ()

main = do
  putStrLn greeting
  printSecond
  
