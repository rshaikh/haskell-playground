data TisAnInteger = TisAn Integer
instance Eq TisAnInteger where
  (==) (TisAn x) (TisAn x') = x == x'


data TwoIntegers = Two Integer Integer
instance Eq TwoIntegers where
  (==) (Two x y) (Two x' y') = x == x' && y == y'


data StringOrInt =
     TisInt Int
   | TisString String
instance Eq StringOrInt where
  (==) (TisInt x) (TisInt x') = x == x'
  (==) (TisString y) (TisString y') = y == y'
  (==) _ _ = False


data Pair a =
  Pair a a
instance Eq a => Eq (Pair a) where
  (==) (Pair x y) (Pair x' y') = x == x' && y == y'


data Tuple a b =
  Tuple a b
instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple x y) (Tuple x' y') = x == x' && y == y'


data Which a =
    ThisOne a
  | ThatOne a
instance Eq a => Eq (Which a) where
  (==) (ThisOne x) (ThisOne x') = x == x'
  (==) (ThatOne x) (ThatOne x') = x == x'
  (==) _ _ = False

data EitherOr a b =
     Hello a
   | Goodbye b
instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello x) (Hello x') = x == x'
  (==) (Goodbye x) (Goodbye x') = x == x'
  (==) _ _ = False

type Subject = String
type Verb = String
type Object = String

data Sentence =
  Sentence Subject Verb Object
s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"

myX = 1 :: Int
sigmund :: Int -> Int
sigmund x = myX


arith :: Num b => (a -> b) -> Integer -> a -> b
arith f x y = f y + fromIntegral x