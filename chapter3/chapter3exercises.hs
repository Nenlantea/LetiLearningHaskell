module Chapter3 where

-- Reading syntax

a = concat [[1,2,3], [4,5,6]]

b = (++) [7,8,9] [10,11,12]

c = (++) "Hello " "world!"

d = "Hello " ++ "worldie!"

e = "Hello" !! 4

f = (!!) "Potatoe" 4

g = take 4 "lovely"

h = take 3 "awesome"

-- Matching results

ad = concat [[1*6], [2*6], [3*6]] == [6,12,18]

bc = "rain" ++ drop 2 "elbow" == "rainbow"

ce = 10 * head [1, 2, 3] == 10

da = (take 3 "Julie") ++ (tail "yes") == "Jules"

eb = concat [tail [1, 2, 3],
             tail [4, 5, 6],
             tail [7, 8, 9]] == [2,3,5,6,8,9]

-- Building functions

exclamation a = a ++ "!"

questioning a = a !! 4

agreeing a = drop 9 a


thirdLetter :: String -> Char

thirdLetter x = x !! 2


letterIndex :: Int -> Char

letterIndex x = "Nathan" !! x


rvrs :: String -> String

rvrs a = drop 9 a ++ " " ++ [a !! 6,a !! 7] ++ " " ++ take 5 a


secondRv :: String -> String

secondRv a = drop 9 a ++ take 4 (drop 5 a) ++ take 5 a


main :: IO ()

main = print $ rvrs "curry is awesome"
