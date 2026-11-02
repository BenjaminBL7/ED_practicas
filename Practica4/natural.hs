data Natural = Cero | S Natural deriving (Eq, Show)

{- Función a_natural
Descripción: toma un número entero y lo convierte al tipo Natural apenas definido aquí arriba.

Uso: a_natural 3 = S (S (S Cero))
-}
a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural x 
  | x>0 = (S(a_natural (x-1)))
  | otherwise = Cero

{- Función a_entero
Descripción: toma un número Natural y lo converte a entero.

Uso: a_entero (S (S (S Cero))) = 3
-}
a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S x) = (a_entero x) +1

{- Función potenciaNat
Descripción: toma dos números Naturales y eleva el primero a la potencia del segundo. El resultado será otro número natural. Me dio flojera describir las funciones auxiliares para esto así que la función convierte los números Naturales a Int para luego operar sobre ellos y, posteriormente, regresar el resultado en Natural.

Uso: potenciaNat (S(S Cero)) (S(S(S Cero))) = S (S (S (S (S (S (S (S Cero)))))))
-}
potenciaNat :: Natural -> Natural -> Natural
potenciaNat x Cero = S Cero
potenciaNat x (S y) = a_natural (a_entero(potenciaNat x y) * (a_entero x))

{- Función facNat
Descripción: recibe un número natural y saca su factorial. Igual que potenciaNat, convierte el número a Int para operar sobre él con las operaciones nativas de Haskell para luego convertirlo de regreso a Natural.

Uso: facNat (S (S (S (S Cero)))) = S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S Cero)))))))))))))))))))))))
-}
facNat :: Natural -> Natural
facNat Cero = Cero
facNat (S Cero) = (S Cero)
facNat (S x) = (a_natural((a_entero(S x)) * (a_entero (facNat x))))

