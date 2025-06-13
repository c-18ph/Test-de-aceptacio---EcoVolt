Feature: Registro de usuario - Propietario
  Como propietario de una vivienda
  Quiero crear un perfil en la aplicación EcoVolt
  Para poder configurar y controlar los dispositivos inteligentes instalados en mi hogar

  Scenario: Registro exitoso como propietario
    Given el usuario ha descargado la aplicación
    When accede al formulario de registro
    And completa todos los campos obligatorios
    Then el sistema debe crear su cuenta como propietario y mostrar la pantalla de inicio

  Scenario: Registro fallido por correo duplicado
    Given el usuario ya tiene una cuenta
    When intenta registrarse con el mismo correo electrónico
    And envía el formulario
    Then el sistema debe mostrar un mensaje de error indicando que el correo ya está en uso