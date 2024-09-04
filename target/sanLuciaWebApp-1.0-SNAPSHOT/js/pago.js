/*
Función para llenar el formulario con los datos de un registro

Parámetros:
fila: Fila de la tabla de pagos
*/
function llenarFormulario(fila) {
  // Obtener los valores de los campos de la fila
  var idPago = fila.querySelector('.codigo').textContent;
  var nombre = fila.querySelector('.nombre').textContent;
  var servicio = fila.querySelector('.servicio').textContent;
  var dni = fila.querySelector('.dni').textContent;
  var monto = fila.querySelector('.monto').textContent;
  var multa = fila.querySelector('.multa').textContent;
  var estado = fila.querySelector('.estado').textContent;
  var metodoPago = fila.querySelector('.metodoPago').textContent;
  var fecha = fila.querySelector('.fecha').textContent;

  // Asignar los valores obtenidos a los campos del formulario
  document.querySelector('#txtIdPago').value = idPago;
  document.querySelector('#txtNombre').value = nombre;
  document.querySelector('#txtServicio').value = servicio;
  document.querySelector('#txtDni').value = dni;
  document.querySelector('#txtMonto').value = monto;
  document.querySelector('#txtMulta').value = multa;
  document.querySelector('#txtEstado').value = estado;
  document.querySelector('#txtMetodoPago').value = metodoPago;
  document.querySelector('#txtFecha').value = fecha;
}

/*
Evento que se activa cuando el modal se oculta

Este evento se utiliza para restablecer los campos del formulario al valor predeterminado
*/
$(document).ready(function () {
  $("#exampleModal").on("hidden.bs.modal", function () {
    // Restablecer los campos del formulario
    document.querySelector('#txtIdPago').value = "";
    document.querySelector('#txtNombre').value = "";
    document.querySelector('#txtServicio').value = "";
    document.querySelector('#txtDni').value = "";
    document.querySelector('#txtMonto').value = "";
    document.querySelector('#txtMulta').value = "";
    document.querySelector('#txtEstado').value = "";
    document.querySelector('#txtMetodoPago').value = "";
    document.querySelector('#txtFecha').value = "";
  });

/*
Eventos que se activan cuando se hace clic en los botones `.btnEditar` y `.btnEliminar`

Estos eventos se utilizan para llenar el formulario con los datos del registro seleccionado
*/
  $(document).on('click', '.btnEditar', function () {
    llenarFormulario($(this).closest('tr'));
  });

  $(document).on('click', '.btnEliminar', function () {
    // Código para eliminar el registro
    var idPago = $(this).closest('tr').querySelector('.codigo').textContent;
    // Llamada al método para eliminar el registro
    pagoDAO.eliminarPago(idPago);
    // Cierre del modal
    $('#exampleModal').modal('hide');
  });
});

