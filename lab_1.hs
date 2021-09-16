{-

Exercitii 
1.  Cum adaugati 4 la sfarsitul listei [1,2,3] ? 
2.  Gasiti  cel  putin  2  definitii  echivalente  pentru  functia  de  librarie last  (returneaza  ultimul element al unei liste nevide), folosind functiile explicate in acest laborator.
3.  Gasiti cel putin 2 definitii echivalente pentru functia de librarie init(sterge ultimul element dintr-o lista nevida), folosind functiile explicate in acest laborator.
4.  Scrieti o functie fib n care returneaza  al n-lea element din sirul lui fibonacci. Scrieti o functie fibonacci n care returneaza lista cu primele n elemente din sirul lui fibonacci (folosind, eventual, functia fib)

-}

-- 1.  Cum adaugati 4 la sfarsitul listei [1,2,3] ?
reverse' = reverse (4:reverse [1,2,3])


-- 2.  Gasiti  cel  putin  2  definitii  echivalente  pentru  functia  de  librarie last  (returneaza  ultimul element al unei liste nevide), folosind functiile explicate in acest laborator.

lastlist1 :: [a] -> a
lastlist1 [] = error "empty list"
lastlist1 (x:xs) = head (reverse (x:xs))

lastlist2 :: [a] -> a
lastlist2 [] = error "empty list"
lastlist2  (x:xs) = (x:xs)!!(length(x:xs)-1)


-- 3.  Gasiti cel putin 2 definitii echivalente pentru functia de librarie init(sterge ultimul element dintr-o lista nevida), folosind functiile explicate in acest laborator.

initlist1 :: [x] -> [x]
initlist1 (x:xs) = take (length(x:xs)-1) (x:xs)

initlist2 :: [a] -> [a]
initlist2 (x:xs) = reverse (drop 1 (reverse (x:xs)))



-- 4.  Scrieti o functie fib n care returneaza  al n-lea element din sirul lui fibonacci. Scrieti o functie fibonacci n care returneaza lista cu primele n elemente din sirul lui fibonacci (folosind, eventual, functia fib)

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib x = fib(x-1) + fib(x-2)

fiblist x = map fib [1..x]