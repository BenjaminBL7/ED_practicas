import Auxiliar

{- Función multEnt
Descripción: recibe dos numeros Enteros (los cuales se definen en Auxiliar.hs) y multiplica el primer por el segundo. El resultado será otro número entero.

Uso: multEnt (Succ(Succ Zero)) (Succ(Succ Zero)) = Succ (Succ (Succ (Succ Zero)))
-}

multEnt :: Entero -> Entero -> Entero
multEnt Zero x = Zero
multEnt x Zero = Zero
multEnt (Succ Zero) (Succ x) = (Succ x)
multEnt (Succ x) (Succ Zero) = (Succ x)
multEnt (Succ x) (Succ y) = sumaEnt (Succ x) (multEnt (Succ x) y)
multEnt (Neg x) (Neg y) = multEnt x y
multEnt (Neg x) (Succ y) = Neg(multEnt x (Succ y))
multEnt (Succ x) (Neg y) = Neg (multEnt (Succ x) y)
