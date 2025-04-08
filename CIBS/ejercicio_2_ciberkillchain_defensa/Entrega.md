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