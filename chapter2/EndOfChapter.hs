module End where

--Parenthesization

q = 2 + (2 * 3) - 1

w = 10 ^ (1 + 1)

e = (2 ^ 2) * (4 ^ 5) + 1

--Equivalent expressions

one = 1 + 1 == 2

two = 10 ^ 2 == 10 + 9 * 10

three = 400 - 37 /= (-) 37 400

four = thing /= 100 / 3

thing = if 100 `div` 3 == 33
        then 33.00
        else 100 / 3

five = 2 * 5 + 18 /= 2 * (5 + 18)

--More fun with functions

--Commented out the original to re-write with a where
--z = 7

--x = y ^ 2

--waxOn = x * 5

--y = z + 8

waxOn = x * 5 where
    z = 7
    y = z + 8
    x = y ^ 2

triple x = x * 3

waxOff x = abs (triple x + 3)
