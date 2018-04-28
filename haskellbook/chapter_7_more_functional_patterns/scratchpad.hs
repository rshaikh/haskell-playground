module RegisteredUser where

newtype Username = Username String
newtype AccountNumber = AccountNumber Integer

data User = UnregisteredUser
          | RegisteredUser Username AccountNumber

printUser :: User -> IO ()
printUser UnregisteredUser = putStrLn "UnregisteredUser"
printUser (RegisteredUser (Username name) (AccountNumber acctNum))
          = putStrLn $ name ++ " " ++ show acctNum


data WherePenguinsLive =
    Galapagos
 |  Antarctica
 |  Australia
 |  SouthAfrica
 |  SouthAmerica
 deriving (Eq, Show)

data Penguin =
  Peng WherePenguinsLive
  deriving (Eq, Show)

--Match on a specific data constructor
isSouthAfrica :: WherePenguinsLive -> Bool
isSouthAfrica SouthAfrica = True
isSouthAfrica _ = False

--unpack value inside Peng
gimmeWhereTheyLive :: Penguin -> WherePenguinsLive
gimmeWhereTheyLive (Peng whereItLives) = whereItLives

--Match on the value inside Peng
galapagosPenguin :: Penguin -> Bool
galapagosPenguin (Peng Galapagos) = True
galapagosPenguin _ = False

avgGrade x
  | otherwise = 'B'
  | y >= 0.9 = 'A'
  where y = x / 100

numbers :: (Num a, Ord a) => a -> a
numbers x
  | x < 0 = -1
  | x == 0 = 0
  | x > 0 = 1
