Feature: Visualización del estado en tiempo real

  Scenario: Ver estado actual del dispositivo
    Given el usuario ha iniciado sesión en la app
    When accede a la sección de dispositivos
    And visualiza los estados de los dispositivos
    Then el estado se refleja correctamente (activo o inactivo)

  Scenario: Estado actualizado automáticamente
    Given el estado del dispositivo cambia
    When el usuario accede a la app
    And el estado del dispositivo ha cambiado
    Then el estado se actualiza en tiempo real