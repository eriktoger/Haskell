{-
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

-}

isPalindrome [] = True
isPalindrome [x] = True
isPalindrome x = if head x == last x
                  then  isPalindrome (tail (init x))
                  else False
                  
main :: IO()
main = do
  print ( maximum ([ a*b| a<-[999,998..100],b<-[999,998..a], isPalindrome (show (a*b))]) )
      
