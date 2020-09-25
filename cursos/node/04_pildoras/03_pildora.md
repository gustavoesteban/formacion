# Optimización de condicionales.

> Código previo de contexto.

```js
    const japones = () => { console.log('こんにちは') }
    const español = () => { console.log('Hola!') }
    const alternativa = () => { console.log('No se quién eres.') }
```

En ocasiones nuestro código, para agregar lógica, se ve cargado de condicionales ```if/else``` o ```switch``` provocando una ramificaión muy profusa. Los inconvenientes principales son la falta de legibilidad y de eficiencia.

> ```if/else```

```js
    const saludo = nombre => {
        if (nombre === 'tanaka') {
            return japones()
        } else if (nombre === 'Agustín') {
            return español()
        } else {
            return alternativa()
        }
    }
```

> ```switch```

```js
    const saludo = nombre => {
        switch (nombre) {
            case 'tanaka':
                japones();
                break;
            case 'Agustín':
                español();
                break;
            default:
                alternativa();
        }
    }
```

> ```resultados```

```js
    saludo('tanaka') // 'こんにちは'
    saludo('Agustín') // 'Hola!'
    saludo('Juán') // 'No se quién eres.'
```

Podemos apreciar como estas dos formas de abordar el mismo problema son igual de efectivas. Cada una con sus matices. Para el caso de ```if/else```, tenemos dos posibles salidas predefinidas y una ruptura que cubre el resto. Para el caso de ```switch```, tenemos
algo similar predefiendo dos salidas y el caso por defecto con la ventaja de que podemos ser menos verbosos en cada condición añadiendo varios ```case``` antes del ```brake```. Ambos casos podrian anidar otros condicionales y estos, otros a su vez, haciendo muy verboso el código y aumentando la posibilidad de incurrir en un error. Además de hacer más dificil un seguimiento del flujo de la lógica. Imagina que otra persona revisa nuestro código en el futuro, le será harto complicado entender que se pretende lograr.

> Vamos a mejorar esto 📚

En primer lugar tenemos un objeto que almacena nuestros parámetros ```clave``` y sus correspondientes funciones ```valor```.
Después tenemos una función que contiene una sentencia muy tersa. Esta sentencia nada más que tiene una condición con un operador ternario. Así de simple. Menos verboso, más claro, más eficiente y más escalable.

```js
    var saludos = {
        tanaka: japones,
        Agustín: español,
        otro: alternativa,
    }
    const saludo = (nombre) => {
        typeof saludos[nombre] === 'function' ? saludos[nombre]() : alternativa()
    }
```