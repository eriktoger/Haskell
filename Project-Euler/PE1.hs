{-
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
-}


main :: IO()
main = do
      print ( sum ( [3,6..999] ++ [b |b <- [5,10..999], (b `elem` [3,6..999]) == False] ) )
      
