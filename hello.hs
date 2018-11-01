import System.IO  
  
-- mina filer ligger i files\ 
--    Jag behöver nog bli mycket bättre på filer innan jag gör PE 8
main = do  
    handle <- openFile "files\\numbersBig.txt" ReadMode  
    contents <- hGetContents handle   
    let rows = lines contents
    print (rows ) 
    hClose handle