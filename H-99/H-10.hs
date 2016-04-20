encode :: (Eq a) => [a] -> [(Int, a)]
encode [] = error "empty list"
encode xs = encode' (pack xs)

encode' :: (Eq a) => [[a]] -> [(Int, a)]
encode' xs = map (\l -> (length l, head l)) xs

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs) = [x : takeWhile (==x) xs] ++ pack (dropWhile (==x) xs)
