module GrabABag where

-- Excercise 1 / equivalent functions

mTha :: (Num a, Eq a) => a -> a -> a -> a
mTha x y z = x * y * z

mThb :: (Num a, Eq a) => a -> a -> a -> a
mThb x y = \z -> x * y * z

mThc :: (Num a, Eq a) => a -> a -> a -> a
mThc x = \y -> \z -> x * y * z

mThd :: (Num a, Eq a) => a -> a -> a -> a
mThd = \x -> \y -> \z -> x * y * z

test :: (Num a, Eq a) => a -> a -> a -> Bool
test x y z = mTha x y z == mThb x y z

test1 :: (Num a, Eq a) => a -> a -> a -> Bool
test1 x y z = mThb x y z == mThc x y z

test2 :: (Num a, Eq a) => a -> a -> a -> Bool
test2 x y z = mThc x y z == mThd x y z

finalTest a b c = test a b c && test1 a b c && test2 a b c

-- Excercise 2 - the type doesn't change with 1 argument so the answer is b

-- Excercise 3 / Anonymous lambda syntax

addOneIfOdd n = case odd n of
  True -> f n
  False -> n
  where f = \n -> n + 1

addFive = \x -> \y -> (if x > y then y else x) + 5

mflip f x y = f y x
