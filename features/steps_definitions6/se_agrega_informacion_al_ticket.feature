# US-SU-1.5: Agregar informacion a un ticket
# Link: https://github.com/Gasppo/squad_2_is3_2022/issues/4

Feature: Se agrega informacion al ticket correctamente?
  Algunos empleados de la empresa desean agregar informacion al ticket para detallar el problema en profundidad
  
  Scenario Outline: Se agrego informacion al ticket correctamente o no
    Given un ticket
    When yo agrego "<informacion>"
    Then deberia recibir "<respuesta>"

  Examples:
    | informacion              | respuesta |
    | Informacion              | Se modifico correctamente      |
    | Vacio                    | No se modifico correctamente   |
