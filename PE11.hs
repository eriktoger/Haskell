import System.IO
import Data.List
import Data.Char

cycleList [] = 0
cycleList (x:xs) = max (cycleProduct x) (cycleList xs)
          
cycleProduct x
           | length x < 5 = 0
           | otherwise = max (multiplyString ( take 4 x ) ) (cycleProduct (tail x) )
                    
multiplyString:: [String] -> Integer
multiplyString [] = 1
multiplyString (x:xs) =  ((read x)::Integer) * (multiplyString xs)

createDiagonal _ [] =[]
createDiagonal n [x]
                   | n < (length x) = [x !! n]
                   | otherwise = []
                   
createDiagonal n (x:xs)
                       | n < (length x) = (x!!n) :(createDiagonal (n+1) (xs) )
                       | otherwise = []

stepThrough2D n y 
                    |  n < length (head y) = createDiagonal n y : stepThrough2D (n+1) y
                    | otherwise = []

main :: IO ()
main = do
         handle <- openFile "files\\productGrid.txt" ReadMode
         contents <- hGetContents handle
         let rows = (lines contents)
         let rowsList = map words rows
         let colsList = transpose rowsList
         let reverseRowsList = map reverse rowsList
         let answer = maximum (map cycleList [rowsList,colsList,(stepThrough2D 0 rowsList),(stepThrough2D 0 reverseRowsList)])
         print answer
         print 70600674
         hClose handle