# Booleanos

## Definición

Son un tipo de valores primitivos que comportan un conjunto binario y contrapuesto. Suponen en la ciencia de la informática ON|OFF ó 1|0, es decir, verdadero o falso.

## Sintaxis

Verdadero
- ```true```

Falso
- ```false```

## Uso

En programación, su uso, aunque no exclusivamente, se ciñe a la resolución de comparativas y evaluación del contenido de una variable.

## Cuándo es ```true```?

```js
    var a = Boolean(10.10); // Número decimal.

    var b = Boolean(10); // Número integral != 0

    var c = Boolean(10 * 10); // Operación numérica cuyo resultado != 0

    var d = Boolean(true); // Booleano true.

    var e = Boolean("false"); // String.

    console.log(a, b, c, d, e, f); // true true true true true true.
```

## Cuándo es ```false```?

```js
    var f = Boolean(0); // Número == 0

    var g = Boolean(10 * 0); // Operación numérica cuyo resultado == 0

    var h = Boolean(""); // String vacío

    var i = Boolean(null); // Nulo

    var j = Boolean(undefined); // No definido

    var k = Boolean(NaN); // No es un número

    var l = Boolean(false); // Booleano false

    console.log(f, g, h, i, j, k, l); // false false false false false false false.
```

## En comparaciones

```js
    var m = 1 < 10; // Operador menor.

    var n = 1 > 10; // Operador mayor.

    var p = 1 == 10; // Operador igual

    console.log(m, n, p); // true false true.
```
