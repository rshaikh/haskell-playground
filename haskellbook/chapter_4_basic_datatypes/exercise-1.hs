module Exercise1 where
data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood
changeMood Woot = Blah
changeMood _ = Woot

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == reverse xs

myAbs :: Integer -> Integer
myAbs x = if x < 0 then negate x else x


f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))


x = (+)
f1 xs = w `x` 1
  where w = length xs

myId = \x -> x

myHead = \ (x : xs) -> x

myFst (a, b) = a