data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

mayorIgual :: Matrioska -> Matrioska -> Bool 
mayorIgual x y
  |x == Mati && y == Mati = True
  |otherwise = False
mayorIgual (Cont x) (Cont y) = mayorIgual x y

aplana :: Matrioska -> [Matrioska]
aplana Mati = [Mati]
aplana (Cont x) = [Cont x] ++ (aplana x)
