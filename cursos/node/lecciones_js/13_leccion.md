# 

# Definición
Los operadores lógicos comparan los operandos (a su izquierda y derecha) y devuelve un valor booleano basándose en si la comparación es verdadera o no.

# Sintaxis
Para ```&&``` y ```||```

- ```operando1``` ```operadorLogico``` ```operando2```

Para ```!```

- ```operadorLogico operando2```

# Tipos

- El operador ```&&``` evalúa que los dos operandos se cumplan.

- El operador ```||``` evalúa que al menos uno de los dos operandos se cumpla.

- El operador ```!``` evalúa que el operando sea distinto al propuesto.

# Ejemplo de uso
Un uso muy extendido es cuando se desea evaluar una condición en una estructura de control ```if...else``` o ```switch```.

```js
    function discoteca(edad) {
        if (edad >= 18) {
            return `Puedes pasar con ${edad} años.`;
        } else if (edad < 0 || isNaN(edad) == true) {
            return `Dato no válido.`;
        } else if (edad < 18 && edad >= 16) {
            return `Con ${edad} años sólo puedes entrar en la sesión light.`;
        } else {
            if (!1 && edad > 0 && edad < 16) {
                return `Tienes ${edad} años, no puedes entrar.`;
            } else {
                return `Tienes ${edad} año, no puedes entrar.`;
            }
        }
    };

    console.log(discoteca(1)); // Tienes 1 año, no puedes entrar.

    console.log(discoteca(16)); // Con 16 años sólo puedes entrar en la sesión light.

    console.log(discoteca(18)); // Puedes pasar con 18 años.
```