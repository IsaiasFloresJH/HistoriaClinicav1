/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
function llenarFormulario(fila){
    
    var codigo = $(fila).find(".codigo").text();
    var nombre = $(fila).find(".nombre").text();
    var apellido = $(fila).find(".apellido").text();
    var telefono = $(fila).find(".telefono").text();
    var correo = $(fila).find(".correo").text();
    var usuario = $(fila).find(".usuario").text();

    
    $("#txtCodigo").val(codigo);
    $("#txtNombre").val(nombre);
    $("#txtApellido").val(apellido);
    $("#txtTelefono").val(telefono);
    $("#txtCorreo").val(correo);
    $("#txtIdUsuario").val(usuario);

}

$(document).ready(function (){
    
    $(document).ready(function() {
    var table = $('#mydataTable').DataTable();

    // Más tarde, cuando necesite reinicializar la tabla
    table.destroy(); // Destruya la instancia existente
    $('#mydataTable').DataTable(); // Reinicie la tabla
    });
    
    $("#exampleModal").on("hidden.bs.modal", function (){
       $('form')[0].reset(); 
    });
   
    $(document).on('click', '.btnEditar', function () {
        llenarFormulario($(this).closest('tr'));
        $('.btnOcultar1').prop('disabled', true);
        $('.btnOcultar').prop('disabled', true);
        $('.btnOcultar0').prop('disabled', false);
    });

    $(document).on('click', '.btnEliminar', function () {
        llenarFormulario($(this).closest('tr'));
        $('.btnOcultar1').prop('disabled', true);
        $('.btnOcultar0').prop('disabled', true);
        $('.btnOcultar').prop('disabled', false);
    });

    $(document).on('click', '.btnAdd', function () {
        $('.btnOcultar').prop('disabled', true);
        $('.btnOcultar0').prop('disabled', true);
        $('.btnOcultar1').prop('disabled', false);
    });
});
