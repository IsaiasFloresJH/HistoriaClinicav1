
<%@page import="Modelo.MOdontologo"%>
<%@page import="Modelo.DAOOdontologo"%>
<%@page import="Modelo.MServicios"%>
<%@page import="Modelo.DAOServicios"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    DAOServicios serDAO = new DAOServicios();
    DAOOdontologo odoDAO = new DAOOdontologo();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <title>Reservar cita</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="estilosgenerales.css"/>
    <link rel="stylesheet" href="../../css/reservapacientesecretaria.css">
    <link rel="icon" href="../../img/iconosinfondo.png">
</head>
<body>
    <%@include file="../../template/menusecretaria.jsp" %>
    <div class="container">
      <div class="titulopaciente">
        <h2 class="centered-title ">CITAS GENERADAS</h2>
        <a type="button" class="btn btn-success btnAdd btnagregar" data-bs-toggle="modal" data-bs-target="#exampleModal">GENERAR CITA</a>
      </div>
        <br>
        <div class="table-responsive">
            <table class="table table-striped tb" id="mydataTable">
                <thead>
                        <th>N°</th>
                          <th>Odontologo</th>
                          <th>Servicio</th>
                          <th>Horario</th>
                          <th>Estado</th>
                          <th>Fecha limite</th>
                          <th>Acciones</th>
                </thead>
                <tbody>
                    
                    <tr>
                        <td class="codigo"></td>
                        <td class="nombre"></td>
                        <td class="apellido"></td>
                        <td class="correo"></td>
                        <td class="telefono"></td>
                        <td class="idUsuario"></td>
                        <td>
                            <button type="button" class="btn btn-warning btnEditar" data-bs-toggle="modal" data-bs-target="#exampleModal">Editar</button>
    
                            <button type="button" class="btn btn-danger btnEliminar" data-bs-toggle="modal" data-bs-target="#exampleModal">Eliminar</button>
                        </td>
                    </tr>
                    
                </tbody>
            </table>
        </div>       
      </div>
    
    <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Complete los datos para generar una cita</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="${pageContext.servletContext.contextPath}/SvCitasServlet" method="post" role="form">
                    <div class="row">
                        <div class="col-6">
                            <label>Codigo</label>
                            <input type="text" name="txtCodigo" class="form-control" id="txtCodigo" value="0" readonly>
                        </div>
                        <div class="col-6">
                            <label>Nombre del Odontologo</label>
                            <select name="txtOdontologo" id="txtOdontologo" class="form-select" >
                                <option value="">Seleccionar Odontologo</option>
                                <%
                                    ArrayList<MOdontologo> lis = odoDAO.extraerNOdontologo();
                                    for (MOdontologo elem : lis) {
                                %>
                                <option value="<%= elem.getIdOdontologo()%>"><%= elem.getNombre() %></option>
                                <%
                                    }
                                
                                %>
                            </select>
                        </div> 
                    </div>

                    <div class="row">
                        <div class="col-6">
                            <label>Servicio</label>
                            <select name="txtServicio" id="txtServicio" class="form-select" >
                                <option value="">Seleccionar Servicio</option>
                                <%
                                    ArrayList<MServicios> lista = serDAO.extraerNServicio();
                                    for (MServicios elem : lista) {
                                %>
                                <option value="<%= elem.getIdServicios()%>"><%= elem.getNombre() %></option>
                                <%
                                    }
                                
                                %>
                            </select>
                        </div> 
                        <div class="col-6">
                            <label>Fecha y hora de la cita</label>
                            <input type="datetime-local" name="txtfechacita" class="form-control" id="txtCorreo">
                        </div>

                    </div>
                                     

                    <div class="row">
                        <div class="col-6">
                            <label>Estado</label>
                            <select name="txtEstado" id="txtEstado" class="form-select" >
                                <option value="">Seleccionar Servicio</option>
                                <option value="1">Disponible</option>
                                <option value="2">Ocupado</option>
                            </select>
                        </div>
                        <div class="col-6">
                            <label>Fecha Limite</label>
                            <input type="datetime-local" name="txtfechalimite" class="form-control" id="txtfechalimite">
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-6">
                            <label>Duracion de la cita</label>
                            <input type="number" name="txtduracion" class="form-control" id="txtfechalimite">
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
    
    <script src="../../js/reservasecretaria.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
  <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
    
</body>
</html>