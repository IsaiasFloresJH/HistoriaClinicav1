
function llenarFormulario(fila){
    
    var codigo = $(fila).find(".codigo").text();
    var nombre = $(fila).find(".nombre").text();
    var descripcion = $(fila).find(".descripcion").text();
    var requisitos = $(fila).find(".requisitos").text();
    var indicacionesGenerales = $(fila).find(".indicacionesGenerales").text();
    
    $("#txtCodigo").val(codigo);
    $("#txtNombre").val(nombre);
    $("#txtDescripcion").val(descripcion);
    $("#txtRequisitos").val(requisitos);
    $("#txtIndicaciones").val(indicacionesGenerales);
   
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

