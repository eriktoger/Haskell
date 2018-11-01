import System.IO  
  
main = do  
    contents <- readFile "input.txt"  
    putStr contents