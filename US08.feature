Feature: Eliminación de dispositivos del sistema

  Scenario: Confirmar y eliminar un dispositivo
    Given el usuario ya no desea usar un dispositivo
    When accede a su configuración
    And selecciona “Eliminar”
    Then el sistema pide confirmación y luego retira el dispositivo

  Scenario: Verificar eliminación del dispositivo
    Given el dispositivo fue eliminado
    When el usuario revisa su lista de dispositivos
    Then el dispositivo ya no aparece ni genera notificaciones o actividad