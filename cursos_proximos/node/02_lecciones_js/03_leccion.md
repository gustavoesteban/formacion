# Variables

## Definición

Una variable es un contenedor donde se puede almacenar un valor (array, texto, número, función, booleano...), que se podrá usar con posterioridad, así como operaciones matemáticas, modificaciones con métodos, acceder a propiedades, etc...

```js
    var a = ""; // Cadena de texto.

    var aa = a; // Otra variable.

    var b = 0; // Número.

    var bb = 3 * 3; // Operación matemática.

    var c = [2, 1, 0]; // Array.

    var cc = [].sort(); // Modificación con método.

    var d = {nombre: 'Gustavo'}; // Objeto.

    var dd = d.nombre; // Acceso propiedad de objeto.

    var e = true; // Booleano.

    var f = g => g * b; // Función.

    var h = null; // Nulo.

    var i = undefined; // Indefinido.
```
y mucho más...

## Sintaxis

- Variable ```tipo identificador = valor```

```js
    var codigo = 078;

    var serie = 'N-G';

    var piezas = ['V1', 'V2', 'V3'];
```

- Se puede usar la siguiente sintaxis para encadenar varias variables ```tipo identificador1 [= valor1] [, identificadorN [=valorN]]]```

```js
    var codigo = 078, serie = 'N-G', piezas = ['V1', 'V2', 'V3'];
```

- Una variable puede estar solamente inicializada pero sin ningún valor asignado 👀.

```js
    var precio;

    console.log(precio) //undefined
```

## Tipos

De forma general se hace uso de los diferentes tipos de variables según la necesidad. Esto no implica que en algún caso particular ```const``` sea mutable o que ```let``` se pueda usar de forma global, que son usos contrarios a lo ordinario, ya que las diferencias son pocas y se solapan sus propiedades, es posible que se intercambien sin afectar al conjunto del código.

> Haz uso de ellas de manera coherente 👀

- ```var``` - Define una variable. Lo hace en el ámbito local actual y se hereda a **scopes** descendientes.

- ```let``` - Define una variable. Lo hace en el ámbito local actual y no se hereda a **scopes** descendientes. Es (a priori) inmutable.

- ```const```- Define una variable. Lo hace en el ámbito global. Es (a priori) inmutable.

## Declaración

Para declarar una variable basta con escribir su identificador e igualarla a un valor. Técnicamente no hemos declaro la variable pero el intérprete la *auto declarará* como una variable global.

Si escribimos esto...

```js
    nombre = 'Jacobo';
```

El intérprete genera esto otro...

```js
    var nombre = 'Jacobo':
```

## Mutabilidad

Dependiendo del tipo de variable, el valor de esta puede ser cambiado a medida que se ejecuta el código o permanecer inmutable.
Por ejemplo la variable ```var pais``` o ```var numero``` no permanece inmutable y se reasignará su valor sin que entre en conflicto.

```js
    var pais = 'Francia';

    console.log(pais); // "Francia"

    var pais = 'Japón';

    console.log(pais); // "Japón"

    var numero = 10;

    console.log(numero); // 10

    var numero = numero + numero;

    console.log(numero); // 20
```

Sin embargo, si intentamos reasignar una variable como ```let pais``` o ```const numero``` no se reasignará su valor y nos lanzará un error por que son variables inmutables.

```js
    let pais = 'Francia';

    console.log(pais); // "Francia"

    let pais = 'Japón';

    console.log(pais); // Identifier 'pais' has already been declared | El identificador 'pais' ya ha sido declarado

    const numero = 10;

    console.log(numero); // 10

    const numero = numero + numero;

    console.log(numero); // Identifier 'pais' has already been declared | El identificador 'pais' ya ha sido declarado
```

## Scope

Decimos **scope** o **ámbito** o **alcance** o **visibilidad** a la parte del código que reconoce y puede ejecutar una variable.

Por ejemplo la variable```var = i``` como iterador dentro de un ciclo for sólo puede ser *vista* dentro de dicho **ciclo for**. Es local. Sin embargo, desde fuera no se puede *ver* y nuestro intérprete nos devuelve un error ```i is not defined``` o ```i no está definida```.

```js
    var texto = 'JS';

    for (var i = 0; i < texto.i; i++) {
        console.log(texto[i]); // 'J', 'S'
    };

    console.log(i); // i is not defined
```

Observemos ahora, cómo ```var texto = 'JS'``` es vista desde dentro del **ciclo for** y desde fuera a la vez, podemos decir que su ámbito es global.

```js
    var texto = 'JS';

    for (var i = 0; i < texto.i; i++) {
        console.log(texto[i]); // 'J' // 'S'
    };

    console.log(texto); // 'JS'
```

## Hoisting

Se refiere a un proceso (**levantamiento** o **izamiento**) interno del compilador y que hace alusión al contexto de ejecución en **JavaScript** y a su memoria, en el que la variable ```var``` es virtualmente movida al principio del código permitiendo ser referidas incluso antes de ser declarada.

```js
    console.log(edad); // undefined

    var edad = 10;
```

Podemos observar como la variable es requerida para ser *pintada* por consola antes de ser declara y que a pesar de no devolvernos su valor, no nos refiere un error. Nos devuelve ```undefined```.

## Tipado débil

**JavaScript** es un lenguaje "débilmente tipado".

Pero esto, qué significa realmente?
Bien, simplemente que no es necesario especificar el tipo de dato que queremos almacenar en la variable, al menos de forma explícita.

- Ya sea para números integrales.

```js
    const a = 500;
```

- O para números decimales.

```js
    const b = 50.50;
```

- Si usamos comillas, ya sean ```""``` dobles o ```''``` sencillas o bien backticks``` `` ```, la variable entenderá que el contenido es una variable.

```js
    const c = "Hola";
    const d = 'Hola';
    const e = `Hola`;
```

- Si rodeamos el contenido de nuestra variable por ```[]``` y separamos los valores por ```,``` comas, ya le estamos dando a entender de forma implícita que es un array.

```js
    const f = [1, 2, 3]:
```

- Por el contrario si usamos ```{}``` llaves, le decimos que es un objeto.

```js
    const g= [a: 1, b: 2, c: 3]:
```

- Con la palabra reservada ```function``` lo mismo.

```js
    const h = function i(j) { return j };
```
