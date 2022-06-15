# US-SU-1.10: Rechazar un ticket
# Link: https://github.com/Gasppo/squad_2_is3_2022/issues/5

Feature: Se rechaza el ticket correctamente?
  Algunos empleados de la empresa desean rechazar el ticket para evitar tickets innecesarios
  
  Scenario Outline: Se rechazo el ticket correctamente o no
    Given un ticket
    When yo agrego "<comentario>" y lo rechazo
    Then deberia recibir "<respuesta>"

  Examples:
    | comentario               | respuesta |
    | Comentario               | Se rechazo correctamente      |
    | Vacio                    | No se rechazo correctamente   |
