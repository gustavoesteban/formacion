# El uso de ```'use strict'```

El ```'uso estricto'``` es una directiva de Javascript que permite al programador/desarrollador escribir código de forma más segura. Esta seguridad la proporciona el uso de dicha directiva, que fuerza a que se cumplan un juego de normas de sintaxis. Por defecto esta opción está desactivada y deberá ser activada de manera explícita.

> Scope

En la primera línea.

```js
    'use strict';
    { nuestro código } // Se aplicará la directiva a todo el código del archivo.
```

En una función.

```js
    { nuestro código } // Modo no estricto.
    function miFuncion() {
        'use strict';
        { nuestro código } // Modo estricto.
    };
    { nuestro código } // Modo no estricto.
```

> En qué casos es útil?

Nos será últil si queremos que un proyecto, ya sea grande o pequeño, esté protegido contra errores producidos por los vicios del programador veterano o por los errores de sintaxis típicos de los novatos. El uso de la directiva provocará que el intérprete lanzé menajes de error a pesar de que el código, en otro contexto, funciones con normalidad y forzará a que se sigan un juego de reglas determinado.

Es ideal para nuevos proyectos. En el caso de proyectos que ya han sido iniciados y tienen muchas lineas de código, introducirlo será 'delicado' debido a que la depuración del código masivamente es muy costosa. También puede ser problemático si tenemos una cadena de archivos Javascript muy larga ya que esto puede hacer que todos los archivos se ejecuten en modo estricto a la hora de compilarse.

> Cúal es el juego de reglas de la directiva?

- Las variables solo se pueden definir cuando van precedidas de "var".

```js
    'use strict';
    numero = 3.14; // Esto causará un error ya que no se ha declarado la variable "numero".
```
    
```js
    'use strict';
    var = numero = 3.14; // No causará error.
```

- Intentar escribir en propiedades de solo lectura genera un error ruidoso.

```js
    'use strict';
    function() {
        window.undefined = 10; // Esto causará un error: No se puede asignar a la propiedad de solo lectura 'undefined'.
    };
```

```js
    window.undefined = 10; // No causará error.
```

- No se permite definir parametros duplicados en una función.

```js
    function miFuncion(parametro, parametro) {
        'use strict';
    }; // Error de sintaxis: No se permite definir parámetros duplicados en una función.
```

```js
    function miFuncion(parametro, parametro) {
        return parametro;
    };
    console.log(miFuncion(10 ,20)); // No causará error y devolverá 20.
```

- No se puede hacer uso de propiedades duplicadas en un literal de objejo.

```js
    function() {
        'use strict';
        var x = {
            numero: 10,
            numero: 20
    };  // Error de sintaxis: no está permitido duplicar datos en un literal de objeto.
```

```js
    var numeros = {
        numero: 10,
        numero: 20
    }; // No causará error.
```

- No se puede hacer uso de la instrución ```with```.

```js
    function() {
    "use strict";
    with(Object) {} // Error de sintaxis: el modo estricto no permite el uso de la instrución 'with'.
    };
```

- Lo protege del uso de palabras reservadas o futuras palabras reservadas como nombres de variables.

```js
    function () {
    'use strict';
    var implements, let, private, public, yield, interface, package, protected, static;
    }; // Error de sintaxis: no se permite el uso de palabras reservadas para definir variables en modo estricto.
```

- No provoca cambios en el objeto ```arguments```.

```js
    function miFuncion(parametro) {
        'use strict';
        arguments[0] = 10;
        return parametro * parametro;
    };
    console.log(miFuncion(20)); // No revela error pero retorna 400 y no 100 como cabría esperar.
```

```js
    function miFuncion(parametro) {
        arguments[0] = 10;
        return parametro * parametro;
    };
    console.log(miFuncion(20)); // Retorna 100 porque sí redefine el valor de parámetro.
```

- No se permite instanciar variables y funciones fuera de su proprio contexto mediante le uso de la función ```eval```.

```js
    function() {
        'use strict';
        eval("var miVariable = 10");
        return miVariable; // Error: 'miVariable' no est´definida.
    };
```

```js
    function() {
    eval("var miVariable = 10");
    return miVariable;
    }; // Retorna 10
```

- Revela un error si el argumento no es una propriedad modificable de un objeto con el uso de ```delete```.

```js
    function miFuncion(parametro) {
        'use strict';
        var miVariable = 10;
        delete parametro; // Error de sintaxis: No se permite 'delete' de un identificador no calificado en modo estricto.
        delete miVariable; // Error de sintaxis: No se permite 'delete' de un identificador no calificado en modo estricto.
        delete window.undefined; // Error de tipado: No se permite borrar la propiedad. 
    }; // 'undefined' de [object Object].
```

```js
    function miFuncion(parametro) {
        var miVariable = 10;
        delete parametro; // Retorna 'false'.
        delete miVariable; // Retorna 'false'.
    delete window.undefined; // Retorna 'false'.
    };
```

- No está permitido el uso de literales en base octal.

```js
    function() {
        'use strict';
        return 010001 + "\75" + 4097; // Error de sintaxis: No se permite literales en base octacl en modo estricto.
    };
```

```js
    function() {
    return 010001 + "\75" + 4097;
    }; // Retorna "reto4097=4097"
```