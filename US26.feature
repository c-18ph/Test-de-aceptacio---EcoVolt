Feature: Reordenar los ambientes del hogar
    Como usuario de la aplicación EcoVolt
    Quiero poder reordenar los ambientes del hogar según mi preferencia
    Para visualizarlos en el orden que más me convenga

    Scenario: Guardar y mostrar el nuevo orden inmediatamente
    Given que el usuario está en la vista principal de ambientes
    When selecciona la opción “Reordenar”
    And arrastra los ambientes según su preferencia
    Then el sistema debe guardar el nuevo orden
    And mostrarlo de inmediato en la interfaz

    Scenario: Mantener el orden personalizado en una nueva sesión
    Given que el usuario ha reordenado sus ambientes
    When vuelve a ingresar a la app en otra sesión
    Then el sistema debe mantener el orden personalizado previamente guardado
