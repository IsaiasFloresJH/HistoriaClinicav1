
function llenarFormulario(fila){
    
    var codigo = $(fila).find(".codigo").text();
    var nombre = $(fila).find(".nombre").text();
    var dni = $(fila).find(".dni").text();
    var fechadenacimiento = $(fila).find(".fechadenacimiento").text();
    var telefono = $(fila).find(".telefono").text();
    var correo = $(fila).find(".correo").text();
    var direccion = $(fila).find(".direccion").text();
    var ciudad = $(fila).find(".ciudad").text();
    
    $("#txtCodigo").val(codigo);
    $("#txtNombre").val(nombre);
    $("#txtApellido").val(dni);
    $("#textfechanaci").val(fechadenacimiento);
    $("#txtNumero").val(telefono);
    $("#textgenero").val(textgenero);
    $("#txtCorreo").val(correo);
    $("#textciudad").val(ciudad);
    $("#textdireccion").val(direccion);
}

$(document).ready(function (){
    
    $("#exampleModal").on("hidden.bs.modal", function (){
       $('form')[0].reset(); 
    });
   
    $(document).on('click','.btnEditar', function(){
        llenarFormulario($(this).closest('tr'));
    });
    
    $(document).on('click','.btnEliminar', function(){
        llenarFormulario($(this).closest('tr'));
    });
});



