data Natural = Cero | S Natural deriving (Eq, Show)


a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural x 
  | x>0 = (S(a_natural (x-1)))
  | otherwise = Cero

a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S x) = (a_entero x) +1

potenciaNat :: Natural -> Natural -> Natural
potenciaNat x Cero = S Cero
potenciaNat x (S y) = a_natural (a_entero(potenciaNat x y) * (a_entero x))

facNat :: Natural -> Natural
facNat Cero = Cero
facNat (S Cero) = (S Cero)
facNat (S x) = (a_natural((a_entero(S x)) * (a_entero (facNat x))))

