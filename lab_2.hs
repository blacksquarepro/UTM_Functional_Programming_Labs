{-

1. Care este tipul urmatoarelor date:
[’a’, ’b’, ’c’]
(’a’, ’b’, ’c’)
[(False, ’O’), (True, ’1’)]
([False, True ], [’0’, ’1’])
[tail , init , reverse ]

-}


-- [’a’, ’b’, ’c’] -> Lista
-- (’a’, ’b’, ’c’) -> Tuplu
-- [(False, ’O’), (True, ’1’)] -> Lista de Tupluri
-- ([False, True ], [’0’, ’1’]) -> Tuplu de Liste
-- [tail , init , reverse ] -> Lista de Functii




{-

2. Functia map :: (a -> b) -> [a] -> [b] aplica o alta functie pe toate elementele unei liste, rezultand o noua lista. Scrieti o definitie echivalenta e functiei de librarie length folosind functia map. Scrieti o functie mapAll asemanatoare cu map, dar care primeste o lista de functii ca prim argument.

-}

length' b = sum (map (const 1) b)


{-

3. Scrieti o functie Haskell care testeaza daca un numar intreg este palindrom.

-}

isPalindrome x = x == reverse x


{-

4. Definiti o functie block :: Int -> [a] -> [[a]] astfel incat block n xs imparte xs in blocuri de n elemente. De exemplu: block 3 “hello clouds” = [“hel”, “lo ”, “clo”, “uds”]

-}


block :: Int -> [a] -> [[a]]
block n [] = []
block n (x:xs) = take n (x:xs) : block n xs


{-

5. Turnurile din Hanoi. Se dau trei tije si n discuri de diferite dimensiuni, stivuite pe tija STANGA în ordine descrescatoare a dimensiunilor lor, formând un <turn> ca în figura. Sa se scrie o functie Haskell care care calculeaza cate mutari sunt necesare pentru -- a muta cele n discuri de pe tija STANGA pe tija DREAPTA, astfel încât ele sa fie ordonate ca la început.

-}