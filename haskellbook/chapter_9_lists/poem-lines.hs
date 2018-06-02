module PoemLines where
firstSen = "first sentence\n"
secondSen = "second sentence\n"
thirdSen = "third sentence\n"
fourthSen = "fourth sentence\n"

myWords :: String -> [String]
myWords [] = []
myWords (' ' : xs) = myWords xs
myWords xs = takeWhile (/=' ') xs : myWords (dropWhile (/=' ') xs)

sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

myLines :: String -> [String]
myLines "" = []
myLines poem = line : myLines remaining
  where line = takeWhile (/='\n') poem
        remaining = drop 1 (dropWhile (/='\n') poem)

shouldEqual =
  [ "first sentence",
    "second sentence",
    "third sentence",
    "fourth sentence"
  ]

separateStringAt :: Char -> String -> [String]
separateStringAt c "" = []
separateStringAt c xs = line : separateStringAt c remaining
  where line = takeWhile (/= c) xs
        remaining = drop 1 (dropWhile (/=c) xs)

myWords' :: String -> [String]
myWords' xs = separateStringAt ' ' xs

myLines' :: String -> [String]
myLines' xs = separateStringAt '\n' xs
main :: IO ()
main = print $ "Are they equal? " ++ show (myLines sentences == shouldEqual)
