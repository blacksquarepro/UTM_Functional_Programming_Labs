{-
1.  Se considera o functie safeTail::[a]->[a] ce se comporta similar cu functia de librarie tail, cu exceptia ca in cazul listei vide safeTail va returna aceeasi lista vida, pe cand tail genereaza eroare. Definiti safeTail folosind: 
•        o expresie conditionala 
•        “guarded ecuations” 
•        “pattern matching” 
-}

safeTail' :: [a] -> [a]
safeTail' [] =  []
safeTail' (_:xs) =  xs


-- safeTail'' :: [a] -> [a]
-- safeTail'' x:xs
--     | [] = []
--     | otherwise safeTail'' (_:xs) =  xs


{-
2.  Scrieti o functie subList care verifica daca o lista e inclusa in alta. 
-}

subList :: Eq a => [a] -> [a] -> Bool
subList [] [] = True
subList _ []    = False
subList [] _    = False
subList (x:xs) (y:ys) 
    | x == y    = subList xs ys   
    | otherwise = subList (x:xs) ys


{-
3.  Definiti o functie pentru calculul produsului a 2 polinoame. Un polinom se va reprezenta prin lista coeficientilor. 
-}

polyAdd :: [Int] -> [Int] -> [Int]
polyAdd xs ys = zipWith (+) xs ys

polyMultiply :: [Int] -> [Int] -> [Int]
polyMultiply [] _  = [0]
polyMultiply (x : xs) ys = polyAdd (map (*x) ys) (0 : (polyMultiply (xs) ys))


{-
4.  Scrieti o functie pascal :: Int -> [Int] , unde pascal n returneaza randul n din triunghiul lui Pascal.
-}
