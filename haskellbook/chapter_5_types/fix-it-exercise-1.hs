--Broken code
--module sing where
--fstString :: [Char] ++ [Char]
--fstString x = x ++ " in the rain"
--sndString :: [Char] -> Char
--sndString x = x ++ " over the rainbow"
--sing = if (x > y) then fstString x or sndString y
--where x = "Singin"
--      x = "Somewhere"
--

--Solution
module Sing where
fstString :: [Char] -> [Char]
fstString x = x ++ " in the rain"
sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"
sing = if (x > y) then fstString x else sndString y
       where x = "Singin"
             y = "Somewhere"

--Output
--Prelude> :load fix-it-exercise-1.hs
--[1 of 1] Compiling Sing             ( fix-it-exercise-1.hs, interpreted )
--Ok, one module loaded.
--Sing> sing
--"Somewhere over the rainbow"
