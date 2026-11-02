data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

{- Función mayorIgual
Descripción: Determina si la primera Matrioska es mayor o igual que la segunda.
Uso:
        1: mayorIgual (Cont( Cont ( Cont Mati ) )) ( Cont ( Cont ( Cont Mati ) ) ) = True
        2: mayorIgual ( Cont ( Cont Mati ) ) (Cont( Cont ( Cont Mati ) )) = False
        3: mayorIgual ( Cont ( Cont ( Cont Mati ) ) ) (Cont( Cont ( Cont Mati ) )) = True
-}

mayorIgual :: Matrioska -> Matrioska -> Bool 
mayorIgual Mati Mati = True
mayorIgual (Cont x) Mati = True
mayorIgual Mati (Cont y) = False
  -- |x == Mati && y == Mati = True
  -- |otherwise = False
mayorIgual (Cont x) (Cont y) = mayorIgual x y

{- Función aplana
Descripción: Toma una Matrioska y, similar al conjunto potencia, te da una lista de todas las Matrioskas que la componen.
Uso: aplana (Cont (Cont (Cont (Cont Mati)))) = [Cont (Cont (Cont (Cont Mati))),Cont (Cont (Cont Mati)),Cont (Cont Mati),Cont Mati,Mati]
-}

aplana :: Matrioska -> [Matrioska]
aplana Mati = [Mati]
aplana (Cont x) = [Cont x] ++ (aplana x)
