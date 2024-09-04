<%@page import="Modelo.DAOServicios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.MServicios" %>

<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Santa Lucia</title>
    <link rel="icon" href="${pageContext.servletContext.contextPath}/img/iconosinfondo.png" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/navbarSL.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.10.1/sweetalert2.min.css"/>


  </head>
  <body>
      <%!
          DAOServicios servDAO = new DAOServicios();
      %>
    <div class="container-fluid">
      <%@include file="../../template/menu.jsp" %>
      <div class="container">
        <hr>
        <div class="row align-items-start">
            <div class="col-8"><h2 style="color: #3892a6">Gestion de Servicios del Sistema</h2></div>
            <div class="col-4 align-self-center">
                <button type="button" class="btn btn-success btnAdd" data-bs-toggle="modal" data-bs-target="#exampleModal">Agregar</button>
            </div>
        </div>
        <hr>
    
        <div class="table-responsive">
            <table class="table table-striped tb" id="mydataTable">
                <thead>
                <th>Id Servicios</th>
                <th>Nombre del Servicio</th>
                <th>Descripcion del Servicio</th>
                <th>Requisitos del Servicios</th>
                <th>Indicaciones Generales</th>           
                <th>Acciones</th>
                </thead>
                <tbody>
                    <%
                        ArrayList<MServicios> listaServ = servDAO.mostrarServicios();
                        for (MServicios elem : listaServ) {     
                    %>
                    <tr>
                        <td class="codigo"><%= elem.getIdServicios()%></td>
                        <td class="nombre"><%= elem.getNombre()%></td>
                        <td class="descripcion"><%= elem.getDescipcion()%></td>
                        <td class="requisitos"><%= elem.getRequisitos()%></td>
                        <td class="indicacionesGenerales"><%= elem.getIndicacionesGenerales()%></td>                      
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
    </div>
      
      <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Datos del Servicio</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="${pageContext.servletContext.contextPath}/ServiciosServlet" method="post" role="form">
                    <div class="row">
                        <div class="col-6">
                            <label>Codigo</label>
                            <input type="text" name="txtCodigo" class="form-control" id="txtCodigo" value="0" readonly="true">
                        </div>
                        <div class="col-6">
                            <label>Nombre del Servicio</label>
                            <input type="text" name="txtNombre" class="form-control" id="txtNombre">
                        </div> 
                    </div>

                    <div class="row">
                        <div class="col-6">
                            <label>Descripción del Servicio</label>
                            <input type="text" name="txtDescripcion" class="form-control" id="txtDescripcion">
                        </div> 
                        <div class="col-6">
                            <label>Requisitos del Servicio</label>
                            <input type="text" name="txtRequisitos" class="form-control" id="txtRequisitos">
                        </div>

                    </div>
                    

                    <div class="row">
                        <div class="col-6">
                            <label>Indicaciones Generales</label>
                            <input type="text" name="txtIndicaciones" class="form-control" id="txtIndicaciones">
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

     <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>      
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
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
    
    

   
    <script src="${pageContext.servletContext.contextPath}/js/serviciosJS.js"></script>
  </body>
</html>
