
function llenarFormulario(fila){
    
    var codigo = $(fila).find(".codigo").text();
    var nombre = $(fila).find(".nombre").text();
    var apellido = $(fila).find(".apellido").text();
    var numRegistro = $(fila).find(".numRegistro").text();
    var especialidad = $(fila).find(".especialidad").text();
    var celular = $(fila).find(".celular").text();
    var correo = $(fila).find(".correo").text();
    var direccion = $(fila).find(".direccion").text();
    
    $("#txtCodigo").val(codigo);
    $("#txtNombre").val(nombre);
    $("#txtApellido").val(apellido);
    $("#txtNumReg").val(numRegistro);
    $("#txtEspecialidad").val(especialidad);
    $("#txtCelular").val(celular);
    $("#txtCorreo").val(correo);
    $("#txtDireccion").val(direccion);
}

$(document).ready(function (){
    
    $('#mydataTable').DataTable({
        "language": {
            "lengthMenu": "Mostrar _MENU_ registros por página",
            "zeroRecords": "No se encontro datos vuelva a la pagina anterior",
            "info": "Mostrando la pagina de _PAGE_ of _PAGES_",
            "infoEmpty": "No records available",
            "infoFiltered": "(filtrado from _MAX_ registros totales)",
            'search':'Buscar',
            'paginate':{
                'next':'Siguiente',
                'previous':'Anterior'
            }
        }
        
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
