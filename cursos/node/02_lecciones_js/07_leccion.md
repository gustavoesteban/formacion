# Objetos

## Definición

Un objeto es un contenedor de propiedades (calve/valor) que se almacena en una variable.

Podemos decir que las propiedades de un objeto son en la práctica variables, con la única diferencia que para dirigirnos a ellas, lo hacemos asociado al objeto. Una ayuda para entender los objetos es pensar en ellos como objetos reales. Un coche tiene, por ejemplo, marca, modelo, color, tipo combustible, año fabricación, etc...

Existen una serie de objetos propios de **JavaScript** que albergan propiedades y los valores de estas funciones conocidas que resuelven código. Dicho de otra forma, hay funciones dentro de objetos propios del lenguaje que utilizamos cuando tenemos la necesidad de manipular datos. Un ejemplo de ello es el objeto matemático con la propiedad de la constante *PI* ```Math.PI``` o el mismo objeto matemático con con el método para hallar el *coseno* de un valor dado ```Math.cosh(x)```.

Fuera de estos objetos propios del lenguaje, existe la posibilidad de que nosotros definamos nuestros propios objetos.

## Sintaxis.

Fíjate en que el último par clave/valor no lleva ```,``` coma.

```js
    tipoVariable nombreObjeto = {
        clave1: valor1,
        clave2: valor,
        claveN: valorN
    };
```

```js
    const obj = {
        a: 1,
        b: 2
    };
```

## Qué puede contener?

Una apropiedad puede ser de cualquier tipo.

- String:

```js
    var objString = { a: 'Hola mundo' };

    console.log(objString.a); // 'Hola mundo'
```

- Número:

```js
    var objNumero = { a: 10 };

    console.log(objNumero.a); // 10
```

- Operación:

```js
    var objOperacion = { a: 10 * 10 };

    console.log(objOperacion.a); // 100
```

- Array:

```js
    var objArray = { a: [1, 2, 3] };

    console.log(objArray.a[0]); // 1
```

- Función:

```js
    var objFuncion = { a: function saludar(nombre) {
        return `Hola ${nombre}`;
    }};

    console.log(objFuncion.a('Hector')); // 'Hola Hector'
```

- Objeto:

```js
    var objObj = { a: { b: { c: 'd' } } };

    console.log(objObj.a.b.c); // 'd'
```

- O una combinación de ellos:

```js
    var objConbinacion = {
        a: 'Hector',
        b: 10,
        c: 10 * 10,
        d: [1, 2, 3],
        e: function saludar(nombre) { return `Hola ${nombre}`; },
        f: { b: { c: 'd' } }
    };

    console.log(objConbinacion.e(objConbinacion.a)); // 'Hola Hector'
```

## Accediendo a los valores

Usaremos el siguiente **objeto** para los ejemplos.

```js
    const jirafa = {
        reino: 'Animalia',
        subreino: 'Eumetazoa',
        rama: 'Bilateria',
        filo: 'Chordata',
        subfilo: 'Vertebrata',
        superclase: 'Gnathostomata',
        clase: 'Mammalia',
        subclase: 'Eutheria',
        orden: 'Artiodactyla',
        familia: 'Giraffidae',
        especie: 'Giraffa camelopardalis'
    };
```

> Para acceder al objeto, llamaremos directamente a la variable.

```js
    console.log(jirafa);
    /*
    { reino: 'Animalia',
    subreino: 'Eumetazoa',
    rama: 'Bilateria',
    filo: 'Chordata',
    subfilo: 'Vertebrata',
    superclase: 'Gnathostomata',
    clase: 'Mammalia',
    subclase: 'Eutheria',
    orden: 'Artiodactyla',
    familia: 'Giraffidae',
    especie: 'Giraffa camelopardalis' }
    */
```

> Para acceder al valor, llanaremos a la variable y a su clave.

```js
    console.log(jirafa.reino); // 'Animalia'
```

> Para listar todos los valores del objeto en un **string** mediante la sentencia ```for...in```.

