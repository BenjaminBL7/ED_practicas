import Modulo

data Tiempo = Dias Float | Meses Float deriving (Eq, Show)

{- Función cetes.
Descripción: calcula el monto final de una inversión después de alguna cantidad de días, tomando en cuenta la Tasa de Rendimiento Anual Bruta que correspondería a esa misma cantidad de días. Utiliza el data type Tiempo definido arriba.
Uso: cetes 200 (Dias 28)
-}

cetes :: Float -> Tiempo -> Float
cetes x (Dias y) 
        | y == 364 = x * (1 + ((7.44 / 100) * (y / 360)))
        | y == 182 = x * (1 + ((6.91 / 100) * (y / 360)))
        | y == 28 = x * (1 + ((6.01 / 100) * (y / 360)))
        | otherwise = 0
cetes x (Meses y) 
        | z == 364 = x * (1 + ((7.44 /100) * (z / 360))) 
        | z == 182 = x * (1 + ((6.91 / 100) * (z / 360))) 
        | z == 28 = x * (1 + ((6.01 / 100) * (z / 360))) 
        | otherwise = 0
        where z = (y * 28) 

{- Función mensajeCetes
Descripción: calcula el monto final de una inversión después de alguna cantidad de días, tomando en cuenta la Tasa de Rendimiento Anual Bruta que correspondería a esa misma cantidad de días y presenta la información en forma de texto.
Uso : mensajeCetes 200 (Dias 28)
-}

mensajeCetes :: Float -> Tiempo -> IO()
mensajeCetes x (Dias y) 
     | y == 364 = putStrLn ("Después de " ++ (show y ++ (" días, obtuve 7.44% de rendimiento bruto sin asumir ningún riesgo crediticio. El monto total de mi inversión es de $" ++ show z ++".")))
     | y == 182 = putStrLn ("Después de " ++ (show y ++ (" días, obtuve 6.91% de rendimiento bruto sin asumir ningún riesgo crediticio. El monto total de mi inversión es de $" ++ show z ++".")))
     | y == 28 = putStrLn ("Después de " ++ (show y ++ (" días, obtuve 6.01% de rendimiento bruto sin asumir ningún riesgo crediticio. El monto total de mi inversión es de $" ++ show z ++".")))
     | otherwise = putStrLn "No se admite este plazo de tiempo o esta cantidad de dinero"
     where z = (cetes x (Dias y))

{- Función negativos
Descripción: Cuenta la cantidad de números negativos que se encuentran en una lista que se proporcione.
Uso: negativos [1,-3,-5,3,-9,10] = 3
-}

negativos :: [Int] -> Int
negativos (xs) = length [x | x <- xs, x < 0]

{- Función soloPares
Descripción: genera una lista que contiene únicamente los números pares de una lista que se proporcione.
Uso: soloPares [1,2,3,4,5,6] = [2,4,6]
-}

soloPares :: [Int] -> [Int]
soloPares xs = [x | x <- xs, esParBin x == True]

{- Función primos
Descripción: genera una lista que contiene únicamente los números primos de una lista que se proporcione.
Uso: primos [6,4,15,7,9,14,11] = [7,11]
-}

primos :: [Int] -> [Int]
primos xs = [x | x <- xs, x > 1, all (noEsDivisor x) [2..x-1]]

{- Función coprimos
Descripción: genera una lista que contiene todos los coprimos de algún número x tales que sean menores a x.
Uso: coprimos 8 = [1,3,5,7]
-}

coprimos :: Int -> [Int]
coprimos x = [y | y <- [1..x], (interseccion (divisoresDe x) (divisoresDe y)) == [1]]
