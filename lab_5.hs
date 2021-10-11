import Data.Char

{-
1.  Scrieti o functie pythagoreans  care calculeaza toate tripletele (x,y,z) cu proprietatea x2+y2=z2, unde x, y, z sunt pana la o limta data.
De exemplu: 
> pythagoreans 10 
[(3,4,5),(4,3,5),(6,8,10),(8,6,10)] 
-}


{-
2.  Un numar natural se numeste perfect daca este egal cu suma divizorilor sai, excluzandu-se pe sine. Folosind list comprehension, definiti o functieperfects::Int->[Int] care o lista cu toate numere perfecte panal la o anumita limita.
De exemplu: 
> perfects 500 
 [6,28,496]

-}

perfectCheck :: Int -> Bool
perfectCheck n =
    n == sum [i | i <- [1..n-1], n `mod` i == 0]

perfect :: Int -> [Int]
perfect n = filter perfectCheck [1..n]


{-
3.  Implementati cifrul lui Cezar. Se vor define 2 functii encode pentru criptare si decode pentru decriptare. Ajutor: folositi functiile chr si ord. 
-}

encode, decode :: (Integral a) => a -> String -> String
encode k = map f
    where f c = case generalCategory c of
              LowercaseLetter -> addChar 'a' k c
              UppercaseLetter -> addChar 'A' k c
              _               -> c
decode k = encode (-k)
 
addChar :: (Integral a) => Char -> a -> Char -> Char
addChar b o c = chr $ fromIntegral (b' + (c' - b' + o) `mod` 26)
    where b' = fromIntegral $ ord b
          c' = fromIntegral $ ord c