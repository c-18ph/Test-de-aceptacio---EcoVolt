Feature: Cambiar modo de funcionamiento de un dispositivo
  Como usuario,
  Quiero poder cambiar entre los modos automático y manual en mis dispositivos,
  Para tener control flexible según mis necesidades.

  Scenario: Cambiar el modo de funcionamiento de un dispositivo
    Given el usuario ha iniciado sesión en la app
    When accede a los ajustes de un dispositivo
    And selecciona el modo automático o manual
    Then el dispositivo debe cambiar al modo seleccionado

  Scenario: Controlar manualmente un dispositivo después de cambiar de modo
    Given el dispositivo está en modo automático
    When el usuario cambia a modo manual
    And el usuario comienza a controlar el dispositivo manualmente
    Then el dispositivo debe operar según las acciones directas del usuario