foo :: String -> Int
foo s = checkPalindrome s 0 (length s)

checkPalindrome :: String -> Int -> Int -> Int
checkPalindrome s index length
                | index >= length = 999
                | isPalindrome s = -1
                | isPalindrome (removeElementAt s index) = index
                | otherwise = checkPalindrome s (index + 1) length

isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

removeElementAt :: String -> Int -> String
removeElementAt s index = case (splitAt (index + 1) s) of (h,t) -> take (index) h ++ t
