module Airth4 where

roundTrip :: (Show a, Read a) => a -> a
roundTrip a = read (show a)

roundTrip' :: (Show a, Read a) => a -> a
roundTrip' a = read . show $ a

roundTrip'' :: (Show a, Read a) => a -> a
roundTrip'' = read . show

--Here read doesn't know the target type; we need to provide it using ::
--*Airth4> roundTrip''' 4 :: Integer
roundTrip''' :: (Show a, Read b) => a -> b
roundTrip''' = read . show

main = do
  print (roundTrip 4)
  print (id 4)