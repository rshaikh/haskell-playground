compress :: (Eq a) => [a] -> [a]
compress [x] = [x]
compress [x, y] = if x == y then [x] else [x,y]
compress (x:y:xs)
              | x == y = compress ([y] ++ xs)
              | x /= y = [x] ++ compress ([y] ++ xs)


compress' :: (Eq a) => [a] -> [a]
compress' xs = foldl chooseValue [(head xs)] xs

chooseValue :: (Eq a) => [a] -> a -> [a]
chooseValue acc x = if (last acc) == x then acc else acc ++ [x]
