# Docker: contedores para todos
# Docker

> Docker, a pesar da sua curta vida como proxecto de software aberto, está a producir unha revolución no sector das tecnoloxías da información.

**De xeito similar a revolución que supoxo a adopción dos contedores de mercancías, ao estandarizar as características das caixas nas que se transportan e moven por todo o mundo todo tipo de materias,  o que permiten adaptar e optimizar as infraestructuras polas que se almacenan e desprazan, Docker estandariza o proceso de transporte de software.**

Dende o punto de vista dun administrador de sistemas, nos permite cambiar a maneira de "transportar" e despregar aplicacións. En vez de ter que recoller as especificacións e dependencias que precisa unha aplicación, e levar a cabo a instalación da mesma  en cada máquina e sistema operativo no que se vaia a aloxar, Docker nos permite definir un "contrato", un interfaz estandard, que separa o que vai dentro de ese contedor (a aplicación e as súas dependencias) do que vai fora, o  entorno onde se vai a aloxar ( o pc doutro desenvolvedor, o servidor físico da organización, os cluster de servidores virtuais na nube...).

Dende o punto de vista do desenvolvedor  da aplicación, Docker lle proporciona o poder de controlar de xeito sinxelo o software que precisa a súa aplicación para funcionar. El só se ten que preocupar de proporcionar un artefacto, unha caixa negra que opere con total autonomía dentro dun sistema operativo definido, para que o administrador poida coller esa caixa e testeala, monitorizala e aloxala dentro da súa infraestructura.

# A orixe de Docker

Docker naceu ao abeiro dunha empresa, na actualidade xa extinta (dotCloud Inc.), que tiña como obxectivo facilitar o despregue de aplicacións aos desenvolvedores, liberándoos de ter que preocuparse da infraestructura. Fundada no 2010, polo autor orixinal de Docker (Salomon Hykes), na actualidade xa non está operativa, pero nela xurdiu o xerme de construir unha ferramenta que permitise estandarizar e axilizar o despregue de aplicacións e servizos web,  permitindo **separar claramente as responsabilidades** do equipo de desenvolvemento, da responsabilidade do equipo de operacións, encargado de aloxar e manter a dispoñibilidade da aplicación.

Inspirados pola evolución que supuxo na industria do transporte a adopción dos contedores de mercancías, podemos ver [no seguinte video](https://www.youtube.com/watch?v=Q5POuMHxW-0&feature=youtu.be) unha das presentacións máis famosas que fixo o autor orixinal, cando a tecnoloxía aínda non tiña a tracción que ten na actualidade.

O máximo expoñente de este modelo de plataforma como servicio ([PaaS](https://azure.microsoft.com/es-es/overview/what-is-paas/)) era por aquel entón [Heroku](https://www.heroku.com/), da cal surxiron unha serie de ideas e boas prácticas, condensadas nun manifesto de 12 regras,  destinadas aos desenvolvedores de aplicacións, que facilitaran a adopción de este tipo de proveedores.

De este manifesto  bebe extensamente Docker, sendo a propia ferramenta de gran utilidade cara adoptar este conxunto de boas prácticas nos nosos proxectos de software.

**[The twelve factor app](https://12factor.net/es/)**

I. [Base de código](https://12factor.net/es/codebase): Usa unha única base de código da que levar o control de versións e múltiples despreges de este código.

II. [Dependencias](https://12factor.net/es/dependencies): Declara e illa explícitamente as dependencias.

III. [Configuración](https://12factor.net/es/config): Garda a configuración no entorno, non no código.

IV. [Backing services](https://12factor.net/es/backing-services): Trata los servicios que soportan a aplicación ("backing services") como recursos enchufables.

V. [Construir, distribuir, executar](https://12factor.net/es/build-release-run): Separa completamente a fase de construcción da fase de execución.

VI. [Procesos](https://12factor.net/es/processes): Executa as aplicacións como un ou máis procesos **sin estado**.

VII. [Asignación de portos](https://12factor.net/es/port-binding): Exporta servicios mediante portos de rede.

VIII. [Concurrencia](https://12factor.net/es/concurrency): Escala mediante o modelo de procesos, horizontalmente mellor que verticalmente.

IX. [Descartabilidade](https://12factor.net/es/disposability): Maximiza a robustez con arranques rápidos do teu servicio e paradas limpas.

X. [Similitude entre desenvolvemento e producción](https://12factor.net/es/dev-prod-parity): Manten os entornos (desenvolvemento, preproducción, producción...) tan semellantes como sexa posible.

XI. [Logs](https://12factor.net/es/logs): Trata os logs como un fluxo de eventos.

XII. [Administración de procesos](https://12factor.net/es/admin-processes): Corre as tarefas de xestión/administración como novos procesos do teu servicio, con unha única execución.

# Características de Docker

A pesar da competencia que existía no seu día entre os diferentes proveedores de PaaS (Heroku, Cloudfoundry, Redhat Openshift, ....), e as ferramentas que empregaban para construir o seu servizo, unhas de código aberto e outras propietarias,  Docker logrou estableceuse na actualidade como a principal motor de contedores debido a que :

- Facilita enormemente a xestión de contedores.
- Ofrece un sistema sinxelo de creación,  mantemento e distribución de imaxes de contedores. 
- Aporta ferramentas de orquestración propias (Docker Swarm), e integrase con  ferramentas de terceiros como Kubernetes.
- Esfórzase por manter unha serie de [estándares](https://opencontainers.org/) de conterización, que dan cabida a novos proxectos.

- Ligazóns de interese:
 - [Azure Docs: What is PaaS](https://azure.microsoft.com/es-es/overview/what-is-paas/)
 - [Heroku PaaS](https://www.heroku.com/)
 - [The Twelve factor app](https://12factor.net/es/)

## Algo

## Algo 2

### Algo 2-1