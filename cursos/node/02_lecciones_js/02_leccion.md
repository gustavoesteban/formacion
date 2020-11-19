# Empezamos

## ...

En la sección **contexto** vimos qué es un lenguaje de programación y qué es **Javascript**.
En la lección **01** vimos el ecosistema y cómo ejecutar nuestro código.
En esta lección entraremos en materia empezando a conocer la estructura del lenguaje, y la sintaxis del mismo así como un conjunto de buenas prácticas para llevar bien el curso.

## Buenas prácticas

Os invito a seguir una serie de buenas prácticas para ganar velocidad y soltura:

- Perded el miedo a escribir. Cometer errores es fundamental en el aprendizaje.

- Id guardando los ejercicios que vayáis haciendo para poder revisarlos al momento de repasar.

- Comentad las líneas que creáis oportunas y los bloques de código con lo que hace, así os resultará cómodo reaprovecharlo.

- Escribid vosotros mismos el código propuesto a lo largo del curso, cuanto más se escribe código más fácilmente se quedan los conceptos, sintaxis y estructuras.

- Usad ```console.log();``` de forma indiscriminado para conocer que está haciendo nuestro programa en cada momento. Esto os permitirá conocer en profundidad el flujo del programa y os ayudará a depurar el código.

- Buscad un entorno de trabajo, entre los propuestos, que os sea versátil y con el que os sintáis cómodos.

## Indentación y espaciado

Existe una forma de escribir código basada en *indentar*, es decir, en aplicar sangrías que facilitarán la legibilidad y comprensión del mismo. Otra cosa que podemos hacer para aumentar este propósito, es espaciar con saltos de línea los bloques de código.

- Código indentado y espaciado.

```js
    var alumnosJS = [
        'Samuel',
        'Ricardo',
        'ALberto',
        'Sonia',
        'Almudena'
    ];

    var alumnosJava = [
        'Carlos',
        'María',
        'Gloria',
    ];

    var juntarAlumnos = [...alumnosJava, ...alumnosJS];

    var alumnosJSordenados = juntarAlumnos.sort();

    console.log(alumnosJSordenados);
```

- Código sin indentar y no espaciado.

```js
    var alumnosJS = ['Samuel', 'Ricardo', 'ALberto', 'Sonia', 'Almudena'];
    var alumnosJava = ['Carlos', 'María', 'Gloria'];
    var juntarAlumnos = [...alumnosJava, ...alumnosJS];
    var alumnosJSordenados = juntarAlumnos.sort();
    console.log(alumnosJSordenados);
```

Sólo tendrá un efecto estético pero que es muy importante. Si ejecutamos el código, en los dos casos, se ejecutará convenientemente y tardará el mismo tiempo en hacerlo.  

## Sintaxis

En términos generales: la sintaxis es el conjunto de normas que deben seguirse para es escribir correctamente en lenguaje; **JavaScript** no es menos. Lo que hemos visto hasta ahora son algunas normas, buenas prácticas y recomendaciones, pero la realidad es que se podrían escribir miles de páginas sobre el asunto. Lo importante es que a lo largo del curso os vayáis fijando en los ejemplo que se muestran. En lecciones futuras es probable que os encontréis con algo como esto ```array.join(separador)``` que no es más que una regla de sintaxis. De esta forma sabremos cómo escribir correctamente, por ejemplo, este método de los arrays.

## Palabras reservadas

**JavaScript** posee una serie de palabras reservadas que no podrán ser usadas con otro fin que no sea para el que están originalmente destinadas. No podemos usarlas para nombrar variables, funciones, métodos o identificadores de objetos.

```js
    break | case | class | catch | const | continue
    debugger | default | delete | do | else | export
    extends | finally | for | function | if | import
    in | instanceof | let | new | return | super
    switch | this | throw | try | typeof | var
    void | while | with | yield
```

## Comentarios
Los comentarios son algo que en casi todos los lenguajes de programación está presente. Nos sirve para **explicar** a nuestro *yo* del futuro y/o a otros posibles programadores que vayan a leer nuestro código, que es lo que hace este. En ocasiones es necesario añadir aclaraciones de cómo funciona un programa, sobre su uso, etc... 


