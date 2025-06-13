Feature: Pausar rutina(s) cuando no hay nadie en casa
    Como usuario de la aplicación EcoVolt
    Quiero que el sistema pause automáticamente las rutinas cuando no haya nadie en casa
    Para evitar un consumo innecesario de energía

    Scenario: Pausar rutina y notificar al usuario cuando no hay nadie en la vivienda
    Given que el usuario cuenta con sensor de presencia
    When no haya ninguna persona en la vivienda
    And hay rutina(s) en curso
    Then el sistema debe pausar la(s) rutina(s)
    And notificar al usuario mediante la aplicación

    Scenario: Reanudar rutina automáticamente cuando alguien regresa
    Given que el sistema ha pausado una(s) rutina(s) por la ausencia de personas
    When alguien regrese a la vivienda
    And el horario de la rutina aún sea válido
    Then el sistema debe reanudar automáticamente la acción de la rutina
