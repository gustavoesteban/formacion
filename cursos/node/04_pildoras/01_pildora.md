#  Qué es?

En el momento de definir el nombre de las varibales de nuestro programa nos encontramos con la necesidad de escribir una serie de palabras concatenadas que describan el contenido de la variable pero sin pasarnos con la cantidad para no hacerla farragosamente larga. Sin embargo, en ocasiones nos vemos forzados a escribir algo como esto:

```
    numerototaldias
    listapreciossiniva
    alumnos2020cursoprogramacion
```

Sabemos, de otras píldoras, que podemos apocopar los términos sin perder comprensión y que hay partes del nombre de nuestra variable que son sacrificables:

```
    numtotaldias
    listprecssiniva
    alum2020cursoprogram
```

Sin embargo, seguimos teniendo un problema de legibilidad severo. Para solucionar esto y ganar facilidad de lectura existe camelCase, que es la práctica de escribir nombres de variables consistente en usar las mayúsculas y minúsculas para favorecer la legibilidad de estas. Existen dos formas de:

> lowerCamelCase

```
    estoEsUnaVariable
```

> UpperCamelCase

```
    EstoEsUnaVariable
```

Su uso no es obligatorio ya que no existe ninguna regla de sintaxis que nos lo obligue, pero su uso está muy extendido y se ha convertido en una regla no escrita. Su ventaja más destacable es la legibilidad que proporciona. También se le da uso a esta técnica para denominar funciones, en otros lenguajes de programación o en nombres de archivos.

El nombre camelCase tiene su orgien en el parecido que tienen la forma de las jorobas de los camellos y la forma de jorobas que dibujan las mayúsculas entre las minúsculas.

> Si usamos camelCase ```lowerCamelCase```, que es el más común, para nuestro caso quedaría así:
```
    numTotalDias // de forma regular se capitaliza la primera letra de cada término desde el segundo.
    listPrecsSinIVA // en el caso de acrónimos, se ponen en mayúsculas.
    alum2020cursoProgram // después de un número se resetea el camelCase
```