```js
    var cadena = "";

    for (var propiedad in jirafa) {
    cadena = cadena + jirafa[propiedad] + ', ';
    };

    console.log(cadena);  // Animalia, Eumetazoa, Bilateria, Chordata, Vertebrata, Gnathostomata, Mammalia, Eutheria, Artiodactyla, Giraffidae, Giraffa camelopardalis,
```

> Para listar todos los valores del objeto en un **array**.

```js
    var lista = Object.keys(jirafa);

    console.log(lista);
    /*
    [ 'reino',
    'subreino',
    'rama',
    'filo',
    'subfilo',
    'superclase',
    'clase',
    'subclase',
    'orden',
    'familia',
    'especie' ]
    */
```

## Construyendo un objeto

Mediante el uso de una función podemos construir un objeto. Como parámetros le pasamos las propiedades. En su interior haremos uso de la palabra reservada ```this``` para igualar la propiedad a un término que por convención será el mismo.
Ahora es el momento de crear un nuevo objeto mediante el constructor. Esto se hace creando una variable y se iguala a la palabra reservada ```new``` junto al nombre de la función constructora, ahora bien, como parámetros hemos de pasar los valores de las propiedades respetando el orden. Por convención se define a un constructor de objeto con la primer letra en mayúscula.

*Nota*: ```this```es un puntero que hace referencia al propio objeto dentro del método contructor. 

Usaremos esta función como método constructor para los ejemplos.

```js
    function Mascota(raza, color, vivo, edad) {
        this.raza = raza;
        this.color = color;
        this.vivo = vivo;
        this.edad = edad;
    };
```

> Constructor con todos los parámetros.

```js
    var yuri = new Mascota("Dálmata", "Blanco pintas negras", true, 7);

    console.log(yuri.raza); // 'Dálmata'
```

> Constructor con un parámetro omitido. Este aparecerá como ```undefined```.

```js
    var neus = new Mascota("Galgo", "Ceniciento",true);

    console.log(neus.edad); // undefined
```

> Constructor con un parámetro omitido pero con valor por defecto. Aparecerá el valor por defecto.

```js
    function Mascota(raza, color, vivo, edad=13) {
        this.raza = raza;
        this.color = color;
        this.vivo = vivo;
        this.edad = edad;
    };

    var neus = new Mascota("Galgo", "Ceniciento",true);

    console.log(neus.edad); // 13
```

> Constructor con todos los parámetros pero con valor por defecto. Aparecerá el nuevo valor y no el que se impuso por defecto.

```js
    function Mascota(raza, color='Marrón', vivo, edad) {
        this.raza = raza;
        this.color = color;
        this.vivo = vivo;
        this.edad = edad;
    };

    var neus = new Mascota("Galgo", "Ceniciento",true, 13);

    console.log(neus.color); // 'Ceniciento'
```

## Herencia

Un objeto puede ser creado mediante copia de otro objeto. Hay que tener en cuenta que, tanto la copia como el copiado, comparten las mismas direcciones de memoria y si se modifica uno también se modificará el otro. Si queremos que no se propague la herencia, deberemos crear un objeto nuevo.

```js
    const jirafaDos = jirafa;

    delete jirafa.especie;
    delete jirafa.familia;
    delete jirafa.orden;
    delete jirafa.subclase;
    delete jirafa.clase;
    delete jirafa.superclase;
    delete jirafa.subfilo;
    delete jirafa.filo;
    delete jirafa.rama;

    console.log(jirafa); // {reino: 'Animalia', subreino: 'Eumetazoa'}

    console.log(jirafaDos); // {reino: 'Animalia', subreino: 'Eumetazoa'}
```

Con este ejemplo aprendemos dos cosas importantes:

- De alguna forma la variable ```const``` no es puramente inmutable porque estamos eliminando propiedades de un objeto, es decir, modificando la variable inmutable.

- Que, aún copiando ```jirafa``` en ```jirafaDos``` antes de eliminar algunas de sus propiedades, ```jirafaDos```, ha heredado los cambios.
