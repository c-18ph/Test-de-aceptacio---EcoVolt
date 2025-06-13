Feature: Visualización de consumo por ambiente
    Como usuario de la aplicación EcoVolt
    Quiero visualizar el consumo energético de cada ambiente
    Para tomar decisiones informadas sobre el uso de mis dispositivos

    Scenario: Mostrar gráfico de barras con el consumo diario del ambiente "Sala"
    Given que el usuario registrado ha iniciado sesión correctamente
    When accede a la opción “Consumo por ambiente”
    And elige “Sala”
    And la plataforma recopila el consumo generado por todos los dispositivos ubicados en la sala
    Then despliega un gráfico de barras con el consumo total diario del salón

    Scenario: Mostrar mensaje de error por falla de conectividad al consultar el ambiente "Cocina"
    Given que el usuario registrado ha iniciado sesión correctamente
    When accede a la opción “Consumo por ambiente”
    And elige “Cocina”
    And ocurre un error debido a la conectividad a internet
    Then la plataforma muestra el mensaje de error “No se pudo cargar el consumo por ambiente. Verifique su conexión a internet”
