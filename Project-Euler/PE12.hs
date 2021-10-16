
triangleNumbers = [ sum [1..b] | b <- [1..] ]

-- nu ska jag kolla om de är delbara med tal.
-- här känns det som att jag borde ha en foorlop av något slag.
-- svaret är 76576500

toInt :: Float -> Int
toInt x = round x

delbarhet :: [Int] -> Int
delbarhet [] = error "too low treshold"
delbarhet (x:xs) = do
                  let y = toInt (sqrt (fromIntegral x) )
                  let b = 2*length [ 1 | a <-[1..y] ,x `mod` a  == 0]
                  if b < 500
                    then delbarhet xs
                    else x

main :: IO ()
main = do
         --print(triangleNumbers)
         print(delbarhet triangleNumbers)