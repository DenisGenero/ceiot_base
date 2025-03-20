# CiberKillChain - Ataque
## Alumno
Denis J. Genero
## Objetivos
- Sabotear el sistema para entorpecer su funcionamiento y favorecer el desarrollo de la competencia.

## Sistema victima
Consta de un servidor central dispuesto en el CENUR Litoral Norte (UdelaR) de la ciudad de Paysandú (Uruguay) que se conecta con una Raspberry Pi 3B y obtiene imágenes a partir de cámaras IP, en un rodeo lechero para estimar el consumo de alimento. El esquema se puede observar en la siguiente figura:

![Figura 1](Imagenes/Figura1.png)

## Resolución
A continuación se describen los pasos del ataque.

### 1- Reconnaissance
- [Gather Victim Network Information](https://attack.mitre.org/techniques/T1592/): Recorro las instalaciones del CENUR Litoral Norte con el objetivo de familiarizarme con el entorno y analizar posibles ubicaciones donde podría encontrarse el servidor central. Observo la infraestructura de la red, identifico posibles puntos de acceso y evalúo las medidas de seguridad implementadas.
- [Acquire Access](https://attack.mitre.org/techniques/T1650/): Me hago pasar por un estudiante para obtener acceso a la red de la institución. Esto puede implicar asistir a eventos abiertos, utilizar credenciales temporales o aprovechar puntos de conexión disponibles para estudiantes, como Wi-Fi público o laboratorios informáticos.
- [System Network Connections Discovery](https://attack.mitre.org/techniques/T1049/): Analizo las redes disponibles dentro de la institución para determinar cuántas existen y qué nivel de acceso tengo en cada una. Esto incluye identificar redes públicas y privadas, examinar direcciones IP asignadas, descubrir dispositivos conectados y evaluar posibles restricciones de seguridad.
- [Gather Victim Org. Information](https://attack.mitre.org/techniques/T1591/): Me acerco al área de informática y, sin llamar la atención, simulo estar distraído o realizando otra actividad mientras presto atención a conversaciones del personal. El objetivo es recopilar información relevante, como menciones sobre problemas técnicos, cambios en la infraestructura de red o posibles vulnerabilidades en el sistema.
- [Trusted Relationship](https://attack.mitre.org/techniques/T1199/): Busco establecer una relación de confianza con algún miembro del área de informática, mostrándome como alguien amigable y confiable. A través de interacciones casuales o colaboraciones, intento obtener información clave, como detalles sobre la configuración del sistema, acceso a credenciales o pistas sobre los protocolos de seguridad utilizados en la institución.

### 2- Weaponization
- [Obtain Capabilities](https://attack.mitre.org/techniques/T1588/): Puedo descargo un software malicioso diseñado para generar una sobrecarga en el servidor, afectando su rendimiento y estabilidad. Analizo diferentes herramientas disponibles en línea para seleccionar la más adecuada según el tipo de infraestructura y los protocolos de seguridad implementados en la red.
- [Develop Capabilities](https://attack.mitre.org/techniques/T1587/): Puedo desarrollar una aplicación maliciosa con el objetivo de saturar el servidor. Esto me permite personalizar su comportamiento, adaptar los métodos de ataque y evitar posibles detecciones por parte de los sistemas de seguridad de la institución.
- [Stage Capabilities](https://attack.mitre.org/techniques/T1608/): Para ejecutar el ataque de manera discreta, instalo el malware en una Raspberry Pi y la configuro para operar de forma autónoma dentro de la red. Esto reduce el riesgo de ser detectado y permite ejecutar el ataque de manera remota o programada.
- [Compromise Infraestructure](https://attack.mitre.org/techniques/T1584/): Puedo alterar la configuración de la infraestructura de red para facilitar el acceso al sistema. Esto puede incluir liberar un puerto bloqueado, modificar reglas de firewall o redirigir tráfico a través de un servidor intermediario, permitiendo un control remoto sobre la red comprometida.



### 3- Delivery
- Decido llevar la Raspberry Pi oculta en una mochila e ingresar a la institución.
- [Hardware Additions](https://attack.mitre.org/techniques/T1200/): Puedo colocar la Raspberry Pi en un lugar oculto dentro del esablecimiento.
- [Masquerading](https://attack.mitre.org/techniques/T1036/): Puedo camuflar a la Raspberry como un dispositivo legítimo y dejarlo dentro de la institución.
- Puedo conectar la Raspberry a la red eléctrica para darle alimentación.
- Puedo alimentar la Raspberry mediante baterías.

### 4- Exploitation
- [Hide Artifacts](https://attack.mitre.org/techniques/T1564/): La Raspberry logra pasar desapercibida y nadie nota su presencia.


### 5-Installation
- [Command and Scripting Interpreter](https://attack.mitre.org/techniques/T1059/): La Raspberry Pi enciende y queda lista para operar.
- [Valid Accounts](https://attack.mitre.org/techniques/T1078/): La Raspberry Pi se conecta a la red de la institución.

### 6- Command & Control
- [External Remote Services](https://attack.mitre.org/techniques/T1133/): Puedo acceder remotamente a la Raspberry Pi.
- [Network Sniffing](https://attack.mitre.org/techniques/T1040/): Puedo monitorear la red para saber las horas pico de uso.
- [Process Injection](https://attack.mitre.org/techniques/T1055/): Decido inyectar el malware en los momentos clave para alterar el funcionamiento del servidor.


### 7- Actions on Objectives
- [Remote Service Session Hijacking](https://attack.mitre.org/techniques/T1563/): El malware se ejecuta y provoca caídas del servidor en momentos claves.
- El sistema no funciona adecuadamente y los clientes no están conformes.
- [Internal Spearphishing](https://attack.mitre.org/techniques/T1534/): Aprovecho la situación y sustraigo información de los clientes para favorecer la competencia.