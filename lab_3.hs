-- Imports Block
import Data.List


{-
1. Scrieti o functie powers cu proprietatea ca powers n = [n^1, n^2, n^3,…]
-}

-- Created a finite function in order to not cause CPU lock and Memory Leaks
powers :: Int -> Int -> [Int]
powers x y = zipWith (^) (replicate x y) [1..x]


{-
2. Definiti o functie longest care returneaza cele mai lungi cuvinte dintr-o propozitie(String). 
Exemplu:
> longest “examples of functional algorithms”
[“functional”, “algorithms”]
Ajutor: puteti folosi functia de biblioteca words.
-}


{-
3. Scrieti o functie care calculeaza intersectia a doua multimi(liste).
Ajutor: puteti folosi functia de librarie elem.
-}

listIntersection :: Eq a => [a] -> [a] -> [a]
listIntersection [] _ = []
listIntersection (x:xs) ys
    | x `elem` ys = x : listIntersection xs ys
    | otherwise = listIntersection xs ys



{-
4. Scrieti o functie care transforma o lista de valori Bool intr-un numar intreg, considerand lista ca fiind reprezentarea lui in baza 2. De exemplu: [True, True, False] se va evalua la 6. Scrieti apoi functia inversa.
-}


{-
5. Scrieti o functie care calculeaza cel mai mare divizor comun a doua numere.
-}

maxDivisor :: Integer -> Integer -> Integer
maxDivisor a b
    | b == 0 = abs a
    | otherwise = maxDivisor b (a `mod` b)


{-
6. Implementati unul din algoritmii de sortare cunoscuti. Datele se vor reprezenta sub forma de lista.
-}

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = quicksort [y | y <- xs, y <= x] ++ [x] ++ quicksort [y | y <- xs, y > x]

{-
7. Scrieti o functie ce evalueaza expresii sub forma poloneza postfixata. Expresia de calculat va fi transmisa functiei sub forma unui sir de caractere.
Exemplu:
“1 2 3 + *” se va evalua la 7, adica 1+2*3
“ 1 3 + 2 *” se va evalua la 8, adica (1+3)*2
-}


    
solveRPN :: String -> Float  
solveRPN = head . foldl foldingFunction [] . words  
    where   foldingFunction (x:y:ys) "*" = (x * y):ys  
            foldingFunction (x:y:ys) "+" = (x + y):ys  
            foldingFunction (x:y:ys) "-" = (y - x):ys  
            foldingFunction (x:y:ys) "/" = (y / x):ys  
            foldingFunction (x:y:ys) "^" = (y ** x):ys
            foldingFunction xs numberString = read numberString:xs  