import System.IO
import Data.Char 
--import Text.Read

-- jaha, det är en enda lång rad!

cycleList [] = 0
cycleList (x:xs) = do
                   let y = cycleProduct x
                   let z = cycleList xs
                   max y z
cycleRow x
           | length x < 13 = []
           | otherwise = (take 13 x): cycleRow (tail x) 

cycleProduct x
           | length x < 13 = 0
           | otherwise = do 
                         let y = multiplyString ( (take 13 x) )
                         let z = cycleProduct (tail x)
                         max y z
 
get13Product y
              | length y < 13 = 0
              | otherwise = multiplyString (take 13 y)

multiplyString:: String -> Integer
multiplyString [] = 1
--multiplyString [x] = (toInteger ((digitToInt  x)))
multiplyString (x:xs) = (toInteger ((digitToInt  x))) * (multiplyString xs)              
              
main :: IO ()
main = do
         handle <- openFile "files\\AdjecentProduct.txt" ReadMode
         contents <- hGetContents handle
         let rows = lines contents
         let row0 = rows !! 0
         print ("my answ:", cycleList rows)
         print ("right:  ", 23514624000)
         --print (rows)
         --let row0Int = map 
         --print( take 3 row0Int)
         --print(multiplyString y)
         --print( multiplyString y)
         