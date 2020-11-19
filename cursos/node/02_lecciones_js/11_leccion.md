# Operadores relacionales

## Definición

Estos operadores, también llamados relacionales, comparan los operandos (a su izquierda y derecha) y devuelve un valor booleano basándose en si la comparación es verdadera o no (falta).

## Sintaxis

```operando1``` ```operadorRelacional``` ```operando2```

## Tipos

- ### Mayor ```>``` que

Compara y evalúa si el operando de la izquierda es mayor al operando de la derecha.

```js
    console.log(10 > 0); // true
    console.log(0 > 10); // false
    console.log('z' > 'a'); // true
    console.log('a' > 'z'); // false
```

- ### Menor ```<``` que

Compara y evalúa si el operando de la izquierda es menor al operando de la derecha.

```js
    console.log(10 < 0); // false
    console.log(0 < 10); // true
    console.log('z' < 'a'); // false
    console.log('a' < 'z'); // true
```

- ### Mayor o igual ```>=``` que

Compara y evalúa si el operando de la izquierda es mayor o igual al operando de la derecha.

```js
    console.log(10 >= 0); // true
    console.log(0 >= 10); // false
    console.log(10 >= 10); // true
    console.log('z' >= 'a'); // true
    console.log('a' >= 'z'); // false
    console.log('a' >= 'a'); // true
```

- ### Menor o igual ```<=``` que

Compara y evalúa si el operando de la izquierda es menor o igual al operando de la derecha.

```js
    console.log(10 <= 0); // false
    console.log(0 <= 10); // true
    console.log(10 <= 10); // false
    console.log('z' <= 'a'); // false
    console.log('a' <= 'z'); // true
    console.log('a' <= 'a'); // false
```

## Ejemplo de uso

Un uso muy extendido se da cuando se desea evaluar una condición en una estructura de control ```if...else``` o ```switch```.

```js
    function permiso(edad) {
        if (edad >= 18) {
            return `Permitido con ${edad} años.`;
        } else {
            return `Prohibido con ${edad} años.`;
        }
    };

    console.log(permiso(22)); // Permitido con 22 años.

    console.log(permiso(18)); // Permitido con 18 años.

    console.log(permiso(16)); // Prohibido con 16 años.
```
