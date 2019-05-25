{-By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number? -}


primes (x:xs) = do 
              let primesList = [a |a <- xs, (a `mod` x ==0) == False ]
              x:(primes primesList)
              
primes [] =[]

primes_n n (x:xs) = do 
              let primesList = [a |a <- xs, (a `mod` x ==0) == False ]
              if n == 1
                then x
                else (primes_n (n-1) primesList)
              
primes_n _ [] =0

main :: IO()
main = do
        -- skapar en lista
        let primeList = (primes [2..])
        -- tar ut primtal 10001 ( som har index 10000)
        -- men det ar sjukt lång tid
        -- borde finnas ett smidigare sätt.
        -- där jag slipper spara mina tal.
        -- denna går lite snabbare.
        print ( primeList !! 5)
        print (primes [2..20] )
        print (primes_n 10001 [2..])
    
    
  

