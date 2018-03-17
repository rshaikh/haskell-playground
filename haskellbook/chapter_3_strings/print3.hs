module Print3 where

myGreeting :: String
myGreeting = "Hello" ++ " World!"

hello :: String
hello = "Hello"

world :: String
world = "World!"

main :: IO()
main = do
  putStrLn myGreeting
  putStrLn secondGreeting
  where secondGreeting = concat [hello, " ", world]

foo = do putStrLn "hey there"
         putStrLn "Howz life"

addExclamation x = x ++ "!"

thirdLetter :: [a] -> a
thirdLetter xs = xs !! 2

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome" !! x