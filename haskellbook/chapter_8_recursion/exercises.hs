--Write a function that sums all numbers from 1 to n
import Data.List (intersperse)

sumAll :: (Eq a, Num a) => a -> a
sumAll 1 = 1
sumAll n = n + sumAll (n - 1)

mulWithSummation :: (Integral a) => a -> a -> a
mulWithSummation x y = go y 0
  where go times acc
          | times == 0 = acc
          | otherwise = go (times - 1) (acc + x)


data DividedResult =
      Result (Integer, Integer)
    | DividedByZero
    deriving Show

divideBy :: Integer -> Integer -> DividedResult
divideBy _ 0 = DividedByZero
divideBy num denom = go num denom 0
  where go n d count
          | n < d = Result (count, n)
          | otherwise = go (n - d) d (count + 1)


mc91 :: Integer -> Integer
mc91 n
        | n > 100 = n - 10
        | otherwise = mc91 (mc91 (n + 11))

digitToWord :: Int -> String
digitToWord 0 = "Zero"
digitToWord 1 = "One"
digitToWord 2 = "Two"
digitToWord 3 = "Three"
digitToWord 4 = "Four"
digitToWord 5 = "Five"
digitToWord 6 = "Six"
digitToWord 7 = "Seven"
digitToWord 8 = "Eight"
digitToWord 9 = "Nine"
digitToWord _ = "Non-Parsable"

digits :: Int -> [Int]
digits n = go n []
  where go n' result
          | n' == 0 = result
          | otherwise = go (div n' 10) ([(mod n' 10)] ++ result)


wordNumber :: Int -> [String]
wordNumber n =  map digitToWord (digits n)