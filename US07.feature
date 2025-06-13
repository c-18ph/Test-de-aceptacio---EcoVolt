Feature: Edición de configuración de dispositivos

  Scenario: Modificar parámetros de un dispositivo
    Given el usuario accede a un dispositivo
    When selecciona “editar configuración”
    And modifica parámetros como horario de uso o sensibilidad
    Then los cambios deben guardarse y aplicarse al instante

  Scenario: Comportamiento reflejado tras cambios
    Given un parámetro fue modificado
    When el usuario revisa la actividad posterior
    Then el comportamiento del dispositivo refleja la nueva configuración