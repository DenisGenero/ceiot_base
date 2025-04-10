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
- **Mitigación:** [Disable or Remove Feature or Program](https://attack.mitre.org/mitigations/M1042/): deshabilitar el uso de servicios remotos no autorizados (como SSH o Telnet) a nivel de red utilizando políticas de firewall o listas de control de acceso (ACL), bloqueando por defecto las conexiones salientes hacia puertos comúnmente usados para control remoto. Esto impide que la Raspberry Pi reciba comandos remotos si no está registrada como un dispositivo autorizado.

### 5- Installation
- **Detección:** La detección se puede hacer mediante inspección de red para identificar dispositivos desconocidos conectados, por ejemplo con herramientas de escaneo ARP o mapeo de red (como Nmap o Fing). También se puede configurar el DHCP del router o servidor para alertar cuando aparece una nueva MAC address.
- **Mitigación:**  Aplicar [Networ Access Control](https://attack.mitre.org/mitigations/M1037/) filtrando dispositivos por MAC. Implementar control de acceso a nivel de red puede evitar que dispositivos no autorizados puedan conectarse físicamente a la red. Esto obliga a que cada equipo deba estar previamente registrado para obtener conectividad.

### 4- Exploitation
- **Detección:** Se recomienda que el equipo de informática realice inspecciones físicas periódicas (por ejemplo 1 vez al mes) en las instalaciones para identificar dispositivos no autorizados conectados a la red. Esto puede complementarse con un inventario activo de dispositivos, contrastado con registros de direcciones MAC, IPs asignadas y puertos de red utilizados.
- **Mitigación:** Aplicar [Limit Access to Resource Over Network](https://attack.mitre.org/mitigations/M1035/) ayuda a reducir el riesgo de que un dispositivo malicioso, acceda libremente a recursos sensibles. Esto puede implementarse mediante reglas estrictas en firewalls internos, segmentación de red, y políticas que impidan el acceso a servidores desde dispositivos no autorizados o ubicados en zonas no críticas.

### 3- Delivery
- **Detección:** Mediante cámaras de vigilancia instaladas en las zonas sensibles donde se aloja infraestructura crítica del sistema, como salas técnicas, gabinetes de red o sectores de servidores. El monitoreo en tiempo real, sumado al almacenamiento de grabaciones, permite identificar comportamientos sospechosos o la presencia de personas no autorizadas merodeando por estas áreas.
- **Mitigación:** Implementar un sistema de videovigilancia en los sectores críticos de infraestructura, con monitoreo constante o revisión periódica de las grabaciones.

### 2- Weaponization
- **Detección:** Para este paso se considera el contexto de que el atacante haga una [Compromise Infrastructure](https://attack.mitre.org/techniques/T1584/). Se puede detectar esta actividad mediante la supervisión de eventos relacionados con cambios no autorizados en la configuración de red como reglas de firewall o puertos abiertos inesperadamente.
- **Mitigación:** [Access Management](https://attack.mitre.org/mitigations/M0807/) Implementar un control físico y lógico sobre la infraestructura de red. Por ejemplo, limitar los puertos de red disponibles y controlar el acceso físico a áreas sensibles.

