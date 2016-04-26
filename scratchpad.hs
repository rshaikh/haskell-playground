import Data.List

doubleMe :: Int -> Int
doubleMe x = x + x

doubleSmallNumber x = if x > 100
                      then x
                      else x * 2

rashid'sFunction = 10


removeNonUppercase :: [Char] -> [Char]
removeNonUppercase xs = [x | x <- xs, x `elem` ['A'..'Z']]

lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN"
lucky x = "Sorry, you are out of luck"


sayMe :: (Integral a) => a -> String
sayMe 1 = "One"
sayMe 2 = "Two"
sayMe 3 = "Three"
sayMe x = "Not between 1 - 3"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial x = x * factorial(x - 1)

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
        | bmi <= 18.5 = "Underweight"
        | bmi <= 25.0 = "Normal"
        | bmi <= 30.0 = "Fat"
        | otherwise = "Whale"
        where bmi = weight / height ^ 2



initials :: String -> String -> String
initials firstname lastname  = [f] ++ " ." ++ [l] ++ "."
          where (f:_) = firstname
                (l:_) = lastname

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "empty list"
maximum' [x] = x
maximum' (x:xs)
          | x > maxFromTail = x
          | otherwise = maxFromTail
          where maxFromTail = maximum' xs


replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
          | n <= 0    = []
          | otherwise = x : replicate' (n - 1) x


compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred x = compare 100 x

compareWithHundred' :: (Num a, Ord a) => a -> Ordering
compareWithHundred' = compare 100


reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []


numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub


myFun :: (Eq a) => [a] -> [a]
myFun = map head .
            sortBy (\x y -> compare (length y) (length x)) .
            group
