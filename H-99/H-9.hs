pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs) = [x : takeWhile (==x) xs] ++ pack (dropWhile (==x) xs)
