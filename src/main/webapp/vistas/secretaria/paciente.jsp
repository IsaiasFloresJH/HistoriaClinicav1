<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.MPaciente" %>
<%@page import="Modelo.MPersona" %>
<%@page import="Modelo.DAOPaciente" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paciente</title>
    <link rel="icon" href="${pageContext.servletContext.contextPath}/img/iconosinfondo.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"/>
    <link href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css" rel="stylesheet">


    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/vistas/secretaria/estilosgenerales.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/pacientesecretario.css">
    
</head>
<body>
    <%@include file="../../template/menusecretaria.jsp" %>
    <%!
          DAOPaciente padao = new DAOPaciente();
      %>
    <div class="cajaPrincipal">    
        <div class="titulopaciente">
            <h2 class="titulo">PACIENTES</h2>
            <div class="col-4 align-self-center">
            <button type="button" class="btn btn-success btnagregar" data-bs-toggle="modal" data-bs-target="#exampleModal">AGREGAR PACIENTE</button>
            </div>
        </div>
        
        <div class="nombre">                   
            <form class="form">
                <input type="text" required>
                <label class="lbl-nombre">
                    <span class="text-nomb">
                        Buscar
                    </span>
                </label>
            </form>
        </div>
        <div class="tablacontainer">
            <table class="mydataTable" >
                <thead>
                    <tr>
                        <th> N°</th>
                        <th>Paciente</th>
                        <th>Apellido</th>
                        <th>Telefono</th>
                        <th>Año Nacido</th>
                        <th>Genero</th>
                        <th>Direccion</th>
                        <th>Ciudad</th>
                        <th>Correo</th>
                        <th>Datos Medicos</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ArrayList<MPaciente> listaOdo = padao.mostrarPaciente();
                        for (MPaciente elem : listaOdo) {     
                    %>
                    <tr>
                        <td class="codigo"><%= elem.getIdpaciente()%></td>
                        <td class="nombre"><%= elem.getNombre()%></td>
                        <td class="apellido"><%= elem.getApellido()%></td>
                        <td class="telefono"><%= elem.getTelefono()%></td>
                        <td class="fechadenacimiento"><%= elem.getFechadenacimiento()%></td>
                        <td class="genero"><%= elem.getGenero()%></td>
                        <td class="direccion"><%= elem.getDireccion()%></td>
                        <td class="ciudad"><%= elem.getCiudad()%></td>
                        <td class="correo"><%= elem.getCorreo()%></td>
                        <td class="datosMedicos"><%= elem.getDatosmedicos()%></td>
                        
      
                        <td>
                            <button type="button" class="btn btn-warning btnEditar" data-bs-toggle="modal" data-bs-target="#exampleModal">Editar</button>
    
                            <button type="button" class="btn btn-danger btnEliminar" data-bs-toggle="modal" data-bs-target="#exampleModal">Eliminar</button>
                        </td>
                    </tr>
                    <%
                            }
                    %>
                    
                </tbody>
            </table>
        </div>


             <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Datos del Paciente</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="${pageContext.servletContext.contextPath}/PacienteServlet" method="post" role="form">
                    <div class="row">
                        <div class="col-6">
                            <label>Codigo</label>
                            <input type="text" name="txtCodigo" class="form-control" id="txtCodigo" value="1" readonly="true">
                        </div>
                        <div class="col-6">
                            <label>Nombre del Paciente</label>
                            <input type="text" name="txtNombre" class="form-control" id="txtNombre">
                        </div> 
                    </div>

 
                    <div class="row">
                        <div class="col-6">
                            <label>Apellido del Paciente</label>
                            <input type="text" name="txtApellido" class="form-control" id="txtApellido">
                        </div> 
                        <div class="col-6">
                            <label>Telefono</label>
                            <input type="text" name="txtNumero" class="form-control" id="txtNumero">
                        </div>

                    </div>

                    
                    <div class="row">
                        <div class="col-6">
                            <label>Fecha de nacimiento</label>
                            <input type="text" name="txtfechanaci" class="form-control" id="txtfechanaci">
                        </div> 
                        <div class="col-6">
                            <label>Género</label>
                            <input type="text" name="txtgenero" class="form-control" id="txtgenero">
                        </div>

                    </div>  
                    

                    <div class="row">
                        <div class="col-6">
                            <label>Direccion</label>
                            <input type="text" name="txtdireccion" class="form-control" id="txtdireccion">
                        </div> 
                        <div class="col-6">
                            <label>Ciudad</label>
                            <input type="text" name="txtciudad" class="form-control" id="txtciudad">
                        </div>

                    </div>    
                    
                    <div class="row">
                        <div class="col-6">
                            <label>Correo</label>
                            <input type="text" name="txtCorreo" class="form-control" id="txtCorreo">
                        </div>
                        <div class="col-6">
                            <label>Datos medicos</label>
                            <input type="text" name="txtdatosmedicos" class="form-control" id="txtdatosmedicos">
                        </div>

                    </div>
                    <br>
                    <div class="row">
                        <div class="col-12">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-danger btnOcultar" name="btnEliminar">Eliminar</button>
                            <button type="submit" class="btn btn-primary btnOcultar0" name="btnEditar">Editar</button>
                            <button type="submit" class="btn btn-success btnOcultar1" name="btnGuardar">Guardar</button>
                        </div> 

                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
   

    </div>

  <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous" ></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.10.1/sweetalert2.all.min.js"></script>

    <%
    if (request.getAttribute("message") != null) {


    %>
    
    <script>
        $(document).ready(function(){
            Swal.fire({
            position: "center",
            icon: "success",
            title: "<%=request.getAttribute("message")%>",
            showConfirmButton: false,
            timer: 2000
            });
        });
            
    </script>
    
    <%

    }
    %>
    
    <script>
    $(document).ready(function () {
        $('#mydataTable').DataTable();
    });
    </script>
    
    
    <script src="${pageContext.servletContext.contextPath}/js/pacienteJS.js"></script>
    
</body>
</html>