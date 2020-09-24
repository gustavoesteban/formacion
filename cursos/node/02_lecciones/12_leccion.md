# 

# Definición
Este conjunto de operadores de igualdad comparan los operandos (a su izquierda y a su derecha) y devuelve un valor booleano basándose en si la comparación es verdadera o no.

# Sintaxis
```operando1``` ```operadorIgualdad``` ```operando2```

# Tipos

- ## Igual ```==```

Compara y evalúa si hay igualdad en el valor del dato de los dos operandos.

```js
    console.log(10 == 0); // false
    console.log(10 == 10); // true
    console.log('a' == 'z'); // false
    console.log('a' == 'a'); // true
    console.log('1' == 1); // true ya que sólo implica mismo valor
```

- ## Estrictamente igual ```===```

Compara y evalúa si hay igualdad en el valor del dato o en el tipo de dato de los dos operandos.

```js
    console.log(10 === 0); // false
    console.log(10 === 10); // true
    console.log('a' === 'z'); // false
    console.log('a' === 'a'); // true
    console.log('1' === 1); // false ya que implica mismo valor y mismo tipo
```

- ## Desigual ```!=```

Compara y evalúa si hay desigualdad en el valor del dato de los dos operandos.

```js
    console.log(10 != 0); // true
    console.log(10 != 10); // false
    console.log('a' != 'z'); // true
    console.log('a' != 'a'); // false
    console.log('1' != 1); // false
```

- ## Estrictamente desigual ```!==```

Compara y evalúa si hay desigualdad en el valor del dato o en el tipo de dato de los dos operandos.

```js
    console.log(10 !== 0); // true
    console.log(10 !== 10); // false
    console.log('a' !== 'z'); // true
    console.log('a' !== 'a'); // false
    console.log('1' !== 1); // true
```

# Ejemplo de uso
Su principal uso es cuando desea evaluar una condición en una estructura de control ```if...else``` o ```switch```.

```js
    function permiso(edad) {
        if (edad == 18) {
            return `Estás justo en los ${edad} años. Ya eres mayor de edad.`;
        } else {
            return `Este año no tienes 18 años.`;
        }
    };

    console.log(permiso(22)); // Este año no tienes 18 años.
    console.log(permiso(18)); // Estás justo en los 18 años. Ya eres mayor de edad.
    console.log(permiso(16)); // Este año no tienes 18 años.
```