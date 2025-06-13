Feature: Registro de usuario - Inquilino
  Como persona que alquila una vivienda
  Quiero registrarme en la app con un perfil de inquilino
  Para poder monitorear y controlar los dispositivos disponibles sin necesidad de ser propietario

  Scenario: Registro exitoso como inquilino con cuenta limitada
    Given el usuario es inquilino
    When selecciona el tipo de cuenta “Inquilino” en el registro
    And completa sus datos correctamente
    Then el sistema debe crear un perfil limitado con acceso a funciones autorizadas por el propietario

  Scenario: Registro con código de invitación
    Given un propietario ha generado una invitación
    When el inquilino ingresa el código de acceso
    And finaliza el registro
    Then el sistema debe vincular al usuario con la propiedad correspondiente