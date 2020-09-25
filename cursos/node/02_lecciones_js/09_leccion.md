# Operador **typeof**

## Definición

**typeof** es un operador que devuelve un string con el operando (string, variable, palabra clave u objeto). Conocer de qué tipo de dato se trata, tiene mucha utilidad en el caso de que necesitemos evaluarlo antes de procesarlo.

## Sintaxis

Cualquiera de las dos formas es válida. Se aconseja la primera de las dos formas por tener mejor legibilidad.

```typeof (operando)```

```typeof operando```

## Tipos de operandos

- ### **function**

```js
var func = function() { };

console.log(typeof (func)); // 'function'
```

- ### **string**

```js
    var cadena = 'Hola mundo';

    console.log(typeof (cadena)); // 'string'
```

- ### **number**

```js
    var numero = 123;

    console.log(typeof (numero)); // 'number'
```

- ### **object**

```js
    var hoy = new Date();

    console.log(typeof (hoy)); // 'object'

    var obj = { 1:'a', 2:'b' };

    console.log(typeof (obj)); // 'object'

    var array = [1, 2, 3];

    console.log(typeof (array)); // 'object'
```

- ### **undefined**

```js
    var noDefinido;

    console.log(typeof (noDefinido)); // 'undefined'
```

- ### **booleano**

```js
    var booleano = true;

    console.log(typeof (booleano)); // 'boolean'
```

## Ejemplo de uso

```js
    var numero = 'Hola mundo';

    function evaluacion () {
        if (typeof (numero) === 'number') {
            return numero * 2;
        } else {
            return 'error';
        };
    };

    console.log(evaluacion()); // 'error'
```
