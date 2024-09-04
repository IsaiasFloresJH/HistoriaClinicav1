
function llenarFormulario(fila){
    
    var codigo = $(fila).find(".codigo").text();
    var nombre = $(fila).find(".nombre").text();
    var clave = $(fila).find(".clave").text();
    var cargo = $(fila).find(".cargo").text();
    var estado = $(fila).find(".estado").text();
    
    $("#txtCodigo").val(codigo);
    $("#txtNombre").val(nombre);
    $("#txtClave").val(clave);
    $("#txtCargo").val(cargo);
    $("#txtEstado").val(estado);
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


