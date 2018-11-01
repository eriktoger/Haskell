import System.IO 
-- https://stackoverflow.com/questions/17252851/how-do-i-take-the-last-n-elements-of-a-list


addLast9 [] = 0
addLast9 (x:xs) = x + addLast9 xs

main :: IO ()
main = do
         handle <- openFile "files\\LargeSum.txt" ReadMode
         contents <- hGetContents handle
         let rows = lines contents         
         -- trodde först de menade de talen på slutet
         --let revRows = map (read::String->Integer) (map reverse (map (take 10) (map reverse (lines contents))))
         let rows9 = map (read::String->Integer) (lines contents)
         --let nineRows = map (take 9) revRows
         print( take 10 (show $ addLast9 rows9 ) )
         --print( rows !! 0)
         --print(revRows !! 0)
         --print( rows9 !! 0 )
         --print( rows !! 1)
         --print(revRows !! 1)
         --print( rows9 !! 1 )
         --print( rows !! 99)
         --print(revRows !! 99)
         --print( rows9 !! 2 )
         --let intRR = read ( revRows !! 0 )::Integer
         --print(intRR+1)
         --print( nineRows !! 0 )
         hClose handle