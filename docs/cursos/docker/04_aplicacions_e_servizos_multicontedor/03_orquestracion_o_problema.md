# Orquestración: o problema

## O paradigma da conterización

A estas alturas do curso xa imos comprendendo porqué os containers son un cambio de paradigma no mundo dos sistemas, comparable ó que foi o da virtualización de máquinas.

- Gracias ós containers podemos illar un proceso e as súas dependencias nunha unidade que se pode arrancar/parar en cuestión de segundos.
- O custo da containerización en termos de CPU/Memoria é totalmente insignificante.
- Podemos expresar cómo se constrúe unha imaxe en código (Dockerfile) o que presenta importantísimas [vantaxes](https://en.wikipedia.org/wiki/Infrastructure_as_code).
- A posibilidade de crear infraestructuras baseadas en micro-servicios ábrese para todo o mundo.

Como vemos, a idea é a de romper o noso sistema en unidades funcionais pequenas e manexables que se comunican entre elas para facer un traballo máis grande.

Un simil ó que se recorre moitas veces é ó da programación orientada a obxectos:

- Igual que na POO temos clases e instancias, na conterización temos imaxes e obxectos. 
- A idea clave é encapsular funcionalidades en unidades independientes que falan entre sí mediante paso de mensaxes. 
- A evolución do sistema faise mediante a extensión/creación de novas clases e obxectos non mediante a modificación dos existentes. 

Polo tanto, a conterización introduce un novo paradigma de diseño de aplicacións e infraestructuras no que:

- O sistema se fragmenta en unidades moi pequenas, sendo o bloque mínimo de construcción **o contedor**.
- Cada unidade ten unha funcionalidade concreta e ben definida ([Separación de intereses](https://en.wikipedia.org/wiki/Separation_of_concerns)).
- Acadando esta modularidade, as diferentes partes pódense ver como **microservicios** que expoñen una interface clara para comunicarse e que traballan conxuntamente para asegura-lo cumprimento dos obxectivos do sistema como entidade. 
- Ademáis as nosas aplicación son por fin **escalables horizontalmente**, engandindo novas instancias (containers) podemos aumenta-la potencia da nosa aplicación sen necesidade de recurrir á gaiola do **escalado vertical**.

## O problema do paradigma de orquestración

Vale, agora temos claro que hai que romper todo en unidades pequenas que se comunican entre sí. Pero, cómo facemos iso?

Imos comenzar conha simple aplicación en Php dentro dun container:

![Container](./../_media/01_a_problematica_da_orquestracion_de_contedores/container_standalonoe.png)

A nosa aplicación quere ter **estado**. A solución obvia é agregar unha base de datos dentro do container:

![Container](./../_media/01_a_problematica_da_orquestracion_de_contedores/mega_container.png)

Isto, a pesar de qué sería unha solución obvia, é un horror e unha ruptura do paradigma da containerización:

- O container non ten unha única preocupación, ten dúas (xestión de bbdd e aplicación en Php).
- O cambio na bbdd ou na aplicación implica cambiar o resto de unidades.
- Introducimos dependencias do software de Mysql con respectoSeparación de intereses ó Php e viceversa.

O problema sería peor se queremos, por exemplo, engadir soporte para SSL, un servidor web, soporte para métricas e logs.... O noso container crecería e crecería, polo que non amañariamos ningún dos problemas que queremos resolver o por enriba perderíamos as vantaxes da containerización. 

A solución axeitada sería esta:

![Container](./../_media/01_a_problematica_da_orquestracion_de_contedores/container_bbdd.png)

Agora temos dúas unidades independentes en dous containers. Podemos modificar unha sen afecta-la outra. As preocupacións están correctamente separadas. 

Neste momento, os nosos containers poden ademáis **escalar**, basta con engadir novos containers de aplicación se é necesario:

![Container](./../_media/01_a_problematica_da_orquestracion_de_contedores/escalado_container.png)

E, por suposto, podemos engadir os servicios auxiliares que creamos convintes, sen necesidade de modifica-los containers que xa temos (**encapsulación**).

![Container](./../_media/01_a_problematica_da_orquestracion_de_contedores/escalado_funcional.png)

Como podemos ver, a nosa aplicación **crece engandindo novas unidades funcionais**, **non modificando as existentes**. Esto aporta as vantaxes das que xa falaramos na sección previa.

Pero, xorden preguntas:

- Cómo coñece o noso container de Php a dirección e o porto no que escoita o Mysql?
- Cómo facemos para parar/arrincar todos os containers de vez?
- Se un container cae e o levantalo cambiou de Ip cómo o sabe o resto?
- Cómo inxectamos configuracións comúns a tódolos containers?

> A estas e outras moitas preguntas trata de dar resposta **a orquestración de containers**.

# Kubernetes: O estándar de facto

![Container](./../_media/01_a_problematica_da_orquestracion_de_contedores/kubernetes.jpg)

Orixinalmente desenrolado por Google, como unha nova [versión aberta](https://github.com/kubernetes/kubernetes) do seu proxecto Borg ([Borg project](https://kubernetes.io/blog/2015/04/borg-predecessor-to-kubernetes/)) pero enfocada na xestión de contedores Docker, estase a convertir na ferramenta de referencia para a orquestación de contedores. E o proxecto principal sobre o que se creou a [Cloud Native Computing Foundation](https://www.cncf.io/), a cal está respaldada polos principais actores tecnolóxicos actuais tales coma Google, Amazon Web Services (AWS), Microsoft, IBM, Intel, Cisco, e RedHat.

Kubernetes continua a gañar en popularidade gracias tamén a cultura DevOps e os seus adeptos, xa que nos permite dispoñer dunha plataforma-como-servicio (PaaS) na nosa propia infraestructura, que ademais crea unha abstracción da capa de harware para permitir que os desenvolvedores se centren en evolucionar as aplicacións da organización, en vez de configurar máquinas.  Ademáis é extremadamente portable, xa que corre en [Amazon Web Services](https://aws.amazon.com/) (AWS), [Microsoft Azure](https://azure.microsoft.com/en-us/), [Google Cloud Platform](https://cloud.google.com/) (GCP), [DigitalOcean](https://www.digitalocean.com/products/kubernetes/),... e por suposto nunha instalación on-premise da propia organización.

Ademáis nos permite mover cargas de traballo entre diferentes proveedores sen ter que refacer a aplicación ou redefinir a infraestructura, o cal permite ás organizacións estandarizarse nunha plataforma e evitar atarse a un proveedor (vendor lock-in).
