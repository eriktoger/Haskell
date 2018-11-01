toInt :: Float -> Int
toInt x = round x
-- nu måste jag beräkna allting 2 gånger.
-- man annars måste jag leta upp dubbletter 
-- kanske borde skapa en hash-map så jag inte behöver beräkna saker två gånger?
delbarhet :: Int -> Int
delbarhet x = do
                  let y = toInt (sqrt (fromIntegral x) )
                  let b = sum [ (quot x a)+a | a <-[2..y] ,x `mod` a  == 0]+1
                  let z = toInt (sqrt (fromIntegral b) )
                  let d = sum [ (quot b c)+c | c <-[2..z] ,b `mod` c  == 0]+1
                  if (x == d) && (x/=b)
                  then b
                  else 0


main :: IO ()
main = do
         print (sum [delbarhet a | a<-[1..10000]] )