# US-SU-2: Registrar el feedback cuando se cierra un ticket
# Link: https://github.com/Gasppo/squad_2_is3_2022/issues/8

Feature: Se registra el feedback correctamente?
  Algunos empleados del area de soporte de la empresa dar el feedback para saber si se necesitan hacer mejoras
  
  Scenario Outline: Se registra el feedback del ticket correctamente o no
    Given un ticket cerrado
    When yo agrego "<feedback>"
    Then deberia recibir "<respuesta>"

  Examples:
    | feedback               | respuesta |
    | Feedback               | Se registro el feedback correctamente      |
    | Vacio                  | No se registro el feedback correctamente   |

