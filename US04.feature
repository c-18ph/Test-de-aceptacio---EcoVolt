Feature: Edición de perfil
  Como usuario registrado
  Quiero editar la información de mi perfil
  Para mantener actualizados mis datos personales y preferencias

  Scenario: Edición exitosa del perfil
    Given el usuario ya ha iniciado sesión
    When accede a la sección de perfil
    And modifica los campos deseados
    Then el sistema debe guardar los cambios y mostrar un mensaje de confirmación

  Scenario: Error al guardar con campos obligatorios vacíos
    Given el usuario ya ha iniciado sesión
    When accede a la sección de perfil
    And intenta guardar un campo obligatorio vacío
    Then el sistema debe mostrar un mensaje de error solicitando completar el campo