module Undefined where

i :: a -> a
i a = a

c :: a -> b -> a
c a b = a

cprime :: b -> a -> b
cprime b a = b

testC :: (Eq a, Eq b) => a -> b -> Bool
testC a b = c a b == cprime a b

cc :: a -> b -> b
cc a b = b

r :: [a] -> [a]
r a = a ++ a ++ a

co :: (b -> c) -> (a -> b) -> a -> c
co bToc aTob a = bToc (aTob a)

a :: (a -> c) -> a -> a
a aToc a = a

aa :: (a -> b) -> a -> b
aa aTob a = aTob a
