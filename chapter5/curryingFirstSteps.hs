module FirstCurry where

addStuff :: Integer -> Integer -> Integer
addStuff a b = a + b + 5

addTen = addStuff 5

fifteen = addTen 5

subtractStuff :: Integer -> Integer -> Integer
subtractStuff x y = x - y - 10

subtractOne = subtractStuff 1

result = subtractOne 11

nonsense :: Bool -> Integer
nonsense True = 805
nonsense False = 31337

curriedFunction :: Integer -> Bool -> Integer
curriedFunction i c = i + (nonsense c)

uncurriedFunction :: (Integer, Bool) -> Integer
uncurriedFunction (i, c) = i + (nonsense c)

anonymous :: Integer -> Bool -> Integer
anonymous = \i c -> i + (nonsense c)

anonNested :: Integer -> Bool -> Integer
anonNested = \i -> \c -> i + (nonsense c)

celebrate = (++ " awesome!")

hasTen :: (Eq a, Num a) => [a] -> Bool
hasTen = elem 10

