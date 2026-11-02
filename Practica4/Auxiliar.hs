module Auxiliar (Entero(..), sumaEnt) where

data Entero = Zero | Succ Entero | Neg Entero deriving (Eq, Show)

{- Función sumaEnt
Descripción: toma dos números enteros y los suma. El resultado es otro número entero
Uso: sumaEnt (Neg(Succ(Succ Zero))) (Succ Zero) = Neg (Succ Zero)
-}

sumaEnt :: Entero -> Entero -> Entero
sumaEnt Zero x = x
sumaEnt x Zero = x
sumaEnt (Succ x) (Succ y) = sumaEnt x (Succ(Succ y))
sumaEnt (Neg x) (Neg y) = Neg(sumaEnt x y)
sumaEnt (Neg x) (Succ y)
  | igualQueEnt x (Succ y) == True = Zero
  | mayorQueEnt x (Succ y) == True = Neg (restaEnt x (Succ y))
  | otherwise = (restaEnt (Succ y)  x)
sumaEnt (Succ x) (Neg y)
  | (igualQueEnt (Succ x) y) == True = Zero
  | mayorQueEnt (Succ x) (Neg y) == True = restaEnt (Succ x) y
  | otherwise = Neg(restaEnt y x)


{- Función restaEnt
Descripción: toma el primer número entero que recibe y le resta el segundo. El resultado es otro número entero
Uso: restaEnt (Neg(Succ(Succ Zero))) (Succ Zero) = Neg (Succ (Succ (Succ Zero)))
-}  

restaEnt :: Entero -> Entero -> Entero
restaEnt Zero (Succ x) = (Neg (Succ x))
restaEnt x Zero = x
restaEnt Zero (Neg x) = x
restaEnt (Succ x) (Succ y)
  | (igualQueEnt (Succ x) (Succ y)) == True = Zero
  | (mayorQueEnt (Succ x) (Succ y)) == True = restaEnt x y
  | otherwise = Neg(restaEnt y x)
restaEnt (Neg x) (Neg y)
  | (igualQueEnt x y) == True = Zero
  | (mayorQueEnt (Neg x) (Neg y)) == True = restaEnt x y
  | otherwise = sumaEnt x y
restaEnt (Neg x) (Succ y)
  | igualQueEnt x (Succ y) == True = Zero
  | otherwise = Neg(sumaEnt x (Succ y))

{- Función auxiliar igualQueEnt
Descripción: recibe dos enteros y te dice si son el mismo o no.
Uso = (Neg(Succ Zero)) (Succ Zero) = False
-}

igualQueEnt :: Entero -> Entero -> Bool
igualQueEnt Zero Zero = True
igualQueEnt x Zero = False
igualQueEnt Zero x = False
igualQueEnt (Neg x) (Succ y) = False
igualQueEnt (Succ x) (Neg y) = False
igualQueEnt (Succ x) (Succ y) = igualQueEnt x y
igualQueEnt (Neg (Succ x)) (Neg (Succ y)) = igualQueEnt x y

{- Función auxiliar mayorQueEnt
Descripción: Recibe dos números enteros e indica si el primero es mayor que el segundo o no
Uso: mayorQueEnt (Succ(Succ(Zero))) (Neg(Succ(Zero))) = True 
-}

mayorQueEnt :: Entero -> Entero -> Bool
mayorQueEnt Zero (Succ x) = False
mayorQueEnt (Succ x) Zero = True
mayorQueEnt Zero (Neg x) = True
mayorQueEnt (Neg x) Zero = False
mayorQueEnt (Succ x) (Neg y) = True
mayorQueEnt (Neg x) (Succ y) = False
mayorQueEnt (Succ x) (Succ y) = (mayorQueEnt (x) (y))
mayorQueEnt (Neg x) (Neg y) = (mayorQueEnt (y) (x))

