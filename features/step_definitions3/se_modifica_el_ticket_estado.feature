# US-SU-1.2: Modificar estado de un ticket 
# Link: https://github.com/Gasppo/squad_2_is3_2022/issues/2

Feature: Se modifico el estado del ticket correctamente?
  Algunos empleados de la empresa desean modificar un ticket para actualizar su estado, su prioridad o agregar comentarios
  
  Scenario Outline: Se modifico el ticket correctamente o no
    Given un ticket
    When yo cambio el estado por "<estado>"
    Then deberia recibir "<respuesta>"

  Examples:
    | estado                              | respuesta |
    | Abierto                             | Se modifico correctamente      |
    | Cerrado                             | Se modifico correctamente      |
    | En Analisis                         | Se modifico correctamente      |
    | Rechazado                           | Se modifico correctamente      |
    | Vacio                               | No se modifico correctamente   |
