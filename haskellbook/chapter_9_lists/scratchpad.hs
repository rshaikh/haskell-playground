myTail :: [a] -> [a]
myTail [] = []
myTail (_ : xs) = xs

--myTail using Maybe which can be either Nothing or Just xs
safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail (x : []) = Nothing
safeTail (_ : xs) = Just xs

