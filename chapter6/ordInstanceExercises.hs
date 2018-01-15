module OrdInstance where

data DayOfWeek =
  Mon | Tue | Wed | Thu | Fri | Sat | Sun
  deriving (Show, Eq)

instance Ord DayOfWeek where
  compare Fri Fri = EQ
  compare Fri _ = GT
  compare _ Fri = LT
  compare _ _ = EQ

a :: Bool
a = max (length [1, 2, 3])
        (length [8, 9, 10, 11, 12]) == 5

b :: Bool
b = compare (3 * 4) (3 * 5) == LT

c:: Bool
c = compare "Julie" "Cris" == GT

d :: Bool
d = ((5 + 3) > (3 + 6)) == False
