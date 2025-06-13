Feature: Visualización de consumo por dispositivo
    Como usuario de la aplicación EcoVolt
    Quiero ver el consumo energético detallado de cada dispositivo
    Para monitorear su uso y optimizar el consumo energético en mi hogar

    Scenario: Mostrar gráfico lineal con el consumo hora por hora del dispositivo
    Given que el usuario ha iniciado sesión correctamente
    When se dirige al botón de “Dispositivos”
    And selecciona el dispositivo “Aire Acondicionado” en la lista de dispositivos
    And la app procesa los datos de consumo hora por hora del dispositivo
    Then se muestra un gráfico lineal con el consumo detallado del dispositivo consultado

    Scenario: Mostrar mensaje de error por fallo en la conexión al consultar el dispositivo
    Given que el usuario ha iniciado sesión correctamente
    When se dirige al botón de “Dispositivos”
    And selecciona el dispositivo “Aire Acondicionado” en la lista de dispositivos
    And ocurre un error de conexión con el servicio de datos
    Then se muestra un mensaje de error “Error al obtener los datos de consumo. Por favor inténtelo nuevamente”
