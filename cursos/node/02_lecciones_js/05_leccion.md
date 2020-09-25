# Arrays

## Definición

Un array es un objeto con una particular relación entre la clave y la propiedad length. Dicho de otro modo, es una colección de datos cuyo dato va ligado a un índice.

```js
    var miArray = [1, 2, 3, N];

    console.log(miArray[0]); // 1 | El dato que hay en la posición 0 es 1
```

En los arrays, junto a los objetos, se pueden almacenar, a diferencia de una variable convencional, múltiples datos en una sola variable.

El índice numérico determina la posición en la que se encuentra un dato siendo ```0``` la posición del primer dato y ```array.length -1``` la posición del último dato.

## Sintaxis

Se escribe entre **corchetes** y los datos se separan por **comas**. El último dato no lleva **coma**.

```js
    var miArray = [dato1, dato2, dato3, datoN];
```

## Qué puede contener?

- Strings

```js
    var miArray = ['a', 'b', 'c', 'd'];
```

- Números

```js
    var miArray = [1, 2, 3, 4];
```

- Objetos

```js
    var miArray = [
        {nombre: "Alberto", edad: 33},
        {nombre: "Samanta", edad: 21},
        {nombre: "Sonia", edad: 46}
    ];
```

- Otro array

```js
    var miArray = [['a', 'b'], [1, 2]];
```

- Funciones

```js
    var miArray = [
        function suma (a, b) {return a + b},
        function resta (a, b) {return a - b},
        function multi (a, b) {return a * b}
    ],
```

- . . . o una combinación de ellos 👀

```js
    var miArray = [
        function suma (a, b) {return a + b},
        {nombre: "Alberto", edad: 33},
        ['a', 'b'],
        [1, 2],
        22,
        56,
        "Hola",
        "Adios"
    ];
```

## Acceso a los datos

*Para el ejemplo anterior . . .*

- Mediante el índice

```js
    console.log(miArray[1]); // {nombre: "Alberto", edad: 33}
```

```js
    console.log(miArray[2]); // ['a', 'b']
```

```js
    console.log(miArray[2][0]); // 'a'
```

- Mediante un bucle que nos muestra todos los datos

```js
    miArray.forEach(function (dato, indice, array) {
        console.log(indice, dato);
    });

        1 { nombre: 'Alberto', edad: 33 }
        2 [ 'a', 'b' ]
        3 [ 1, 2 ]
        4 22
        5 56
        6 'Hola'
        7 'Adios'
```

## Manipular array

Sólo se mostrarán algunos de los métodos. El resto se pueden consultar en el diccionario.

Estos métodos implican destrucción, nos devuelven el array modificado y no una copia del mismo modificada. Observa como en el siguiente ejemplo el contenido de la variable ```miArray``` ha sido modificado permanentemente 👀.

```js
    var miArray = ['a', 'b', 'c'];

    console.log(miArray); // ['a', 'b', 'c']

    miArray.push('d');

    console.log(miArray); // ['a', 'b', 'c', 'd']
```

- ### **push**

Sintaxis: nombreArray.push(nuevoDato).

Mediante **push**, se añadirá el dato al final de la lista.

```js
    var miArray = ['a', 'b', 'c'];

    miArray.push('d');

    console.log(miArray); // ['a', 'b', 'c', 'd']
```

- ### **pop**

Sintaxis: nombreArray.pop().

Mediante **pop**, se eliminará el último dato de la lista.

```js
    var miArray = ['a', 'b', 'c', 'd'];

    miArray.pop();

    console.log(miArray); // ['a', 'b', 'c']
```

- ### **unshift**

Sintaxis: nombreArray.unshift(nuevoDato).

Mediante **unshift**, se añadirá el dato al principio de la lista.

```js
    var miArray = ['a', 'b', 'c'];

    miArray.unshift('z');

    console.log(miArray); // ['z', 'a', 'b', 'c']
```

- ### **shift**

Sintaxis: nombreArray.shift().

Mediante **shift**, se eliminará el primer dato de la lista.

```js
    var miArray = ['a', 'b', 'c'];

    miArray.shift();

    console.log(miArray); // ['b', 'c']
```

- ### **reverse**

Sintaxis: nombreArray.reverse().

**reverse** invertirá el orden de los datos de un array.

```js
    var miArray = ['a', 'b', 'c'];

    miArray.reverse();

    console.log(miArray); // ['c', 'b', 'a']
```

- ### **sort**

Sintaxis: nombreArray.sort().

**sort** ordenará los elementos de un array. Si no se le pasa un función como parámetro que defina el método de ordenamiento, lo ordenará según su posición del dato Unicode. No es un método necesariamente estable.

```js
    var miArray = ['a', 'b', 32 , 'c', 99, 21];

    miArray.sort();

    console.log(miArray); // [ 21, 32, 99, 'a', 'b', 'c' ]
```

- ### **splice**

Sintaxis: nombreArray.splice(índice).

  - Si al método **splice** sólo se le pasa un parámetro, eliminará todos los datos desde el índice indicado hasta el final.

  - En el caso de indicar dos parámetros, se eliminarán los datos comprendidos en ese rango (ambos incluidos).

```js
    var miArray = var miArray = ['a', 'b', 'c', 1, 2, 3];

    miArray.splice(2);

    console.log(miArray); // ['a', 'b'}
```

```js
    var miArray = ['a', 'b', 'c', 1, 2, 3];

    miArray.splice(2, 3);

    console.log(miArray); // ['a', 'b', 3}
```

## Herencia

Los arrays son *objetos* y también heredan cuando son copiados. Esto lo veremos más profundamente en la **Lección 8**.

```js
    var a = [1, 2, 3];

    var b = a;

    a.push(4);

    console.log(a); // [1, 2, 3, 4]

    console.log(b); // [1, 2, 3, 4]
```

## Buscar

- **indexOf**

Sintaxis: nombreArray.indexOf(dato).

**indexOf** recorrerá el array en busca del dato, si lo encuentra devolverá el índice que ocupa.

Si existe más de un dato igual, devolverá el índice del primer hallazgo.

Si no existe devolverá -1.

```js
    var miArray = ['a', 'b', 'c', 'b'];

    console.log(miArray.indexOf('a')); // 0

    console.log(miArray.indexOf('b')); // 1

    console.log(miArray.indexOf('z')); // -1
```
