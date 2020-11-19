# Módulo 2: Docker, contedores para todos

## Docker básico. Instalar docker no noso entorno de probas e operar cos primeiros contedores

> Antes de comezar a traballar co ecosistema de Docker, temos que instalar docker engine no noso entorno de traballo.

### Tipos de instalación

Actualmente existen duas versións de Docker, unha gratuita para a comunidade (Community Edition) e unha de pago, con soporte extendido, para empresas (Enterprise Edition).

Dentro da versión de comunidade, que sería a de empregar neste curso, temos varias opcións:

- A: Instalación de Docker no noso laptop.
- B: Creación dunha máquina virtual (servidor linux) e instalar o Docker dentro dela.

#### A - Instalación de Docker no noso laptop
A plataforma de Docker permite a súa instalación nos principais sistemas operativos:

- [Windows](https://docs.docker.com/docker-for-windows/install/).
- [Mac](https://docs.docker.com/docker-for-mac/install/).
- Linux (ver a continuación o apartado B).

#### B - Instalación de Docker nun servidor linux

Segundo a distro da nosa elección, temos distintas [posibilidades](https://docs.docker.com/engine/installation/#server). Se estades a empregar a imaxe recomendada no modulo 0, de preparación do entorno (Ubuntu 18.04) tedes as instruccións [aquí](https://docs.docker.com/install/linux/docker-ce/ubuntu/).

**Pasos**:

1. **Instalar** docker no noso entorno de traballo seguindo uns dos camiños anteriores (A ou B).

2. Unha vez instalado o Docker vamos a levantar o noso primeiro contedor. Para esto temos que levantar un proceso que, empregando a comando de shell [```echo```](http://www.linfo.org/echo.html), saque unha mensaxe por pantalla dicindo: Ola Mundo!

Obviamente, queremos facelo dentro dun contedor, e que monte **unha distro CentOS**.

Tal e como viramos na práctica do módulo 1 (construindo o noso contedor) poderíamos seguir eses pasos para face-lo traballo:

- Descargar un sistema de ficheiros de CentOS.
- Montar un contedor con unshare, limitando os [namespaces](../01_que_e_un_contedor_de_software/08_namespaces_en_profundidade.md), facer un chroot a onde está o sistema de ficheiros descargado...
- ...

pero agora xa podemos empregar Docker para facelo. Con Docker, básicamente, temos que seguir a mesma receta, pero, afortunadamente, todo iso está automatizado dentro das súas [utilidades](https://docs.docker.com/engine/reference/commandline/run/).

3. A continuación vexamos como **aloxar un servidor dentro dun contedor**, e ademáis **que teña persistencia**, de xeito que si eliminamos e volvemos a recrear o contedor non se perderán os datos que nel se almacenan.

Para esto  montar un contedor que:

- 3.1: conteña un **servidor mysql**, empregando a imaxen oficial de [mysql](https://hub.docker.com/_/mysql), **na súa versión 5.7**.
- 3.2: se arrinque **en segundo plano** e continue ca execución do servicio unha vez desenganchado do terminal.
- 3.3: que teña  **persistencia de datos**, dentro do path de almacenado de mysql (```/var/lib/mysql```).
- 3.4: ademáis **seguindo as instruccións indicadas** no [repositorio da imaxen](https://hub.docker.com/_/mysql):
 - establecer a contrasinal de root a unha cadea de 10 caracteres.
 - crear unha base de datos co nome "platega-docker".
 - crear un usuario para esa base de datos co nome de pila do alumno e unha contrasinal de 10 caracteres.

4. Ademais de que teña persistencia, tamén queremos que teña conectividade co exterior, de xeito que se poida acceder dende fora da máquina virtual a ese contedor. Para isto relancemos o servidor de mysql do apartado anterior pero expoñendo o **porto 3306**, na interfaz pública do entorno de traballo (a máquina virtual de virtualbox, se é o caso).

- 4.1: Deter o contedor e crear un novo que traballe contra os mesmos datos.
- 4.2: Mostra-los pasos necesarios para dar ó contedor conectividade co exterior.
- 4.3: Comprobar que se pode facer login no mysql do contedor con root e co usuario normal **dende o anfitrión**, por exemplo empregando o [Mysql Workbench](https://dev.mysql.com/downloads/workbench/), ou o cli de mysql.
- 4.4: Mostrar cómo se faría un backup (ferramenta mysqldump), **introducindo o proceso** no mesmo contedor do servidor mysql, pero redirixindo a saída a un ficheiro no anfitrión.

---

**Evidencias de adquición de desempeños**: Pasos 1 ao 4 correctamente realizados segundo estes...

**Indicadores de logro**:  

- Entregar un documento* cas capturas de pantalla que mostren:
 - 1. Os pasos seguidos para levar a cabo a instalación de docker escollida no entorno  de traballo.
 - 2. O comando docker executado para obter a saída  "Ola Mundo!".
 - 3. Os comandos escollidos para crear un servidor de mysql 5.7 dentro dun docker cunha base de datos que reúna tódolos requisitos indicados.
 - 4. Os comandos necesarios crear un novo contedor de mysql,  dar conectividade co exterior ao servizo de mysql, e facer un backup da base de datos co ```mysqldump```.

\**Nota - Se o preferides, podedes entregar un screencast da consola, con ```asciinema.org```.

**Autoavaliación**: Revisa e autoavalia o teu traballo aplicando os indicadores de logro.

**Criterios de corrección**:

- Realizar a instalación correctamente, do docker engine no entorno de traballo (**4 puntos**).
- Executar o primeiro contedor de "Ola Mundo!" (**4 puntos**).
- Lanzar o contedor de mysql cas características indicadas (**16 puntos**).
 - A razón de **4 puntos** por cada apartado indicado correctamente.
- Agregarlle conectividade co exterior ao servizo de mysql e facer as comprobacións (**16 puntos**).
 - A razón de **4 puntos** por cada apartado indicado correctamente.
