# US-SU-1.1: Crear un ticket
# Link: https://github.com/Gasppo/squad_2_is3_2022/issues/1

Feature: Se creo el ticket correctamente?
  Algunos empleados de la empresa desean crear un ticket para resolver un problema con el software

  Scenario Outline: Se creo el ticket correctamente o no
    Given el  "<producto>"
    And la "<version_producto>"
    And el "<nombre_creador_ticket>"
    And el "<correo>" del empleado
    And la "<empresa>"
    And la "<descripcion_del_problema>"
    And el "<area>"
    And el "<nivel_de_prioridad>"
    When yo creo el ticket
    Then deberia recibir "<respuesta>"

  Examples:
    | producto                            | respuesta |
    | Existente                           | Se creo correctamente      |
    | NoExistente                         | No se creo correctamente   |

    | version_producto                    | respuesta |
    | Existente                           | Se creo correctamente      |
    | NoExistente                         | No se creo correctamente   |

    | nombre_creador_ticket               | respuesta |
    | EmpleadoEmpresa                     | Se creo correctamente      |
    | NoEmpleado                          | No se creo correctamente   |

    | correo                              | respuesta |
    | CorreoDeEmpleado                    | Se creo correctamente      |
    | CualquierOtroCorreo                 | No se creo correctamente   |

    | Empresa                             | respuesta |
    | EmpresaCliente                      | Se creo correctamente      |
    | CualquierOtraEmpresa                | No se creo correctamente   |

    | descripcion_del_problema            | respuesta |
    | Existente                           | Se creo correctamente      |
    | Vacio                               | No se creo correctamente   |

    | area                                | respuesta |
    | AreaEmpresa                         | Se creo correctamente      |
    | CualquierOtraArea                   | No se creo correctamente   |

    | nivel_de_prioridad                  | respuesta |
    | Baja                                | Se creo correctamente      |
    | Media                               | Se creo correctamente      |
    | Alta                                | Se creo correctamente      |
    | Vacio                               | No se creo correctamente   |
