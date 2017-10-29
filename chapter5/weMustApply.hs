{-# LANGUAGE NoMonomorphismRestriction #-}

module Applying where

-- 1 | c
-- 2 | a
-- 3 | b
-- 4 | c

-- a :: Num a => a
a = (* 9) 6

testA :: Bool
testA = a == 54

-- b :: Num a => (a, [Char]) 
b = head [(0,"doge"),(1, "kitteh")] 

testB :: Bool
testB = b == (0,"doge")

-- c :: (Integer, [Char])
c = head [(0 :: Integer, "doge"),(1,"kitteh")]

testC :: Bool
testC = c == (0 :: Integer, "doge")

-- d :: Bool
d = if False then True else False

testD :: Bool
testD = d == False

-- e :: Int
e = length [1, 2, 3, 4, 5]

testE :: Bool
testE = e == 5

-- f :: Bool
f = (length [1, 2, 3, 4]) > (length "TACOCAT")

testF :: Bool
testF = f == False

-- w :: Num a => a
x = 5
y = x + 5
w = y * 10

-- z :: Num a => a -> a
z y = y * 10

-- g :: Fractional a => a
g = 4 / y

-- h :: [Char]
i = "Julie"
j = " <3 "
k = "Haskell"
h = i ++ j ++ k

bigNum a = (^) 5 a
wahoo = bigNum 10

l = print
m = print "woohoo!"
n = l "hello world"

o = (+)
p = 5
q = o p 10
r = o q 200

s a = 12 + t a
t u = 10000 * u

{- categorizing types
Constrained polymorphic = CP
Fully polymorphic = FP
Concrete type = CT

f :: zed -> Zed -> Blah
     (1)    (2)    (3)
     FP     CT     CT
f :: Enum b => a -> b -> C
     (1)       (2) (3) (4)
     CP        FP  CP  CT
f :: f -> g -> C
    (1)  (2)  (3)
     FP   FP   CT -}

functionH :: [a] -> a
functionH (x:_) = x

functionC :: Ord a => a -> a -> Bool
functionC x y =
  if (x > y) then True else False

functionS :: (a, b) -> b
functionS (x, y) = y
