import System.IO
-- först vill skapa abundent numbers?
-- 

abuNr [] = []
abuNr (x:xs)  
         | (findDev x) > x = x : (abuNr xs)
         | otherwise = (abuNr xs)

abuNr2 [] = []
abuNr2 (x:xs)  
         | (findDev2 x) > x = x : (abuNr2 xs)
         | otherwise = (abuNr2 xs)


-- denna ska nog bara kolla upp den roten ur. och sedan lägga till dubbelt

findDev :: Integer-> Integer
findDev 1 = 0
findDev 2 = 1
findDev n = do
             let y = round (sqrt (fromIntegral n) )
             -- det som händer är att vi behöver lägga till a om a = (div n a
             sum [if (div n a) == a then a else a +(div n a) | a <-[2..y], mod n a == 0] +1 -- +1 för att vi delar inte med 1
            
findDev2 :: Integer-> Integer
findDev2 1 = 0
findDev2 2 = 1
findDev2 n = sum [a | a <-[1..(n-1)], mod n a ==0 ] 

-- nu ska vi kolla alla tal upp 28123 om de INTE är en kombination av två tal i min lista
-- Ska vi bara generer alla tal vi kan upp till 28123? Hade jag haft en dubbel forloop så kanske det inte hade varit så farligt.
-- och sen ta bort dubletter och sen kolla om talen [1..28123] inte är i den listan? 
-- if = n -a1 == a2 för alla a1 < n

notSum (x:xs) =

checkAbNr n a abNr
              | a > n = 0
              | (n-a) `elem` abNr = a
              | otherwise = 0

main :: IO ()
main = do
           print (findDev 12, findDev 28 ) -- ska ge 16, 28
           let abNr = abuNr [1..28123]
           --print ( length (abuNr2 [1..3000]) )
           print ("hej")
           print ( [x+y |x<- abuNr [1..500], y <- abuNr [x..500-x]] )
           
           