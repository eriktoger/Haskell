import System.IO
import Data.List
--n → n/2 (n is even)
--n → 3n + 1 (n is odd)
-- answer 837799

-- z keeps track of what number was the orginal input.
-- the answer gives first the number of jumps and second
-- but it is quite slow, maybe only do odd numbers, since odd will become a (larger) even number
collatz :: Double -> Double -> Integer->(Integer,Double)
collatz z n x
         | n == 1 = (x,z) 
         | mod (round n) 2 == 0 = collatz z (n/2) (x+1)
         | otherwise  = collatz z (3*n+1) (x+1)



main :: IO ()
main = do
        print(  maximum [ collatz n n 0 | n <-[1,3..1000000] ] )