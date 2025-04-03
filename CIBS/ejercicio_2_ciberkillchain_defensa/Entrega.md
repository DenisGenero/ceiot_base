# Ejercicio CiberKillChain - Defensa

## Alumno

Denis J. Genero

## Enunciado

Desarrollar la defensa en función del ataque planteado en orden inverso, mencionar una medida de detección y una de mitigación, sólo lo más importante, considerar recursos limitados. No es una respuesta a un incidente, hay que detectar el ataque independientemente de la etapa.


## Resolución

### 1- Actions on Objectives
- **Detección:** Se debe puede un sistema de monitoreo de sesiones activas en el servidor para detectar accesos anómalos. Esto se puede hacer con herramientas como [SIEM](https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_informaci%C3%B3n_y_eventos_de_seguridad) (Security Information and Event Management) o logs de autenticación centralizados. Se deben revisar intentos de acceso fuera del horario habitual, sesiones concurrentes desde ubicaciones distintas y comandos sospechosos ejecutados en el servidor.

- **Mitigación:** Para evitar el secuestro de sesiones y la ejecución de malware en el servidor, se podría aplicar autenticación multifactor (MFA) para accesos administrativos, junto con una segmentación estricta de privilegios (principio de menor privilegio). Solo el personal autorizado debe tener acceso a funciones críticas, y los permisos deberían revisarse periódicamente.

### 6- Command & Control
- **Detección:** Para identificar conexiones remotas no autorizadas, se debe analizar el tráfico saliente de la red. Un firewall con reglas de [inspección profunda de paquetes (DPI)](https://es.wikipedia.org/wiki/Inspecci%C3%B3n_profunda_de_paquete) puede detectar patrones de comunicación anómalos. También se pueden usar [listas de control de acceso (ACLs)](https://es.wikipedia.org/wiki/Lista_de_control_de_acceso) para registrar intentos de conexión a servidores externos sospechosos.
