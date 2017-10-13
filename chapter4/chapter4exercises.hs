module Chapter4 where

awesome = ["Papuchon", "curry", ":)"]
also = ["Quake", "The Simons"]
allAwesome = [awesome, also]

length' :: [a] -> Int
length' a = length a

a = length [1, 2, 3, 4, 5] == 5

b = length [(1, 2), (2, 3), (3, 4)] == 3

c = length allAwesome == 2

d = length (concat allAwesome) == 5

division = div 6 (length [1, 2, 3])

testing a = if a + 3 == 5
            then putStrLn "yey"
            else putStrLn "poop"
x = 5

e = length allAwesome + length awesome == 5

f = (8 == 8) && ('b' < 'a') == False

isPalindrome :: (Eq a) => [a] -> IO ()

isPalindrome z = if reverse z == z
                 then putStrLn "This is a palindrome"
                 else putStrLn "This is not a palindrome"

myAbs :: Integer -> Integer

myAbs a = if a > 0
          then a
          else (-a)

g :: (a, b) -> (c, d) -> ((b, d), (a, c))
g a b = ((snd a, snd b), (fst a, fst b)) 

-- Correcting syntax

w = (+)
adding :: [a] -> Int
adding h = w y 1
    where y = (length h)

identity i = i

first (a, b) = a
