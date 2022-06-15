# US-SU-1.4: Modificar la asignación de un ticket
# Link: https://github.com/Gasppo/squad_2_is3_2022/issues/3

Feature: Se modifico el nivel de prioridad del ticket correctamente?
  Algunos empleados del area de soporte de la empresa desean modificar la asignacion de un ticket para cambiar el responsable de su solucion
  
  Scenario Outline: Se modifico la asignacion de un ticket correctamente o no
    Given un ticket
    When yo cambio el "<asignado>"
    Then deberia recibir "<respuesta>"

  Examples:
    | asignado                 | respuesta |
    | EmpleadoEmpresa          | Se modifico correctamente      |
    | Vacio                    | No se modifico correctamente   |
