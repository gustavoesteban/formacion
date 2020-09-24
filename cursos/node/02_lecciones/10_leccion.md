# 

# Definición
Es un operador (unitario) que elimina la propiedad de un objeto. En el caso de variables globales declaradas y objetos propios del lenguaje, no tendra efecto el operador ```delete```.

# Sintaxis

```js
    delete nombreObjeto['propiedad']
```

# Usos
- Eliminando porpiedad de un objeto propio. ```true```.

```js
    var miObj = { a: 1, b: 2 };
    console.log(miObj); // { a: 1, b: 2 }

    delete miObj.a;
    console.log(miObj); // { b: 2 }
```

- Eliminando variable no declarada. ```true```.

```js
    a = 1;
    console.log(a); // 1

    delete a;
    console.log(a); // La variable 'a'  no está definida.
```

- Eliminando variable declarada. ```false```.

```js
    var a = 1;
    console.log(a); // 1

    delete a;
    console.log(a); // 1
```

- Eliminar propiedad objeto propio del lenguaje ```false```.

```js
    console.log(Math.E); // 2.718281828459045

    delete Math.E;

    console.log(Math.E); // 2.718281828459045
```

# Uso alternativo
Primero veamos como se hace con el método ```pop()``` y notemos como afecta a la lomgitud (valor que devuelve la propiedad ```length```).

```js
    var miArray = [1, 2, 3, 4];
    console.log(miArray.length); // 4

    miArray.pop();
    console.log(miArray); // [1, 2, 3]
    console.log(miArray.length); // 3
```

Sin embago, se puede usar el operador ```delete``` para eliminar un valor de un array. Este mantendrá la longitud (valor que devuelve la propiedad ```length```) ya que en su lugar habrá un espacio sin valor (```undefined```).

```js
    var miArray = [1, 2, 3, 4];
    console.log(miArray.length); // 4

    delete miArray[1]
    console.log(miArray); // [1, <1 empty item>, 3, 4]
    console.log(miArray[1]); // undefined
    console.log(miArray.length); // 4
```