import System.IO
import Data.List
import Data.Char

manyListsToInt [] = []
manyListsToInt (x:xs) = (oneLisToInt x) : (manyListsToInt xs ) 

oneLisToInt:: [String] -> [Integer]
oneLisToInt [] = []
oneLisToInt (x:xs) = (read x :: Integer): (oneLisToInt xs)

addTwoRows x y n 
               | (n+1) == (length x ) = [] 
               | otherwise =(y!!n + max (x!!n) (x!!(n+1)) ): ( addTwoRows x y (n+1) )
               
addAllRows [x] = head x               
addAllRows (x:y:ys) = addAllRows ((addTwoRows x y 0):ys)               

main :: IO ()
main = do
         handle <- openFile "files\\trianglePath.txt" ReadMode
         contents <- hGetContents handle
         let rows = map words(lines contents)
         let revRows = reverse (manyListsToInt rows)
         print (addAllRows revRows)