Feature: Añadir nuevo dispositivo inteligente
  Como usuario de EcoVolt
  Quiero añadir un nuevo dispositivo IoT a mi red doméstica
  Para poder gestionarlo desde la aplicación y mejorar el control energético en mi hogar

  Scenario: Vinculación exitosa de un nuevo dispositivo
    Given el usuario desea añadir un dispositivo
    When accede a la opción “Añadir dispositivo” en la app
    And selecciona el tipo de dispositivo
    Then debe poder vincularlo correctamente y verlo en su lista de dispositivos activos

  Scenario: Verificación del funcionamiento del dispositivo vinculado
    Given el dispositivo fue vinculado
    When el usuario verifica el estado del dispositivo
    And realiza una prueba de conexión
    Then debe confirmarse que el dispositivo responde correctamente desde la app