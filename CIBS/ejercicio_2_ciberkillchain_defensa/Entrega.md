# Ejercicio CiberKillChain - Defensa

## Alumno

Denis J. Genero

## Enunciado

Desarrollar la defensa en función del ataque planteado en orden inverso, mencionar una medida de detección y una de mitigación, sólo lo más importante, considerar recursos limitados. No es una respuesta a un incidente, hay que detectar el ataque independientemente de la etapa.


## Resolución

### 7- Actions on Objectives
- **Detección:** Mediante la supervisión continua del uso de CPU, memoria y ancho de banda del servidor, junto con el análisis del tráfico interno para identificar dispositivos que generan flujos anómalos o excesivos. Para esto se pueden utilizar herramientas como sistemas de detección de intrusos en la red (NIDS). Además, se pueden generar alertas automáticas si los niveles de consumo de recursos exceden ciertos umbrales durante períodos anómalos.
- **Mitigación:** implementar [Network segmentation](https://attack.mitre.org/mitigations/M1030/) en la red para aislar los dispositivos no críticos del servidor, evitando el acceso directo entre ellos.
