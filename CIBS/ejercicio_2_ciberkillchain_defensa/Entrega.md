# Ejercicio CiberKillChain - Defensa

## Alumno

Denis J. Genero

## Enunciado

Desarrollar la defensa en función del ataque planteado en orden inverso, mencionar una medida de detección y una de mitigación, sólo lo más importante, considerar recursos limitados. No es una respuesta a un incidente, hay que detectar el ataque independientemente de la etapa.


## Resolución

### 7- Actions on Objectives
- **Detección:** Se puede implementar un sistema de monitoreo de sesiones activas en el servidor para detectar accesos anómalos. Esto se puede hacer con herramientas como [SIEM](https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_informaci%C3%B3n_y_eventos_de_seguridad) (Security Information and Event Management) o logs de autenticación centralizados. Se deben revisar intentos de acceso fuera del horario habitual, sesiones concurrentes desde ubicaciones distintas y comandos sospechosos ejecutados en el servidor.
- **Mitigación:** Para evitar el secuestro de sesiones y la ejecución de malware en el servidor, se podría aplicar autenticación multifactor (MFA) para accesos administrativos, junto con una segmentación estricta de privilegios ([principio de privilegio mínimo](https://www.ibm.com/docs/es/aix/7.3?topic=privileges-least-privilege-principle)). Solo el personal autorizado debe tener acceso a funciones críticas, y los permisos deberían revisarse periódicamente.

### 6- Command & Control
- **Detección:** Para identificar conexiones remotas no autorizadas, se debe analizar el tráfico saliente de la red. Un firewall con reglas de [inspección profunda de paquetes (DPI)](https://es.wikipedia.org/wiki/Inspecci%C3%B3n_profunda_de_paquete) puede detectar patrones de comunicación anómalos. También se pueden usar [listas de control de acceso (ACLs)](https://es.wikipedia.org/wiki/Lista_de_control_de_acceso) para registrar intentos de conexión a servidores externos sospechosos.
- **Mitigación:** Se deben bloquear conexiones a direcciones IP sospechosas mediante un filtrado de DNS y listas negras de dominios conocidos por ser utilizados en ataques. También se debe restringir el uso de herramientas de administración remota solo a direcciones IP internas confiables.

### 5- Installation
- **Detección:** Se deben realizar escaneos periódicos en la red para identificar dispositivos desconocidos que usen credenciales internas. Esto se puede hacer con herramientas de detección de dispositivos como [NAC (Network Access Control)](https://es.wikipedia.org/wiki/Control_de_acceso_a_red) o un [IDS (Intrusion Detection System)](https://es.wikipedia.org/wiki/Sistema_de_detecci%C3%B3n_de_intrusos) configurado para alertar sobre dispositivos no autorizados.
- **Mitigación:** Se debe implementar una lista blanca de dispositivos autorizados en la red. Además, se pueden desactivar físicamente puertos de red no utilizados para evitar que dispositivos externos sean conectados sin autorización.

### 4- Exploitation
- **Detección:** Se deben revisar los logs del sistema en busca de comandos ejecutados desde dispositivos no autorizados. Un SIEM puede ayudar a identificar actividades sospechosas, como intentos de ejecución de scripts inusuales. También se debe monitorear el uso de herramientas de administración remota dentro de la red.
- **Mitigación:** Se deben establecer políticas de ejecución restringida mediante herramientas como [AppLocker](https://learn.microsoft.com/es-es/windows/security/application-security/application-control/app-control-for-business/applocker/applocker-overview) (Windows) o [SELinux](https://www.ibm.com/docs/es/db2/11.1.0?topic=security-selinux), evitando que software no autorizado pueda ejecutarse en los servidores. Además, se podrían ejecutar servicios críticos en [entornos aislados (sandboxing)](https://en.wikipedia.org/wiki/Sandbox_(computer_security)) para minimizar el impacto de ataques.

