import System.IO
import Data.List
import Data.Char
--import Data.List.Split
-- https://stackoverflow.com/questions/4978578/how-to-split-a-string-in-haskell
-- egentligen vill jag kunna installera Data.List.Split men fick inte det att funka )=

removePunc xs = [ x | x <- xs, not (x `elem` " .?!-:;\"\'") ]
convertChar a = ord a - 64

stringValue x n = n*( stringValueAdd x)
stringValueAdd [] = 0
stringValueAdd (x:xs) = ord x -64 + stringValueAdd xs

stringValueTotal :: [String]->Int->Int
stringValueTotal [] _ = 0
stringValueTotal (x:xs) n = (stringValue x n) + stringValueTotal xs (n+1) 

main :: IO ()
main = do
        handle <- openFile "/home/erik/Downloads/Haskell/p022_names.txt" ReadMode
        contents <- hGetContents handle
        let text = sort (words [if c == ',' then ' ' else c|c <- (removePunc contents) ])
        print ( (text!!0)) 
        --let text2 = lines contents
        --print text2
        -- (convertChar 'A')
        --print (stringValue (text!!0)  )
        print(stringValueTotal text 1)