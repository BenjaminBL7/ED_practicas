# Información de la práctica
- **Objetivo**: aprender a modularizar el código y a utilizar listas por comprensión.
- **Tiempo**: 9 horas
- **Comentarios**: Sufrí un poco al tener que instalar los paquetes extras de GHCi para poder importar `Data.Bits`. Cuando los instalé resultó que había salido una nueva versión de GHCi y los paquetes extra no eran compatibles con la versión que tenía, así que tuve que actualizar GHCi a una versión más reciente. Por otro lado, descubrí que puedo utilizar `all` al definir listas por comprensión. Aunque aún no entiendo del todo su sintaxis, la utilicé para la función `primos` y, de alguna forma, funciona.
- **Ejercicio favorito**: La función `coprimos` requirió algo de ingenio y de varias funciones auxiliares. Creo que este ejercicio resultó ser mi favorito.

# Diferencia entre Num e Int
- Mientras que Int es un tipo de dato, Num es una clase de tipos de datos a la cual pertenece Int. En otras palabras, Int y Float son instancias de Num así como 3 y 5 son instancias de Int. 
- Dado que (al menos hasta donde yo entiendo), Num abarca toda clase de números y esto incluye a los complejos (los cuales son un conjunto no ordenado), Num no pertenece a la clase Ord aunque sí a la clase Eq; a diferencia de Int, que sí pertenece a ambas.
- Las operación *división* y *sobrante* no están definidas para Num, a diferencia de Int. Esto tiene que ver, de nuevo, con los números complejos, aunque no entiendo del todo cómo.

![Int vs Num](Int_vs_Num)

# Referencias
- Fasel J., Hudak P. y Peterson J., (2000) *10. Numbers*. A gentle introduction to Haskell. Version 98. https://www.haskell.org/tutorial/numbers.html
