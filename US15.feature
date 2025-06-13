Feature: Pausar rutina(s) cuando no hay nadie en casa
  Como propietario/inquilino,
  Quiero que la(s) rutina(s) se pausen cuando no haya nadie en la casa,
  Para evitar el consumo excesivo de energía

  Scenario:  
    Given que el usuario cuenta con sensor de presencia  
    When no haya ninguna persona en la vivienda  
    And hay rutina(s) en curso  
    Then el sistema debe pausarla y notificar al usuario de la aplicación

  Scenario:  
    Given que el sistema ha pausado una(s) rutina(s) por la ausencia de personas  
    When alguien regrese  
    And el horario de la rutina aún sea válida  
    Then el sistema debe reanudar automáticamente la acción de la rutina