module Why where

data Mood = Blah | Woot deriving (Eq, Show)

changeMood :: Mood -> Mood
--changeMood a = b where
--           b = if a == Woot
--               then Blah
--               else Woot
--changeMood a = case a of
--                Woot -> Blah
--                Blah -> Woot
changeMood Woot = Blah
changeMood    _ = Woot

a = not True && True

b = not (x == 6) where
    x = 2

c = 1 * 2 > 5

d = "Merry" > "Happy"

e = ['1', '2', '3', ' '] ++ "Look at me!"
