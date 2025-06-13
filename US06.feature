Feature: Asignación de dispositivos a habitaciones

  Scenario: Asignar dispositivo a una habitación
    Given el usuario ha añadido dispositivos
    When entra a la opción de gestión por espacios
    And selecciona una habitación
    Then debe poder asignar o mover dispositivos a esa zona

  Scenario: Visualizar consumo agrupado por habitación
    Given un dispositivo está en una habitación
    When el usuario visualiza el consumo por espacio
    Then el sistema muestra los datos agrupados correctamente por zona