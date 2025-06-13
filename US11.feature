Feature: Crear y activar escenas personalizadas
  Como usuario de la aplicación,
  Quiero poder crear escenas personalizadas con dispositivos definidos,
  Para poder activar configuraciones específicas con un solo toque.

  Scenario: Guardar una escena personalizada
    Given el usuario ha iniciado sesión en la app
    When accede a la opción de escenas
    And crea una escena personalizada con dispositivos definidos
    Then la escena personalizada se guarda correctamente

  Scenario: Activar una escena personalizada
    Given la escena personalizada ha sido creada
    When el usuario activa la escena
    And los dispositivos definidos están configurados en la escena
    Then los dispositivos deben cambiar al estado configurado