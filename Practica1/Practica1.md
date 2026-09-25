# Preguntas
1. ¿Cuáles son las principales diferencias entre Haskell y Rust?
    - Rust es multiparadigma (Gomez y Boucher, 2018) mientras que Haskell es funcional (Bird, 2015).
    - Rust es utilizado para programación de sistemas (Gomez y Boucher, 2018) mientras que Haskell no ha sido ampliamente adoptado por la industria de software.
    - Haskell tiene *evaluación floja* (Bird, 2015) mientras que Rust, según entiendo, utiliza *evaluación estricta*, aunque hay ocasiones en exepciones en las que Rust utiliza evaluación floja (Klabnik et al. 2026).
    - Haskell tiene *recolector de basura* (Bird, 2015) mientras que Rust utiliza un sistema de *ownership* (el cual administra heap data) y *borrow checker* (Klabnik et all. 2026). 
2. ¿Por qué Haskell no ha alcanzado una adopción significativa en la industria del software?:
De acuerdo con Bird (2015), aunque Haskell permite la creación de programas eficientes gracias a su programación puramente funcional, sufre la desventaja de que la creación de dichos programas requiera invertir más tiempo pensando soluciones (). Supongo que esta es la razón por la que Haskell se utiliza principalmente en educación e investigación.
Haskell es utilizado en investigación y enseñanza. 
3. Si tuvieras que explicarle a una persona que no es de CC la función que cumple `git` frente a la de `GitHub`, ¿cómo se lo explicarías?:
`git` es un programa que se dedica a registrar los cambios que se le realizan a un programa mientras que `GitHub` hace le mismo pero guardando dichos cambios en la nube. Dado que se guarda en la nube, es fácil acceder a distintas versiones de los programas desde distintas computadoras, lo cual, además de permitirle a una sola persona trabajar sobre el mismo proyecto desde distintos equipos de cómputo, también permite la colaboración.

Si fuera a explicarle a alguien fuera de CC qué la función que cumple `git` fente a `GitHub`, apelaría a una plataforma que permite escribir documentos de forma colaborativa, tal como Google docs. Diría algo como lo siguiente: Google docs te permite tener un archivo en la nube y editarlo a la vez que otros lo editan, ¿no? Si quisieras trabajar sobre código de forma colaborativa, este modelo sería sumamente problemático, pues, dado que todo mundo está editando a la vez, el programa se la pasaría lanzando errores cada vez que alguien desee correrlo. Por este motivo, en lugar de que todos editen el archivo en la nube a la vez, lo que se hace es que se descarga en tu propia computadora y tú lo editas desde ahí para luego subirlo a la nube de nuevo. `GitHub`, como Google docs, es la plataforma en la nube que mantiene el control de las versiones del software mientras que `git` es el programa en tu propia computadora que te permite bajar el código de la nube para luego poder editarlo y subirlo de nuevo.


# Referencias
- Bird R. (2015). *Thinking fuctionally with Haskell*. Cambridge university press.
- Gomez G., Boucher A., (2018). *Rust programming by example*. Packt publishing. 
- Klabnik, S., Nichols, C., y Krycho, C. (2026). *The Rust programming language* (tercera ed.). No starch press.
