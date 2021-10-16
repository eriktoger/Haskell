import Data.Char
fac 0 = 1
fac n = n *(fac (n-1))

addString::String-> Int
addString [] = 0
addString (x:xs) = (digitToInt x) + addString xs
main :: IO ()
main = do
       print ( addString (show (fac 100) ) )