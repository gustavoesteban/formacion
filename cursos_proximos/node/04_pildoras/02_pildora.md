# Escapar caracter

>Qué sucede cuando queremos que una cadena de texto tenga un caracter ```"``` en su interior y que esto no afecte al código:

```js
    var frase = "Esto " es un caracter de comillas dobles"
    console.log(frase) // Error de sintaxis: Identificador inesperado.
```

>Para evitar el error debemos escapar el caracter con una barra invertida ```\``` antes del caracter.
```js
    var frase = "Esto \" es un caracter de comillas dobles"
    console.log(frase) // Esto " es un caracter de comillas dobles
```

> No sólo podemos escapar el caracter empleado en el ejemplo, podemos escapar cualquiera.
