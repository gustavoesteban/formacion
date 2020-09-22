# Módulo 1: A problemática da xestión de recursos nun sistema operativo

## Comprender e empregar a tecnoloxía de namespaces

> Os [namespaces](https://docker.kirin.uno/addenda) son un dos pilares básicos para a construcción de contedores, a posibilidade de crear "vistas" privadas so SO para un proceso ou conxunto de procesos aporta unha flexibilidade moi grande para a execución de procesos.

Antes de realizar a tarefa le atentamente as **instrucións**, os **indicadores de logro** e os **criterios de corrección** que de seguido se detallan.

Pasos:

1. **Consultar** e **analizar** a documentación sobre  namespaces en profundidade.

2. **Traballar** cos comandos de xestión dos namespaces:
Nun pdf pon as capturas de pantalla dos comandos necesarios para:
Correr un bash cun pid, proc e network aillados.
Correr un bash co uts aillado.
Lanzar un bash que entre no namespace do paso 2 e modifique o hostname a "tarefa-namespaces".

3. **Explorar** o namespace de rede.
O namespace de redes permite, entre outras cousas, conectar procesos que se atopan en distintos namespaces a través de elementos virtuais tales como os veth. Nun pdf, pon as capturas de pantalla dos comandos necesarios para:
- Lanzar un bash con namespaces privados de rede, pid, proc.
- Crear un par de interfaces virtuais. 
- Asignar unha das interfaces ó namespace privado. 
- Comunicarse a través das veth (un ping por exemplo)
- Pódese atopar axuda neste artigo.  

---

**Evidencias de adquición de desempeños**: Pasos 1 ao 4 correctamente realizados segundo estes...

**Indicadores de logro**:  

- O cuestionario se contesta.
- Nos pdfs a entregar:
 - figurarán os comandos de bash para lanzar procesos con namespaces aillados. 
 - veránse os comandos de inserción dun proceso nun namespace doutro proceso.
 - pódense crear veth e comunicar dous namespaces diferentes a través da rede.

**Autoavaliación**: Revisa e autoavalia o teu traballo aplicando os indicadores de logro.

**Criterios de corrección** / **niveis de logro dos desempeños**:

- Paso 2
 - **5 puntos** se o cuestionario está completado

- Paso 3  (12 puntos máximos)
 - **4 puntos** se o comando de arranque do bash aillado está correcto.
 - **4 puntos** se o comando para arrancar o bash aillado do uts global está correcto. 
 - **4 puntos** se o comando de lanzar un proceso no namespace do uts privado e modificar o hostname está correcto.

- Paso 4 (8 puntos máximos)
 - **4 puntos** se os comandos de arranque do bash cos namespaces privados e o de creación dos veth están correctos.
 - **4 puntos** se os comandos de asociación dos veth ós namespaces global e privado e os de testeo son correctos.

**Peso na cualificación**:

- Peso desta tarefa no seu tema ...................................................... 25 %

## Limitar e controlar procesos a través dos cgroups

> Os cgroups son unha das funcionalidades básicas para a creación e xestión de contedores de software. Introducidos no Kernel de Linux polos enxeñeiros de Google a finales do 2007, permiten crear xerarquías de control, xestión e monitorización de procesos aplicables a usuarios e programas individuais. A súa flexibilidade e potencia fan que sexan empregados por outras ferramentas básicas de sistemas tales como systemd.

Antes de realizar a tarefa le atentamente as **instrucións**, os **indicadores de logro** e os **criterios de corrección** que de seguido se detallan.

Pasos:

1. **Consultar** e **analizar** a documentación sobre  cgroups: grupos de control de procesos.

2. **Traballar** cos comandos de xestión de cgroups:
- Como script de test podes empregar este:

```bash
#!/bin/sh
while [ 1 ]; do
        echo "Hola mundo"
        sleep 20
done
```

- Nun pdf pon as capturas de pantalla dos comandos necesarios para:
 - Crear un grupo de control de memoria co nome grupotest.
 - Limitar a execución de memoria a 50MB
 - Introducir unha execución do script de probas no grupo de control grupotest.
 - Ver o consumo de memoria do script a través de cgroups. 
 - Limitar a execución de memoria a 4KB. 
 - Mostrar os logs do sistema cando se corre o script de test con esta limitación. Pista:

```bash
/var/log/messages
```

3. **Explorar** o control de cpu nos cgroups.
- Hai unha información excelente nesta documentación.
- Para testear unha aplicación de uso extensivo de cpu, recoméndase matho-primes:
 - Baixar o paquete https://launchpad.net/ubuntu/+source/mathomatic/16.0.5-1.
 - Descomprimir. 
 - Ir á carpeta primes/
 - Executar make && make install
 - Executand isto, temos unha tarefa de uso intensivo de cpu que podemos cancelar sen problema en calqueira momento.

```bash
/usr/local/bin/matho-primes 0 9999999999 > /dev/null &
```

- Nun pdf, mostrar as sentencias necesarias para:
 1. Crear un grupo de control de emprego de cpu. 
 2. Introducir limitacións de cpu_shares.
 3. Establecer unha ratio de limitación de 2:1
 4. Lanzar 3 instancias do programa de test e mostrar co top as limitación de cpu. 

---

**Evidencias de adquición de desempeños**: Pasos 1 ao 4 correctamente realizados segundo estes...

**Indicadores de logro**:  

- O cuestionario se contesta.
- Nos pdfs a entregar:
 - figuran os comandos necesarios para crear os cgroups coas limitacións de memoria e os scripts correndo dentro dos grupos. 
 - vense os comandos de bash de creación de cpu-shares nos cgroups e testeos dos comandos.

**Autoavaliación**: Revisa e autoavalia o teu traballo aplicando os indicadores de logro.

**Criterios de corrección** / **niveis de logro dos desempeños**:

- Paso 2
 - **5 puntos** se o cuestionario está completado
- Paso 3  (12 puntos máximos)
 - **4 puntos** se o grupo de memoria está correctamente creado e a limitación establecida a 50MB.
 - **4 puntos** se o script está correctamente introducido no grupo e se comproba correctamente a limitación efectiva de memoria. 
 - **4 puntos** se se limita a memoria a 4KB e se mostra nos logs o que ocorre ó executar o script. 
- Paso 4 (8 puntos máximos)
 - **4 puntos** se o grupo de control de cpu está correctamente creado e a limitación de cpu shares establecida de xeito adecuado.
 - **4 puntos** se hai tres instancias lanzadas do script de test e as limitacións no top aparecen correctamente.
