{-

1. Scrieti o functie powers cu proprietatea ca powers n = [n1, n2, n3,…]

-}

-- powers x = []


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

intersect (x:xs) ys = if x `elem` ys
                 then x:intersect xs (delete x ys)
                 else intersect xs ys
intersect [] _ = []
intersect _ [] = []



{-
4. Scrieti o functie care transforma o lista de valori Bool intr-un numar intreg, considerand lista ca fiind reprezentarea lui in baza 2. De exemplu: [True, True, False] se va evalua la 6. Scrieti apoi functia inversa.

5. Scrieti o functie care calculeaza cel mai mare divizor comun a doua numere.

6. Implementati unul din algoritmii de sortare cunoscuti. Datele se vor reprezenta sub forma de 
lista.

7. Scrieti o functie ce evalueaza expresii sub forma poloneza postfixata. Expresia de calculat va fi transmisa functiei sub forma unui sir de caractere.
Exemplu:
“1 2 3 + *” se va evalua la 7, adica 1+2*3
“ 1 3 + 2 *” se va evalua la 8, adica (1+3)*2

-}