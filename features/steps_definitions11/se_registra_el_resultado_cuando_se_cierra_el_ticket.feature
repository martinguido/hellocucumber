# US-SU-3: Registrar el resultado cuando se cierra un ticket
# Link: https://github.com/Gasppo/squad_2_is3_2022/issues/9

Feature: Se registra el resultado correctamente?
  Algunos empleados del area de soporte de la empresa dar el feedback para saber si se necesitan hacer mejoras
  
  Scenario Outline: Se registra el resultado del ticket correctamente o no
    Given un ticket cerrado
    When yo agrego "<resultado>"
    Then deberia recibir "<respuesta>"

  Examples:
    | resultado               | respuesta |
    | Resuelto                | Se registro el resultado correctamente     |
    | NoResuelto              | Se registro el resultado correctamente     |    
    | Vacio                   | No se registro el resultado correctamente     |
