# Ejercicio CiberKillChain - Defensa

## Alumno

Denis J. Genero

## Enunciado

Desarrollar la defensa en función del ataque planteado en orden inverso, mencionar una medida de detección y una de mitigación, sólo lo más importante, considerar recursos limitados. No es una respuesta a un incidente, hay que detectar el ataque independientemente de la etapa.


## Resolución

### 7- Actions on Objectives
- **Detección:** Mediante la supervisión continua del uso de CPU, memoria y ancho de banda del servidor, junto con el análisis del tráfico interno para identificar dispositivos que generan flujos anómalos o excesivos. Para esto se pueden utilizar herramientas como sistemas de detección de intrusos en la red (NIDS). Además, se pueden generar alertas automáticas si los niveles de consumo de recursos exceden ciertos umbrales preestablecidos.
- **Mitigación:** implementar [Network segmentation](https://attack.mitre.org/mitigations/M1030/) en la red para aislar los dispositivos no críticos del servidor, evitando el acceso directo entre ellos.

### 6- Command & Control
- **Detección:** Se puede detectar el uso indebido de servicios remotos mediante la revisión de logs de autenticación y conexiones entrantes a la Raspberry Pi. Existen Herramientas como Fail2Ban o Wazuh que pueden analizar intentos de conexión sospechosos, como múltiples intentos fallidos, accesos desde direcciones IP no autorizadas o fuera del horario habitual. Además, es útil el monitoreo del tráfico de red para identificar conexiones persistentes o inusuales hacia servicios como SSH.
- **Mitigación:** [Disable or Remove Feature or Program](https://attack.mitre.org/mitigations/M1042/): deshabilitar el uso de servicios remotos no autorizados (como Telnet), permitir conectividad por SSH con clave (públicas y privadas) desabilitando el acceso con contraseña. 

### 5- Installation
- **Detección:** La detección se puede hacer mediante inspección de red para identificar dispositivos desconocidos conectados, por ejemplo con herramientas de escaneo ARP o mapeo de red (como Nmap o Fing). También se puede configurar el DHCP del router o servidor para alertar cuando aparece una nueva MAC address.
- **Mitigación:**  Aplicar [Network Access Control](https://attack.mitre.org/mitigations/M1037/) mediante la integración de un servidor RADIUS. Esta medida obliga a que cada dispositivo se autentique con credenciales válidas antes de obtener acceso a la red. Es una alternativa más segura que el filtrado por MAC, ya que previene conexiones no autorizadas incluso si se falsifica una dirección MAC.

### 4- Exploitation
- **Detección:** Se recomienda que el equipo de informática realice inspecciones físicas periódicas (por ejemplo 1 vez al mes) en las instalaciones para identificar dispositivos no autorizados conectados a la red. Esto puede complementarse con un inventario activo de dispositivos, contrastado con registros de direcciones MAC, IPs asignadas y puertos de red utilizados.
- **Mitigación:** Aplicar [Limit Access to Resource Over Network](https://attack.mitre.org/mitigations/M1035/) ayuda a reducir el riesgo de que un dispositivo malicioso, acceda libremente a recursos sensibles. Esto puede implementarse mediante reglas estrictas en firewalls internos, segmentación de red, y políticas que impidan el acceso a servidores desde dispositivos no autorizados o ubicados en zonas no críticas.

### 3- Delivery
- **Detección:** Mediante cámaras de vigilancia instaladas en las zonas sensibles donde se aloja infraestructura crítica del sistema, como salas técnicas, gabinetes de red o sectores de servidores. El monitoreo en tiempo real, sumado al almacenamiento de grabaciones, permite identificar comportamientos sospechosos o la presencia de personas no autorizadas merodeando por estas áreas.
- **Mitigación:** Implementar un sistema de videovigilancia en los sectores críticos de infraestructura, con monitoreo constante o revisión periódica de las grabaciones.

### 2- Weaponization
- **Detección:** Para este paso se considera el contexto de que el atacante haga una [Compromise Infrastructure](https://attack.mitre.org/techniques/T1584/). Se puede detectar esta actividad mediante la supervisión de eventos relacionados con cambios no autorizados en la configuración de red como reglas de firewall o puertos abiertos inesperadamente.
- **Mitigación:** [Access Management](https://attack.mitre.org/mitigations/M0807/) Implementar un control físico y lógico sobre la infraestructura de red. Por ejemplo, limitar los puertos de red disponibles y controlar el acceso físico a áreas sensibles.

### 1- Reconnaissance
- **Detección:** Personal de seguridad/portería puede reportar personas extrañas en lugar poco transitados, personal de informática podría detectar individuos que no pertenecen al personal técnico haciendo preguntas específicas sobre la infraestructura o el funcionamiento del sistema. El uso de cámaras de seguridad en áreas sensibles también permite detectar patrones de merodeo o la presencia repetida de una misma persona cerca de sectores técnicos. Además, es importante que el personal esté entrenado para identificar intentos de ingeniería social y reportar cualquier interacción inusual.
- **Mitigación:** Implementar [Mechanical Protection Layers](https://attack.mitre.org/mitigations/M0805/) mediante un sistema de control de acceso físico, como tarjetas de identificación, para restringir el ingreso solo a personas debidamente autorizadas. Limitar las conversaciones técnicas a espacios cerrados y controlados, evitando compartir detalles sensibles en áreas públicas. Además, es fundamental concientizar y capacitar de forma continua al personal, asegurando que estén actualizados sobre nuevas técnicas de ingeniería social y ciberataques.
