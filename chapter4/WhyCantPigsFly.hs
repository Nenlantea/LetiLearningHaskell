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
