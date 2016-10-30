module FunctionWithWhere where
printInc n = print plusTwo
 where plusTwo = n + 2

mult1    = x * y
 where x = 5
       y = 6

z = 7
triple x = x * 3
waxOn = x * 5 where x = y ^ 2
y = z + 8

waxOff x = triple $ x * x
