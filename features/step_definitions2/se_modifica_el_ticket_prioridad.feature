# US-SU-1.2: Modificar nivel de prioridad de un ticket 
# Link: https://github.com/Gasppo/squad_2_is3_2022/issues/2

Feature: Se modifico el nivel de prioridad del ticket correctamente?
  Algunos empleados de la empresa desean modificar un ticket para actualizar su prioridad
  
  Scenario Outline: Se modifico el ticket correctamente o no
    Given un ticket
    When yo cambio la prioridad por "<nivel_de_prioridad>"
    Then deberia recibir "<respuesta>"

  Examples:
    | nivel_de_prioridad                  | respuesta |
    | Baja                                | Se modifico correctamente      |
    | Media                               | Se modifico correctamente      |
    | Alta                                | Se modifico correctamente      |
    | Vacio                               | No se modifico correctamente   |
