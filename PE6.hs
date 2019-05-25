{-
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
-}

-- jag vill hitta alla primtal först
-- sedan vill jag förstora varje primtal tills det är precis mindre än 20 i detta fallet

-- tar en lista som börjar på 2. 2 rensar ut alla jämna tal.
-- dvs om x kan dela a så får a inte vara med.
-- sedan tar vi nästa tal som är 3 och gör samma sak
-- 4 är ju utrensat av 2, så nästa tal är 5.
-- på så sätt får vi alla primtal från vår lista
primes (x:xs) = do 
              let primesList = [a |a <- xs, a `mod` x /=0 ]
              x: (primes primesList)
primes [] =[]

-- primtalet två måste upp till 16. för talet ska vara delbart med 2,4,8,16. Och det är detta bigger gör
bigger x y = if x*x > y
             then x
             else bigger  (x*x) y

main :: IO()
main = do
      let limit = 20
      let primeList = primes [2..limit]
      let biggerNumbers = [bigger a limit | a <-primeList ]
      print (product biggerNumbers)
