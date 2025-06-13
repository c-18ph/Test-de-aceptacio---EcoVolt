Feature: Crear ambientes personalizados en el hogar
    Como usuario de la aplicación EcoVolt
    Quiero poder crear y personalizar ambientes
    Para organizar mejor mis dispositivos inteligentes según el entorno del hogar

    Scenario: Crear un nuevo ambiente personalizado
    Given que el usuario accede a la sección de ambientes
    When selecciona “Crear nuevo ambiente”
    And asigna un nombre y un icono al ambiente
    Then el sistema debe guardar el nuevo ambiente
    And mostrarlo en la interfaz principal

    Scenario: Editar nombre o icono de un ambiente existente
    Given que el usuario ya ha creado varios ambientes
    When desea editar el nombre o el icono de uno
    And confirma los cambios
    Then el sistema debe actualizar el ambiente con los nuevos datos
    And mantener los dispositivos previamente asignados sin cambios