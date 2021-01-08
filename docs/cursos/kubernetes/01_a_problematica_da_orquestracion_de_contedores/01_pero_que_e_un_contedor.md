# Pero, ¿qué é un contedor?

> Un contedor é unha [técnica de virtualización a nivel de sistema operativo](http://en.wikipedia.org/wiki/Operating-system-level_virtualization) que illa un proceso, ou grupo de procesos, ofrecéndolles un contexto de execución “completo”. Se entendo por contexto, ou entorno de execución, o conxunto de recursos (PIDs, red, sockets, puntos de montaje…) que lle son relevantes ao proceso.

Dentro do mundo Linux que é co tipo de contedores cos que vamos a traballar, un contedor está baseado nas tecnoloxías de namespaces e cgroups, as cais permiten  "separar" os procesos que corren dentro do contedor, do resto do sistema.

![Container](./../_media/01_a_problematica_da_orquestracion_de_contedores/contedor.png)


A medio camiño entre o chroot e as solucións del virtualización completas (KVM, VirtualBox, VMWare, Xen) o contedor no incurre no custo de virtualizar o hardware ou o kernel do SO ofrecendo, así e todo, un nivel de control e illamento moi superior ao do chroot.

O contedor é moito máis rápido en ser aprovisionado que a máquina virtual (VM), non precisa arrancar unha emulación de dispositivos nin o núcleo do sistema operativo, a costa dun nivel de illamento menor: procesos en distintos contedores comparten o mismo kernel.
