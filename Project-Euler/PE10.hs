import Data.Numbers.Primes


main :: IO()
main = do
      print(  sum (takeWhile (<2000) [p | p <- primes]))
      --mycket långsammare att kolla varje tal
      print(  sum (takeWhile (<2000) . filter isPrime $ [1..]))
