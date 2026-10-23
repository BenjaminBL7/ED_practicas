import Data.Bits

data Tiempo = Dias Float | Meses Float deriving (Eq, Show)

-- convierteADias :: Tiempo -> Tiempo
-- convierteADias (Meses m) = (Dias (m * 30))

cetes :: Float -> Tiempo -> Float
cetes x (Dias y) = if y >= 364
        then x * (1 + ((7.44 / 100) * (y / 360)))
        else if y >= 182 
                then x * (1 + ((6.91 / 100) * (y / 360)))
                else if y >= 28
                        then x * (1 + ((6.01 / 100) * (y / 360)))
                        else 0
-- Tal vez sea posible modificar esto de modo que dé un mensaje cuando se ingresa un tiempo menor a 28 días.
cetes x (Meses y) =
  let z = (y * 28) in
  if z >= 364
        then x * (1 + ((7.44 /100) * (z / 360)))
        else if z >= 182 
                then x * (1 + ((6.91 / 100) * (z / 360)))
                else if z >= 28
                        then x * (1 + ((6.01 / 100) * (z / 360)))
                        else 0

