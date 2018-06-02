eft :: (Ord a, Enum a) => a -> a -> [a]
eft start stop
    | start > stop = []
    | otherwise = start : eft (succ start) stop

myWords :: String -> [String]
myWords [] = []
myWords (' ' : xs) = myWords xs
myWords xs = takeWhile (/=' ') xs : myWords (dropWhile (/=' ') xs)

myZip :: [a] -> [b] -> [(a, b)]
myZip _ [] = []
myZip [] _ = []
myZip (x: xs) (y: ys) = (x, y) : myZip xs ys

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith _ _ [] = []
myZipWith _ [] _ = []
myZipWith f (x: xs) (y: ys) = f x y : myZipWith f xs ys

myZipUsingMyZipWith xs ys = myZipWith (\x y -> (x, y)) xs ys

-- Intermission exercises - TBD