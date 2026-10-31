import Auxiliar

data Entero = Zero | Succ Ent | Neg Ent deriving (Eq, Show)


multEnt :: Entero -> Entero -> Entero
multEnt Zero x = Zero
multEnt x Zero = Zero
multEnt x y = 
