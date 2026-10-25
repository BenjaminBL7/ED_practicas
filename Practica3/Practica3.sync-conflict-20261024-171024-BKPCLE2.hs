
data Tiempo = Dias Int | Meses Int deriving (Eq, Show)

convierteADia :: Tiempo -> Tiempo
convierteADia (Meses m) = Dias (m * 30)

cetes :: Float -> Tiempo -> Float
cetes x (Dias y) = x * (1 + (1))
