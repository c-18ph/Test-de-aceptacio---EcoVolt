Feature: Crear una rutina con diferentes dispositivos
  Como propietario/inquilino,
  Quiero crear rutinas en un ecosistema de diferentes dispositivos,
  Para automatizar mi vivienda según mi necesidad.

  Scenario:  
    Given que el usuario entra a la sección crear rutina  
    When selecciona diferentes dispositivos en una misma rutina  
    And configura el horario para ejecutar la acción  
    Then el sistema debe guardar y ejecutar la acción de la rutina en el horario

  Scenario:  
    Given que el usuario ya cuenta con la rutina guardada  
    When se cumpla el horario  
    And todos los dispositivos estén disponibles  
    Then el sistema debe ejecutar la acción de todos los dispositivos