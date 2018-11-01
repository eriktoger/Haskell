import Data.Char
--stringSum :: String-> Int
stringSum [] = 0
stringSum (x:xs) = digitToInt x + stringSum xs  

main :: IO ()
main = do
        --let a = show (2^1000)
        print ( stringSum $ show (2^1000) )
        