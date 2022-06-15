# US-SU-1.2: Modificar comentario de un ticket 
# Link: https://github.com/Gasppo/squad_2_is3_2022/issues/2

Feature: Se modifico el comentario del ticket correctamente?
  Algunos empleados de la empresa desean modificar un ticket para actualizar su comentario
  
  Scenario Outline: Se modifico el ticket correctamente o no
    Given un ticket
    When yo agrego "<comentario>"
    Then deberia recibir "<respuesta>"

  Examples:
    | comentario                          | respuesta |
    | Comentario                          | Se modifico correctamente      |
    | Vacio                               | No se modifico correctamente   |
