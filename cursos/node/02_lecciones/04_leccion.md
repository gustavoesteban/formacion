# 

# Definición
Un string, tambien llamado cadena de texto, es un valor escalar que representa una serie de caracteres.

# Sintaxis
- Este valor puede ser representado entre **comillas dobles**

```js
    "ejemplo"
```

- Entre **comillas simples**, obteniendo el mismo resultado.

```js
    'ejemplo'
```

- El empleo de **backticks** permite, entre otras cosas, usar variables, introducir saltos de línea, tabulaciones y lógica.

```js
    var nombre = "Ramón";

    var frase = `Mi nombre es ${nombre}`;

    console.log(frase); // "Mi nombre es Ramón"
```

# Ejemplos de uso de cadenas de texto

```js
    var nombre = "Leticia"; // Comillas dobles.
```

```js
    var pais = 'Japón'; // Comillas simples.
```

```js
    var edad = "33";
    /*
    Al ir encerrado entre comillas (dobles o simples),
    JavaScript lo interpreta como caracteres y no como números.
    */
```

```js
    var diasAnho = "365";
```

```js
    var fraseUno = `${nombre} vive en ${pais} y tiene ${edad} años`;
    // Los backticks nos permiten inyectar el contenido de variables.

    console.log(fraseUno); // Leticia vive en Japón y tiene 33 años.
```

```js
    var frasDos = `${nombre} vive en ${pais} y tiene ${edad * diasAnho} años`;
    // Los backticks nos permiten hacer operaciones con las variables.

    console.log(fraseDos); // Leticia vive en Japón y tiene 12045 días.
```

```js
    var farseTres = `${nombre} es mayor de edad?: ${edad >= 18}.`;
    // Los backticks nos permiten usar lógica con las variables.

    console.log(fraseTres); // Leticia es mayor de edad?: true.
```

# A tener en cuenta
Los números contenidos en un string ```'1234'``` serán tomados como texto y no como números 👀.

# Propiedades
Sólo se mostrarán algunas de las propiedades. El resto se pueden consultar en el diccionario.

- ## **length**

Sintaxis: cadenaDeTexto.**lenght**

Devuelve el número de caracteres que componen una cadena, es decir, el **largo** de la cadena de texto. Puede que un caracter tenga por valor 2 en vez de 1 en casos especiales. En caso de un string vacio, su largo sera de 0.

```js
    var lenguaje = "Javascript";

    var largo = lenguaje.lenght;

    console.log(largo); // 9

    console.log(´La palabra Javascript tiene ${largo} caracteres.´); // La palabra Javascript tiene 9 caracteres
```
- ## **toUpperCase**

Sintaxis: cadenaDeTexto.**toUpperCase()**

Devuelve la cadena de texto pasada a **mayúsculas**. Esta propiedad no cambia el valor de la cadena de texto, es decir, que devuelve el contenido en mayúsculas pero no lo convierte a mayúsculas.
```js
    var lenguaje = "JavaScript";

    var mayusculas = lenguaje.toUpperCase();

    console.log(mayusculas); // "JAVASCRIPT"
```
- ## **toLowerCase**

Sintaxis: cadenaDeTexto.**toLowerCase()**

Devuelve la cadena de texto pasada a *minúsculas**. Esta propiedad no cambia el valor de la cadena de texto, es decir, que devuelve el contenido en minúsculas pero no lo convierte a minúsculas.
```js
    var lenguaje = "JavaScript";

    var minusculas = lenguaje.toLowerCase();

    console.log(minusculas); // "javascript"
```
- ## **charAt**

Sintaxis: cadenaDeTexto.**charAt(índice)**

Devuelve el caracter de una cadena que viene determinado por el índice que se le pasa.
```js
    var lenguaje = "Java Script";

    console.log(lenguaje.charAt(0)); // "J"

    console.log(lenguaje.charAt(1)); // "a"

    console.log(lenguaje.charAt(2)); // "v"

    console.log(lenguaje.charAt(3)); // "a"

    console.log(lenguaje.charAt(4)); // " "

    console.log(lenguaje.charAt(5)); // "S"

    console.log(lenguaje.charAt(6)); // "c"

    console.log(lenguaje.charAt(7)); // "r"

    console.log(lenguaje.charAt(8)); // "i"

    console.log(lenguaje.charAt(9)); // "p"

    console.log(lenguaje.charAt(10)); // "t"

    console.log(lenguaje.charAt(-1)); // " "

    console.log(lenguaje.charAt(123)); // " "
```