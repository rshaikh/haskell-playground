module FunctionWithLet where
printInc2 n = let plusTwo = n + 2
            in print plusTwo

printInc2' n = (\plusTwo -> print plusTwo) (n + 2)

printInc3 n = (\foo -> print foo) (n + 2)



waxOn = x * 5 where z = 7; y = z + 8; x = y ^ 2

triple x = x * 3

waxOff x =  x + x + x