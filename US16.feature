Feature: Programar rutinas para días específicos
    Como usuario de la aplicación EcoVolt
    Quiero programar rutinas en días específicos de la semana
    Para automatizar mis dispositivos según mis hábitos diarios

    Scenario: Crear rutina para días específicos
    Given que el usuario entra a la sección "Crear rutina"
    When selecciona días específicos
    And define los horarios y las acciones correspondientes
    Then el sistema debe guardar la rutina
    And ejecutarla automáticamente en los días programados

    Scenario: Ejecutar rutina del día específico
    Given que el usuario tiene creadas diferentes rutinas por cada día
    When es el día específico en la noche
    And se cumple la hora programada para la rutina de ese día
    Then el sistema debe ejecutar automáticamente la rutina programada para ese momento
