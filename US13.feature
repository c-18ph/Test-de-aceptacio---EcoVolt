Feature: Programar horario de encendido/apagado de dispositivos
  Como usuario,
  Quiero poder programar horarios para encender o apagar mis dispositivos,
  Para automatizar su funcionamiento sin intervención manual.

  Scenario:  
    Given que el usuario ha iniciado sesión en la app  
    When accede a los ajustes de un dispositivo  
    And selecciona el modo automático o manual  
    Then el dispositivo debe cambiar al modo seleccionado

  Scenario:  
    Given que el dispositivo está en modo automático  
    When el usuario cambia a modo manual  
    And el usuario comienza a controlar el dispositivo manualmente  
    Then el dispositivo debe operar según las acciones directas del usuario