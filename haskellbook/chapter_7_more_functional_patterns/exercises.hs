--INTERMISSION EXERCISES
--1. Which two or more of the following are equivalent
--mTh x y z = x * y * z
--mTh x y = \z -> x * y * z
--mTh x = \y -> \z -> x * y * z
mTh = \x -> \y -> \z -> x * y * z
-- All of them are equivalent

--2. Type of mTh 3 will be `mTh 3 :: Integer -> Integer -> Integer`

--3. a)
addOneIfOdd n = case odd n of
  True -> f n
  False -> n
  where f = \n -> n + 1

--3. b)
--addFive x y = (if x > y then y else x) + 5
addFive = \x -> \y -> (if x > y then y else x) + 5

--3. b)
--mflip f = \x -> \y -> f y x
mflip f x y = f y x

isItTwo :: Integer -> Bool
isItTwo 2 = True
isItTwo _ = False

functionC x y =
  case x > y of
  True -> x
  False -> y


ifEvenAdd2 n =
  case even n of
  True -> n + 2
  False -> n

nums x =
  case compare x 0 of
    LT -> -1
    GT -> 1
    EQ -> 0

tensDigit :: Integral a => a -> a
tensDigit x = d
  where xLast = x `div` 10
        d     = xLast `mod` 10

tensDigit' :: Integral a => a -> a
tensDigit' x = d
  where (xLast, _) = x `divMod` 10
        d     = xLast `mod` 10

hunsD x = d2
  where d   = x `div` 100
        d2  = d `mod` 10

foldBool :: a -> a -> Bool -> a
foldBool x y condition =
  case condition of
    True -> x
    False -> y

foldBool1 :: a -> a -> Bool -> a
foldBool1 x y condition
  | condition = x
  | otherwise = y

foldBool2 :: a -> a -> Bool -> a
foldBool2 x y True = x
foldBool2 x y _ = y

g :: (a -> b) -> (a, c) -> (b, c)
g f x = (f(fst x ), snd x)

--With pattern match on args
g' :: (a -> b) -> (a, c) -> (b, c)
g' f (a, c) = (f a, c)