> En ocasiones nos vemos en la necesidad de comentar, en el mismo archivo, partes del código. Estos comentarios tienen que ser pasados por alto por el intérprete, es decir, que no afecten al código. Existen dos formas de comentar:

- Una línea

```js
    // Soy un comentario monolínea.
```

- Una línea *inline*

```js
    var helloWorld = "Hola mundo"; // Soy un comentario monolínea inline.
```

- Varias líneas

```js
    /*
    Soy un comentario multilínea.
    */
```

## Nomenclatura

Para definir nombres de variables y funciones. Si has trabajado con algún otro lenguaje de programación habrás detectado que existen una serie de normas universales que rigen la nomenclatura de los términos que no son palabras reservadas propias del lenguaje. Otra caso es que hayas trabajado con algún grupo de trabajo donde usan, dentro de unos márgenes, un estilo propio de generar nomenclaturas. Tanto si es en un caso como en el otro, hemos de definir el nombre de las variables, funciones, objetos, etc, atendiendo las siguientes reglas; unas son obligatorias, otras son prohibidas y otras son sólo recomendables:

- De forma general sólo se usarán caracteres latinos ```[0-9]```, ```[a-z]```, ```[A-Z]``` y ```[_]```.

```js
    // Bien
    pesosDiarios
    // Mal
    $-diarios
```

- Los números no pueden iniciar el nombre.

```js
    // Bien
    ochoSeccion
    // Mal
    8seccion
```

- Deben ser intuitivos, de forma que describan lo que contienen.

```js
    // Bien
    totalAlumnos
    // Mal
    t
```

- Se debe evitar usar palabras reservadas por la sintaxis de **JavaScript** para evitar errores.

```js
    // Bien
    func
    // Regular
    funcion
    // Mal
    function
```

- Se desaconseja usar nombres de variables muy parecidos así como términos con caracteres poco internacionales como ```ñ```, ```ç``` o caracteres con acento gráfico.

```js
    // Bien
    manhanaSabados
    // Mal
    mañanaSábados
```

- El guión bajo ```_``` o doble guión bajo ```__``` al inicio debe ser evitado en las variables para evitar errores ya que este se usa en algunos constructores de del lenguaje y funciones.

```js
    // Bien
    edad
    // Mal
    _edad
```

- Se recomienda el uso de ```lowerCamelCase``` y hay que tener en cuenta que son ```case sensitive``` (diferencia entre mayúsculas y minúsculas).

```js
        // Bien
        precioConRecargo
        // Mal
        precioconrecargo
```

## Mi primer programa
Sin aún conocer los entresijos, vamos a escribir nuestras primeras líneas de código. Con este ejercicio empezamos a ver la potencia de la programación. No os agobies si no entendeis lo que realmente está sucediendo, el propósito de este '**Mi primer programa**' es hacer uso en conjunto de lo visto durante esta lección.

```js
    // Función flecha que suma dos valores cualesquiera pasados como parámetros de la función.
    const suma = (a, b) => a + b;

    // Función flecha que resta dos valores cualesquiera pasados como parámetros de la función.
    const resta = (a, b) => a - b;

    // Función flecha que multiplica dos valores cualesquiera pasados como parámetros de la función.
    const multiplicacion = (a, b) => a + b;

    /*
    Función flecha que divide dos valores cualesquiera pasados como parámetros de la función.
    Si el dividendo es igual a 0 nos advierte mediante un string que no se puede realizar la operación. 
    */
    const division = (a, b) =>  (b != 0) ? a / b : `No se puede dividir ${a} entre ${b}.`;

    // Invocación de funciones a través de console.log(); para que nos muestre los resultados de la operación.
    console.log(suma(30, 70));

    console.log(resta(200, 100));

    console.log(multiplicacion(10, 10));

    console.log(division(200, 2));

    console.log(division(100, 0));
```

> Os invito a que copies el código y lo ejecutéis donde os resulte más cómodo para empezar a familiarizaros con él.
