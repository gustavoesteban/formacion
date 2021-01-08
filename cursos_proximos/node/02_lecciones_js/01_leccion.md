# Ecosistema

## Cómo ejecutar JavaScript

JavaScript es un lenguaje de programación muy popular y original de 1995. Desde aquel momento ha evolucionado mucho como también lo ha hecho su comunidad. Acompañando a esta evolución han surgido diferentes maneras de ejecutar el código tanto si hablamos donde se ejecuta como si hablamos de donde veremos el resultado de la ejecución. Para hacerlo sencillo veremos cuatro formas.

\**Nota - Se asume que los programas futuramente citados están instalados y abiertos.*

> ## Usando la consola del navegador

Con [**Google Chrome**](https://www.google.es/chrome/index.html "Google Chrome") podemos ejecutar código **JavaScript** pero con algunas limitaciones ya que iremos línea a línea.

1. **Clic derecho** >> Inspeccionar o **Ctrl + Mayús + I**

2. Abrimos la consola *Console*.

3. Podemos escribir libremente código en el canvas de la consola. **Enter** para introducir una orden.

```js
    const a = "Hola mundo";
    a; // "Hola mundo"
```

> ## Ejecutando el código en el navegador

Con [**Google Chrome**](https://www.google.es/chrome/index.html "Google Chrome") y escribiéndolo en un IDE como [**Visual Studio Code**](https://code.visualstudio.com/ "Visual Studio Code") mediante una extensión llamada [**Live Server**](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer "Live Server") que hará la función de servidor local.

1. Creamos una carpeta de trabajo (por ejemplo en el escritorio) y dentro de esta un archivo **nombreArchivo.html**

2. En *[**Visual Studio Code**](https://code.visualstudio.com/ "Visual Studio Code")*. Archivo >> Preferencias >> Extensiones o **Ctrl + Shift + X**

3. Introducimos *[**Live Server**](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer "Live Server")* en el campo de búsqueda.

4. Presionamos **Instalar**.

5. Reiniciamos *[**Visual Studio Code**](https://code.visualstudio.com/ "Visual Studio Code")*.

6. Archivo >> Abrir carpeta o **Crtl + O** y seleccionamos en el browser la carpeta creada anteriormente.

7. En el área de trabajo escribimos **html:5** y **Enter** para crear una estructura **htlm** básica.

8. Dentro de la etiqueta **<body></body>** creamos una etiqueta **<script></script>** y dentro de esta escribimos código **JavaScript**.

```html
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>
    </head>

    <body>
        <script>
            console.log("Hola mundo");
        </script>
    </body>

    </html>
```

9. Archivo >> Guardar o **Crtl + S**

10. **Clic derecho** >> Open with Live Server o **Alt + O** lo que abrirá el navegador por defecto.

11. **Clic derecho** >> Inspeccionar o **Ctrl + Mayús + I**

12. Abrimos la consola *Console*. Se visualizará el ```console.log``` con el mensaje ```"Hola mundo"```.

> ## Con la terminal interada

Empleando [**NodeJs**](https://nodejs.org/es/ "NodeJs") desde la terminal integrada de [**Visual Studio Code**](https://code.visualstudio.com/ "Visual Studio Code").

1. Archivo >> Nuevo archivo o **Crtl + N**

2. En el área de trabajo escribimos código **JavaScript**.

```js
    console.log("Hola mundo");
```

3. Archivo >> Guardar o **Crtl + S**. Guardamos el archivo en una ruta conocida.

4. Abrimos la terminal integrada con **Crtl + Ñ**

5. Desde la terminal integrada nos posicionamos en la carpeta donde esté guardado el archivo.

6. ```$ cd ruta/```.

7. ```$ node nombreArchivo.js```

8. La terminal integral nos devolverá ```Hola mundo```.

> ## Vía web

Existen en internet una infinidad de servicios webs que prestan gratuitamente servicios para la ejecución de código **JavaScript**.

- Servicios basados en [**ECMAScript**](https://tc39.es/ecma262/ "ECMAScript") que permite usar **html**, **css** y **JavaScript**:

 - [**codepad**](https://codepad.co/playground "codepad") - Guarda proyecto.

 - [**jsitor**](https://jsitor.com/ "jsitor") - Guarda proyectos - Uso de librerías vía CDN.

- Servicios basados en [**NodeJs**](https://nodejs.org/es/ "NodeJs") que permite ejecutar desde servidor:

 - [**jdoodle**](https://www.jdoodle.com/execute-nodejs-online/ "jdoodle") - Permite argumentos por línea de comandos.

 - [**tutorialspoint**](https://www.tutorialspoint.com/execute_nodejs_online.php "tutorialspoint") - Guarda proyectos.

 - [**repl**](https://repl.it/languages/Nodejs "repl") - Guardar proyectos - Estructura de archivos - Uso de paquetes NPM.
