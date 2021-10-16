main :: IO()
main = do
      print( [ (a,b,c,a*b*c )  |a<-[1..500],b<-[a..500],let c=sqrt (a^2+b^2), c^2 == a^2+b^2  ,(a+b+c)==1000] )
