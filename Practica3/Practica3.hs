import Modulo

data Tiempo = Dias Float | Meses Float deriving (Eq, Show)

{- Función cetes.
Descripción: calcula el monto final de una inversión después de alguna cantidad de días, tomando en cuenta la Tasa de Rendimiento Anual Bruta que correspondería a esa misma cantidad de días. Utiliza el data type Tiempo definido arriba.
Uso: cetes 200 (Dias 40)
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


mensajeCetes :: Float -> Tiempo -> IO()
mensajeCetes x (Dias y) 
     | y == 364 = putStrLn ("Después de " ++ (show y ++ (" días, obtuve 7.44 de rendimiento bruto sin asumir ningún riesgo crediticio. El monto total de mi inversión es de $" ++ show z ++".")))
     | y == 182 = putStrLn ("Después de " ++ (show y ++ (" días, obtuve 6.91 de rendimiento bruto sin asumir ningún riesgo crediticio. El monto total de mi inversión es de $" ++ show z ++".")))
     | y == 28 = putStrLn ("Después de " ++ (show y ++ (" días, obtuve 6.01 de rendimiento bruto sin asumir ningún riesgo crediticio. El monto total de mi inversión es de $" ++ show z ++".")))
     | otherwise = putStrLn "No se admite este plazo de tiempo o esta cantidad de dinero"
     where z = (cetes x (Dias y))

recNegativos :: [Int] -> Int
recNegativos (x:xs) = if x < 0
  then 1 + (recNegativos xs)
  else recNegativos xs
recNegativos [] = 0

negativos :: [Int] -> Int
negativos (xs) = length [x | x <- xs, x < 0]

soloPares :: [Int] -> [Int]
soloPares xs = [x | x <- xs, esParBin x == True]
