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
- [Gather Victim Network Information](https://attack.mitre.org/techniques/T1592/): Recorro el CENUR Litoral Norte para conocer el lugar y tratar de ubicar donde se encuentra el servidor central.
- [Acquire Access](https://attack.mitre.org/techniques/T1650/): Me hago pasar por un estudiante para obtener acceso a la red.
- [Gather Victim Org. Information](https://attack.mitre.org/techniques/T1591/): Simulo estar distraído cerca del área de informática para escuchar conversaciones y recavar información.

### 2- Weaponization
- [Obtain Capabilities](https://attack.mitre.org/techniques/T1588/): Puedo descargar un software malicioso que sobrecargue el servidor.
- [Develop Capabilities](https://attack.mitre.org/techniques/T1587/): Puedo desarrolla una aplicación maliciosa para sobrecargar el servidor.
- [Stage Capabilities](https://attack.mitre.org/techniques/T1608/): Decido instalar el malware en la Raspberry Pi.
- [Hardware Additions](https://attack.mitre.org/techniques/T1200/): Puedo colocar la Raspberry Pi en un lugar oculto para que se conecte a la red.
- [Compromise Infraestructure](https://attack.mitre.org/techniques/T1584/): Puedo alterar la configuración de la infraestructura de red, liberar un puerto y obtener acceso remoto.
- [Trusted Relationship](https://attack.mitre.org/techniques/T1199/): Puedo ganar confianza de algún miembro del área de informatica y extraer información y contraseñas.

### 3- Delivery

### 4- Exploitation

### 5-Installation

### 6- Command & Control

### 7- Actions on Objectives