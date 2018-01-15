{- Chapter 6 Exercises

Multiple Choice:
1) The Eq class / makes equality tests possible
2) The typeclass Ord / allows any two values to be compared
3) Suppose the typeclass Ord has an operator >. What is the type or >? / Ord a => a -> a -> Bool
4) In x = divMod 16 12 / x is equal to 12 / 16
5) The typeclass Integral includes /integral, real and fractional numbers

-}

data Person = Person Bool deriving Show

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

data Mood = Blah
          | Woot deriving Eq

settleDown x = if x == Woot
                 then Blah
                 else x
                      
{- Once settleDown typechecks then:
 a) Moods are acceptable inputs but no other type will be accepted.
 b) If you give it a 9 it will result in an error because it can't compare the number with the mood.
 c) Blah > Woot will result in an error because there's no Ord instance defined in the type.
-}

type Subject = String
type Verb = String
type Object = String

data Sentence =
  Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"

data Rocks =
   Rocks String deriving (Eq, Show, Ord)

data Yeah =
  Yeah Bool deriving (Eq, Show, Ord)

data Papu =
  Papu Rocks Yeah
  deriving (Eq, Show, Ord)

phew = Papu (Rocks "chases") (Yeah True)

truth = Papu (Rocks "chomskydoz")
             (Yeah True)

equalityForall :: Papu -> Papu -> Bool
equalityForall p q = p == q

comparePapus :: Papu -> Papu -> Bool
comparePapus p q = p > q
