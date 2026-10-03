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
Descripción: Utiliza metros y kilogramos.
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
