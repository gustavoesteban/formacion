# Date

## Definición

**Date** es un objeto que forma parte de **JavaScript** y que tiene una serie de métodos que nos permite trabajar con fechas. **Date** nos ayuda cuando tenemos la necesidad de almacenar datos tipo fecha, cálculo de diferencia entre fechas, calculo de transcurso de tiempo, etc...

## Sintaxis

```get[valor]()```

## Formato

- Se usa el formato aaaa-mm-dd-hh-mm-ss-msmsms.

- Se usa la hora de la configuración de su equipo.

- El desplazamiento horario se hace en referencia al meridiano de Greenwich.

- El año se representa con cuatro dígitos.

- Los meses parten de una matriz, por lo tanto sus valores son [0-11] siendo 0=enero y 11=diciembre.

- Los días tienen por valor [1-31].

- Los días de la semana parten de una matriz, por lo tanto sus valores son [0-6] siendo 0=domingo y 6=sábado.

- Las horas tienen por valor [0-23].

- Los minutos tienen por valor [0-59].

- Los segundos tienen por valor [0-59].

- Los milisegundos tienen por valor [0-999].

## Constructor

Como cualquier otro objeto, se puede crear un constructor.

- Hora actual.

```js
    var fecha = new Date();

    console.log(fecha); // 2040-12-01T12:34:50.123Z
```

- Hora arbitraria.

```js
    var fecha = new Date(2000, 11, 22);

    console.log(fecha.getUTCFullYear(), fecha.getMonth(), fecha.getDay()); // 2000 11 5
```

## Métodos

Para los ejemplos usaremos:

```js
     ahora = new Date();
```

- ### **getTime**

Sintaxis: ddate.getTime()

Definición: devuelve la cantidad de milisegundos transcurridos desde 1970/1/1 hasta la hora actual.

```js
    var desde = ahora.getTime();

    console.log(desde); // 1569097143586
```

- ### **getTimezoneOffset**

Sintaxis: date.getTimezoneOffset()

Definición: devuelve en minutos la diferencia horaria que hay entre la hora local y la hora de referencia. El valor puede ser ```+valor``` positivo, ```-valor``` negativo o ```0``` cero.

```js
    var diferencia = ahora.getTimezoneOffset();

    console.log(diferencia); // -180
```

- ### **getFullYear**

Sintaxis date.getFullYear()

Definición: devuelve el año.

```js
    var anho = ahora.getFullYear();

    console.log(anho); // 2040
```

- ### **getMonth**

Sintaxis: date.getMonth()

Definición: devuelve el mes.

```js
    var mes = ahora.getMonth();

    console.log(mes); // 4
```

- ### **getDate**

Sintaxis: date.getDate()

Definición: devuelve el día del mes.

```js
    var dia = ahora.getMonth();

    console.log(dia); // 14
```

- ### **getDay**

Sinatxis date.getDay()

Definición: devuelve el día de la semana.

```js
    var diaSemana = ahora.getDay();

    console.log(diaSemana); // 5
```

- ### **getHours**

Sintaxis: date.getHors()

Definición: devuelve la hora.

```js
    var hora = ahora.getHours();

    console.log(hora); // 17
```

- ### **getMinutes**

Sintaxis: date.getMinutes()

Definición: devuelve el minuto.

```js
    var minuto = ahora.getMinutes();

    console.log(minuto); // 55
```

- ### **getSeconds**

Sintaxis date.getSeconds()

Definición: devuelve el segundo.

```js
    var segundo = ahora.getSeconds();

    console.log(segundo); // 23
```

- ### **getMilliseconds**

Sintaxis date.getMilliseconds()

Definición: devuelve el milisegundo.

```js
    var miliSegundo = ahora.getMilliseconds();

    console.log(miliSegundo); // 789
```

> Si queremos lo mismo que los métodos anteriores (FullYear, Month, Date, Hours, Minutes, Seconds, Milliseconds, Day) pero en modo UTC, es decir, la hora universal, usaremos el formato ```getUTC```[método]```()```. Por ejemplo ```getUTC```Hour```()``` 👀.

## Operar con fechas

Para operar con fechas basta con operar como si de números se tratase.

```js
    var ahora = new Date();

    var nacimiento = 1986;

    var edad = ahora.getFullYear() - nacimiento;

    console.log(edad); // 34
```

## Función **setTimeout()**

Esta función ejecutará, pasados X milisegundos, una función anónima que definamos una sóla vez. Su uso es muy conveniente para simular la demora que tarda una conexión, la demora que puede tardar una API en devolvernos un dato, en juegos, etc...

> *Nota: cada 1000 milisegundos es 1 segundo.

Sintaxis: ```setTimeout(función, demora)```

```js
    setTimeout(function () {
        console.log('Hola mundo')
    }, 3000); // Hola mundo
```

Otra forma de escribir lo mismo.

```js
    var func = function () {
        console.log('Hola mundo')
    };

    setTimeout(func, 3000);
```

Alternativamente, con una función flecha que veremos en lecciones posteriores.

```js
    setTimeout( () => console.log('Hola mundo'), 1000)
```

## Función **setInterval()**

Esta función es similar a la anterior con la diferencia de que ejecutará la función interna de forma indefinida cada X milisegundos hasta que detengamos voluntariamente la ejecución. La primera ejecución se hace aplicando la demora y no de forma inmediata.

> *Nota: Para detener la ejecución en una terminal e impedir que se ejecute indefinidamete ```Ctrl + C```.

Sintaxis: ```setInterval(función, demora)```

```js
    setInterval(function () {
        console.log('Hola mundo')
    }, 3000); // Hola mundo
```
