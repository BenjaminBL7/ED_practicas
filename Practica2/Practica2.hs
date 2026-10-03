{-
Función: cuadradoFloat
Descripción: da el cuadrado de un número
Uso: cuadrado "número"
-}

cuadradoFloat :: Float -> Float
cuadradoFloat x = x * x

{-
Función: cuadradoInt
Descripción: da el cuadrado de un Int
Uso: cuadrado "número"
-}

cuadradoInt :: Int -> Int
cuadradoInt x = x * x

{- Función: recorvension
Descripción : elimina tres ceros al numero ingresado
Uso: reconversion 34000 -> 34
-}

reconversion :: Float -> Float
reconversion x = x/1000

{- Función: cashback
Descripción: indica el 10% del número ingresado, es decir, 
Uso: 
-}

cashback :: Float -> Float
cashback x = x/10
-- Pero esto no da lo que en la práctica dice que debería dar.

{- Función cashbackMonto
Descripción: Toma como entrada el dinero pagado y el valor de cada punto. Si el valor de cada punto es menor o igual a 1, la función multiplica ambos inputs. Si lo anterior no es el caso (o sea, el valor de cada punto es mayor a 1), la función divide ambos inputs. El caso de la multiplicación está diseñado así porque, si dividiera, el número terminaría siendo mayor que el primer argumento.

Uso: casbackMonto 300 0.1
-}

cashbackMonto :: Float -> Float -> Float 
cashbackMonto x y =
  if y >= 1
    then x / y
    else x * y

{-Función: MinutosHoras
Descripción: convierte minutos en horas. Hay cuatro casos, uno para cada ocasión en la que "minuto" y "palabra" deban ser plural
uso: minutosHoras 90 
-}

minutosHoras :: Int -> IO()
minutosHoras x =
  if x >= 120 || x < 60
  then if (mod x 60) == 1
       then putStrLn (show (div x 60) ++ " horas y " ++ show (mod x 60) ++ " minuto")
       else putStrLn (show (div x 60) ++ " horas y " ++ show (mod x 60) ++ " minutos")
  else if (mod x 60) == 1
       then putStrLn (show (div x 60) ++ " hora y " ++ show (mod x 60) ++ " minuto")
       else putStrLn (show (div x 60) ++ " hora y " ++ show (mod x 60) ++ " minutos")
  
{-
- Función: esDescendente
-}

esDescendente :: Int -> Int -> Int -> Int -> Bool
esDescendente x y z w =
  if (x > y && y > z) && z > w
        then True
        else False

{-
- Función: imc
Descripción: Utiliza metros y kilogramos para determinar la categiría dentro de la que cae el imc de alguien.
Uso: imc "peso en kg" "altura en metros"
-}

imc :: Float -> Float -> IO()
imc x y = 
  if (x / (y * y)) > 30
  then putStrLn "Obsesidad"
  else
    if (x / (y * y)) >= 25
    then putStrLn "Sobrepeso"
    else
      if (x / (y * y)) >= 18.5
      then putStrLn "Normal" 
      else putStrLn "Bajo"

-- Tratando de usar guardias:
-- imc :: Float -> Float -> IO()
-- imc x y = putStrLn 
--         | z > 30 = "Obsesidad"
--         | z >= 25 = "Sobrepeso"
--         | z >= 18.5 = "Normal"
--         | z < 18.5 = "Bajo"
--   where z = (x / (y * y))
          

{-
- Función: hipotenusa
Descripción: recibe dos valores de tipo flotante y te da la hipotenusa.
Uso: hipotenusa "base" "altura"
-}

hipotenusa :: Float -> Float -> Float
hipotenusa b h = sqrt ((b * b) + (h * h))

{-
- Función: pendiente
-}

--Primera versión:
-- pendiente :: (Float, Float) -> (Float, Float) -> Float
-- pendiente (x1,x2) (y1,y2) = ((y2 - y1) / (x2 - x1))

-- Versión menos desagradable a la vista (?):
pendiente :: (Float, Float) -> (Float, Float) -> Float
pendiente (x1,y1) (x2,y2) =
  let w = y2 - y1; r = x2 - x1;
  in w / r

{-
- Función: distanciaPuntos
-}
distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1,y1) (x2,y2) =
  let w = (x2 - x1); r = (y2 - y1);
  in sqrt ((cuadradoFloat w) + (cuadradoFloat r))
