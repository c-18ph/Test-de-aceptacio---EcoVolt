Feature: Validación de correo electrónico
  Como nuevo usuario
  Quiero verificar mi correo electrónico al registrarme
  Para asegurarme de que mi cuenta sea segura y esté correctamente activada

  Scenario: Activación de cuenta tras verificación
    Given el usuario completó el registro
    When el sistema envía un correo de verificación
    And el usuario hace clic en el enlace
    Then la cuenta debe quedar activada y lista para usarse

  Scenario: Intento de inicio de sesión sin validar correo
    Given el usuario no ha verificado su correo
    When intenta iniciar sesión
    And no ha completado la validación
    Then el sistema debe solicitarle que valide su correo antes de continuar