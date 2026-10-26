module Modulo (esParBin, interseccion, divisoresDe, noEsDivisor) where
import Data.Bits

{- Función esParBin
Descripción: verifica que el número ingresado sea par a través de su valor en binario.
Uso:
        esParBin 5 = False
        esParBin 6 = True
-}

esParBin :: Int -> Bool
esParBin n = (n.&.1) == 0

{- Funcion eliminaElemento
Descripción: definida recursivamente, elimina un elemento dado de una lista dada.
Uso: eliminaElemento 5 [1,2,5,2,5] = [1,2,2]
-}

eliminaElemento :: Eq a => a -> [a] -> [a]
eliminaElemento x (y:ys) = if x == y
                              then eliminaElemento x (ys)
                              else (y:(eliminaElemento x (ys)))
eliminaElemento x [] = []

{- Función interseccion
Descripcion: definida recursivamente, da una lista que contiene todos los números en común entre dos listas dadas.
Uso: interseccion [1,4,3,6,1] [8,5,2,3,1]
-}

interseccion :: [Int] -> [Int] -> [Int]
interseccion (x:xs) (y:ys) = if x == y
  then (x:(eliminaElemento x (interseccion (xs) (ys))))
  else (eliminaRepetidos ((interseccion (x:xs) (ys)) ++ (interseccion (xs) (y:ys))))
interseccion [] (xs) = []
interseccion (xs) [] = []

{- Función eliminaRepetidos
Descripción: definida recursivamente, elimina todos los elementos repetidos dentro de la lista que se proporcione
Uso: eliminaRepetidos: [2,4,1,4] = [2,4,1]
-}

eliminaRepetidos :: [Int] -> [Int]
eliminaRepetidos (x:y:ys) = (x:(eliminaRepetidos (eliminaElemento x (y:ys))))
eliminaRepetidos [] = []
eliminaRepetidos [x] = [x]

{- Función divisoresDe
Descripción: da una lista con todos los divisores de algún número que se proporcione
Uso: divisoresDe 8 = [1,2,4,8]
-}

divisoresDe :: Int -> [Int]
divisoresDe x = [y | y <- [1..x], x `mod` y == 0]

{- Función noEsDivisor
Descripción: indica si el segundo número no es divisor del primero.
Uso:
        noEsDivisor 10 4 = True
        noEsDivisor 9 3 = False
-}

noEsDivisor :: Int -> Int -> Bool
noEsDivisor x y = (x `mod` y) /= 0
