# Operadores aritméticos

## Definición

Los operadores aritméticos son un conjunto de símbolos que permiten expresar una operación matemática. Aplicando a dos operandos da como resultado un tercero.

Los operadores de ```--``` decremento  e ```++``` incremento, disminuirán y aumentarán respectivamente en un entero (1) el valor dado.

## Sintaxis

- Suma
```[operando1 + operando2]```

- Resta
```[operando1 - operando2]```

- Multiplicación
```[operando1 * operando2]```

- División
```[operando1 / operando2]```

- Exponenciación
```[termino1 ** término2]```

- Decremento
```variable--``` | 
```--variable```

- Incremento
```variable++``` | 
```++variable```

## Operadores

- El operador de adición ```+``` suma dos operandos.

```js
    10 + 3 = 13
```

- El operador de sustracción ```-``` resta dos operandos.

```js
    10 - 3 = 7
```

- El operador de multiplicación ```*``` multiplica dos operandos.

```js
    10 * 3 = 30
```

- El operador de división ```/``` divide dos operandos.

```js
    10 / 3 = 3.332
```

- El operador de exponenciación ```**``` eleva el primer término al segundo termino.

```js
    10**3 = 1000
```

- El operador de decremento ```--``` reduce en una unidad el valor de la variable.

```js
    var a = 5;

    --a;

    console.log(a); // 4

    a--;

    console.log(a); // 3
```

- El operador de decremento ```++``` reduce en una unidad el valor de la variable.

```js
    var a = 5;

    ++a;

    console.log(a); // 6

    a++;

    console.log(a); // 7
```
## Ejemplos de uso

> Operación con cinco de los operadores anteriormente citados.

```js
    var operacion = ((24 - 5) + (12 * 32) / (2 ** 5));

    console.log(operacion); // 31
```

> Un uso muy notable es como generador de secuencias mediante el iterador ```i``` en los ciclos ```for```.

```js
    for (var i = 0; index < array.length; index++) {
        const element = array[index];
    };
```
