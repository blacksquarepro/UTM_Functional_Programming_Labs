import Data.List
{-
1.  Scrieti o actiune IO() care concateneaza 2 fisiere a caror nume se citeste de la tastatura.
-}


fileConcat :: IO ()
fileConcat = do
    file1 <- getLine
    data1 <- readFile file1
    file2 <- getLine
    data2 <- readFile file2
    writeFile "output" (data1 ++ data2)


{-
2.  Definiti  o  actiune  IO()  readSort,  care  citeste  numere  intregi,  de  la  tastatura,  de  pe  linii succesive pana la intalnirea unei linii ce nu contine un intreg. Dupa citirea ultimei linii valide trebuie sa afiseze numerele sub forma unei secvente ordonate.
-}


getList = do
    line <- getLine
    if line == "exit" then return []
                      else fmap (line:) getList

readSort = sort getList

{-
3.  Construiti un joc de x si zero folosind biblioteca grafica Graphics.SOE (opțional).
-}