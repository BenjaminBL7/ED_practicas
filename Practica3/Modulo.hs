module Modulo (esParBin, interseccion, divisoresDe, noEsDivisor) where
import Data.Bits

esParBin :: Int -> Bool
esParBin n = (n.&.1) == 0

eliminaElemento :: Eq a => a -> [a] -> [a]
eliminaElemento x (y:ys) = if x == y
                              then eliminaElemento x (ys)
                              else (y:(eliminaElemento x (ys)))
eliminaElemento x [] = []

interseccion :: [Int] -> [Int] -> [Int]
interseccion (x:xs) (y:ys) = if x == y
  then (x:(eliminaElemento x (interseccion (xs) (ys))))
  else (interseccion (xs) (y:ys))
interseccion [] (xs) = []
interseccion (xs) [] = []

divisoresDe :: Int -> [Int]
divisoresDe x = [y | y <- [1..x], x `mod` y == 0]

noEsDivisor :: Int -> Int -> Bool
noEsDivisor x y = (x `mod` y) /= 0
