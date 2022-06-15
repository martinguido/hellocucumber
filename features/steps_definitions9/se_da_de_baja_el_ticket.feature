# US-SU-1.12: Dar de baja un ticket
# Link: https://github.com/Gasppo/squad_2_is3_2022/issues/7

Feature: Se da de baja el ticket correctamente?
  Algunos empleados de la empresa desean dar de baja el ticket para marcar que un problema fue resuelto y que no necesita mas atencion
  
  Scenario Outline: Se da de baja el ticket correctamente o no
    Given un ticket
    When yo agrego "<comentario>" y lo doy de baja
    Then deberia recibir "<respuesta>"

  Examples:
    | comentario               | respuesta |
    | Finalizado               | Se da de baja correctamente      |
    | Vacio                    | No se da de baja correctamente   |

