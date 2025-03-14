# CiberKillChain - Ataque
## Alumno
Denis J. Genero
## Objetivos
- Sabotear el sistema para entorpecer su funcionamiento y favorecer el desarrollo de la competencia.

## Sistema victima
Consta de un servidor central dispuesto en el CENUR Litoral Norte (UdelaR) de la ciudad de Paysandú (Uruguay) que se conecta con una Raspberry Pi 3B y obtiene imágenes a partir de cámaras IP, en un rodeo lechero para estimar el consumo de alimento. El esquema se puede observar en la siguiente figura:

![Figura 1](/Imagenes/Figura1)

## Resolución
A continuación se describen los pasos del ataque.

### 1- Reconnaissance
- [Gather Victim Network Information](https://attack.mitre.org/techniques/T1592/): Recorro el CENUR Litoral Norte para conocer el lugar y tratar de ubicar donde se encuentra el servidor central.
- [Acquire Access](https://attack.mitre.org/techniques/T1650/): Me hago pasar por un estudiante para obtener acceso a la red.
- [Gather Victim Org. Information](https://attack.mitre.org/techniques/T1591/): Simulo estar distraído cerca del área de informática para escuchar conversaciones y recavar información.

### 2- Weaponization
- [Obtain Capabilities](https://attack.mitre.org/techniques/T1588/): Puedo descargar un software malicioso que sobrecargue el servidor.
- [Develop Capabilities](https://attack.mitre.org/techniques/T1587/): Puedo desarrolla una aplicación maliciosa para sobrecargar el servidor.
- [Stage Capabilities](https://attack.mitre.org/techniques/T1608/): Decido instalar el malware en una Raspberry Pi.
- [Compromise Infraestructure](https://attack.mitre.org/techniques/T1584/): Puedo alterar la configuración de la infraestructura de red, liberar un puerto y obtener acceso remoto.
- [Trusted Relationship](https://attack.mitre.org/techniques/T1199/): Puedo ganar confianza de algún miembro del área de informatica y extraer información y contraseñas.

### 3- Delivery
- Decido llevar la Raspberry Pi oculta en una mochila e ingresar a la institución.
- [Hardware Additions](https://attack.mitre.org/techniques/T1200/): Puedo colocar la Raspberry Pi en un lugar oculto dentro del esablecimiento.
- [Masquerading](https://attack.mitre.org/techniques/T1036/): Puedo camuflar a la Raspberry como un dispositivo legítimo y dejarlo dentro de la institución.
- Puedo conectar la Raspberry a la red eléctrica para darle alimentación.
- Puedo alimentar la Raspberry mediante baterías.

### 4- Exploitation
- La Raspberry Pi se conecta a la red de la institución.
- [Hide Artifacts](https://attack.mitre.org/techniques/T1564/): La Raspberry logra pasar desapercibida y nadie nota su presencia.

### 5-Installation
- [Command and Scripting Interpreter](https://attack.mitre.org/techniques/T1059/): La Raspberry Pi enciende y queda lista para operar.

### 6- Command & Control
- [External Remote Services](https://attack.mitre.org/techniques/T1133/): Puedo acceder remotamente a la Raspberry Pi.
- [Network Sniffing](https://attack.mitre.org/techniques/T1040/): Puedo monitorear la red para saber las horas pico de uso.
- [Process Injection](https://attack.mitre.org/techniques/T1055/): Decido inyectar el malware en los momentos clave para alterar el funcionamiento del servidor.


### 7- Actions on Objectives
- El malware se ejecuta y provoca caídas del servidor en momentos claves.
- El sistema no funciona adecuadamente y los clientes no están conformes.