myButLast :: [a] -> a
myButLast [] = error "empty list"
myButLast [x,y] = x
myButLast (_:xs) = myButLast xs

myButLast' :: [a] -> a
myButLast' = last . init
