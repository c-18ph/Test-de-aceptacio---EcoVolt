Feature: Control on/off de dispositivos desde la app

  Scenario: Encender o apagar desde la interfaz
    Given el usuario ha iniciado sesión en la app
    When accede al dispositivo
    And selecciona encender o apagar
    Then el dispositivo se enciende o apaga sin intervención física

  Scenario: Encender dispositivo desde app
    Given el dispositivo está apagado
    When el usuario selecciona encenderlo en la app
    Then el dispositivo debe encenderse sin demora