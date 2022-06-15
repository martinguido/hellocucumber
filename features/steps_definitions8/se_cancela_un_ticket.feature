# US-SU-1.11: Cancelar un ticket
# Link: https://github.com/Gasppo/squad_2_is3_2022/issues/6

Feature: Se cancela el ticket correctamente?
  Algunos empleados de la empresa desean cancelar el ticket para marcar que no tiene nada a solucionar
  
  Scenario Outline: Se cancelo el ticket correctamente o no
    Given un ticket
    When yo agrego "<comentario>" y lo cancelo
    Then deberia recibir "<respuesta>"

  Examples:
    | comentario               | respuesta |
    | Comentario               | Se cancelo correctamente      |
    | Vacio                    | No se cancelo correctamente   |

