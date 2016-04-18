myReverse :: [a] -> [a]
myReverse [x] = [x]
myReverse (x:xs) = myReverse xs ++ [x]


myReverse' ::[a] -> [a]
myReverse' = foldl (\acc x -> x : acc) []

myReverse'' ::[a] -> [a]
myReverse'' = foldr (\x acc -> acc ++ [x]) []
