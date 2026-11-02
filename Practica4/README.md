# Información de la práctica
- **Objetivo de la práctica**: Adquirir aún mayor familiaridad con funciones recursivas y definiciones de tipos de datos.
- **Tiempo requerido**: 10 horas
- **Comentarios extra**: 

# Chivita recursiva
La canción se compone, básicamente, de 5 versos, donde tres de ellos son constantes mientras que los otros dos varían ligeramente conforme la canción avanza[^1]:
1. "Sal de ahí, Chivita, Chivita; sal de ahí, de ese lugar"
2. "La Chiva no quiere salir de ahí"
3. "Vamos a llamar al (...) para que saque a la/el (...)"
4. "El (...) no quiere sacar a la/el (...)"
5. "Ya salió Chivita Chivita; ya salió de ese lugar"

Con el objetivo de distinguirlos, llamaré a los versos 1, 2 y 3 $A$, $B$ y $C$, mientras que a los predicados 3 y 4 los llamaré $\alpha$ y $\beta$. Utilizo letras griegas para estos últimos dos predicados pues deseo resaltar que en éstos hay dos piezas de información que varían. En el caso de $\alpha$, lo que varía son los objetos directos, tanto de la oración principal como de la subordinada; mientras que, en el caso de $\beta$, lo que varía es el sujeto de la oración y el objeto directo. 

$\alpha$ y $\beta$, entonces, se podrían entender como dos funciones que reciben dos argumentos y devuelven una oración/verso como "vamos a llamar al *Burro* para que saque a la *Chiva*", donde 'Burro' es el primer argumento y 'Chiva' el segundo. Para representar la función completa, entonces, utilizaré $\alpha$ $x,y$, donde $x$ y $y$ son variables que se saturan por nombres de personajes en la canción; y lo mismo con $\beta$. 

Los personajes que aparecen en la canción los denotaré por medio de una letra:
- Chiva: $c$
- Burro: $b$
- Ratón: $r$
- Gato: $g$
- Perro: $e$
- Pato: $a$
- Plim Plim: $p$

De esta forma, podemos notar que las primeras iteraciones de la canción ocurren del siguiente modo:
1. $A$
3. $\alpha$ $b, c$
4. $\beta$ $b, c$
5. $B$
7. $A$
8. $\alpha$  $r, b$
9. $\beta$  $r, b$
10. $\beta$ $b, c$
11. $B$
12. $A$

Podemos notar que cuando se introduce un personaje nuevo, éste aparece primero como el primer argumento de $\alpha$ mientras que el personaje que lo precede aparece como el segundo. Luego $\beta$ toma, igual que $\alpha$, como primer argumento al último personaje en aparecer y como segundo argumento al penúltimo personaje en aparecer, y, de haber más, se vuelve a repetir con el penúltimo personaje como primer argumento y con el antepenúltimo como el segundo. Esto se repite hasta que $\beta$ toma como segundo argumento al primer personaje en aparecer, y entonces se da el verso $B$ y luego el $A$. Finalmente, una vez que se da $A$, se introduce un personaje nuevo y la canción continúa.

El carácter recursivo de la canción es evidente y continuaría hasta en infinito si no fuera porque al final llega Plim Plim. Cuando llega Plim Plim, igual que todo otro personaje nuevo, éste se introduce como el primer argumento de $\alpha$, y esto provoca que se dé $\neg\beta$ $p, x$[^2], para algún $x$ tal que $p>x$, lo que provoca, a su vez, que ocurra $\neg\beta$ $x,y$ para algún $y$ tal que $x>y$, y esto se sigue hasta que se llega al elemento mínimo del conjunto de los personajes introducidos (es decir, el primer personaje en presentarse, el cual, evidentemente, es la Chivita), y se concluye la canción con "ya salió Chivita Chivita; ya salió de ese lugar". Así, es evidente que Plim Plim es el caso base y que la recursividad se da en el verso $\alpha$, el cual te permite añadir un personaje nuevo.

# Análisis de código

Con el fin de evitar confusiones, llamaré "enteros.hs" al archivo que se encuentra aneñado en el classroom y "enteroGit" al archivo cuyo link se encuentra en el documento de la práctica. 

Creo que son tres las principales diferencias que podemos encontrar en ambos archivos, las cuales mencionaré de acuerdo con su importancia en orden ascendente.

En primer lugar, la diferencia más evidente pero, a mi juicio, menos importante es el estilo. Podemos notar inmediatamente que enteros.hs no tiene alguna clase de comentarios ni sangría mientras que enteroGit, aunque en ningún momento hay necesidad del uso de sangría, por lo menos tiene comentarios que explican las funciones y señalan cuáles son los casos base y cuáles los recursivos. Esto hace que enteroGit sea mucho más fácil de leer que enteros.hs.

En segundo lugar, si prestamos atención a la cantidad de casos base que cada función utiliza, notaremos que enteros.hs utiliza más casos base para cada función que enteroGit. Mientras que tanto la suma como la resta de enteros.hs utilizan cuatro casos base, enteroGit utiliza solo dos y tres casos para las mismas funciones, respectivamente. enteroGit logra reducir los casos base gracias al *pattern matching*. Por ejemplo, en el caso de la suma, mientras que enteros.hs utiliza dos casos base para cuando el primer elemento de la suma es el cero (pues uno es para cuando el segundo elemento es positivo y el otro para cuando éste mismo es negativo), enteroGit utiliza solo uno, donde el primer elemento es Zero y el segundo es cualquier otro entero. 

Por último lugar, la diferencia crucial es la falta de comparación de los números en enteroGit. Aunque hasta ahora ha pareceido que enterosGit tiene un mejor formato y evita algunas redundancias, la falta de comparación de elementos provoca que la asignación de signos sea incorrecta en algunos casos. Por ejemplo, al correr `suma_ent (Neg(Succ(Succ Zero))) (Succ Cero)` (es decir, (-2)+(+1)), obtenemos `Succ Cero` en lugar de `Neg (Succ Cero)`. La definición de `suma_ent` acierta al considerar que aquella suma es, a efectos prácticos, una resta. No obstante, al restar hay que considerar qué número es el superior, pues eso determinará qué signo se le adscribe al resultado de aqueĺla resta. 

A pesar del pobre estilo de enteros.hs, sus funciones suma y resta no sufren del mismo problema. Esto responde la pregunta acerca de la razón por la que enteros.hs implementa la función `mayorEnt`, a saber, para determinar qué signo utilizar en el resultado de una resta entre números donde al menos uno de ellos contiene un signo negativo. 

# Notas al pie
[^1] Ignorando los casos en los que se está conjugando en pasado, claro.

[^2] Aquí estoy entendiendo $\neg\beta$ $x,y$ como "$x$ sí quiere sacar al/a el $y$".
