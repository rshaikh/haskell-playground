myLength :: [a] -> Int
myLength [x] = 1
myLength (x : xs) = 1 + myLength xs
