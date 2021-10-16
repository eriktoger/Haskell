{-
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
-}

-- generate primes up to 775147

-- hemmasnickrad sieve of erathostenes
primes (x:xs) = do 
              let primesList = [a |a <- xs, (a `mod` x ==0) == False ]
              x: (primes primesList)
primes [] =[]

-- delar med primtal tills talet blir 1 eller 
biggestPrimeDivider n (x:xs) = if (n `mod` x) == 0
                              then do
                                let m = (n `div` x)
                                x:biggestPrimeDivider m xs
                              else if x < n
                                then biggestPrimeDivider n xs
                                else []
biggestPrimeDivider 1 _ = []
biggestPrimeDivider _ [] =[]

main :: IO()
main = do
        let primesList =  primes [2..]
        print(biggestPrimeDivider 600851475143 primesList )

