<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>-->
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
    <title>Seguimiento</title>
    <link rel="stylesheet" href="../../css/estilosseguimientopaciente.css">
    <link rel="stylesheet" href="estilosgenerales.css">
    <link rel="stylesheet" href="../../css/estilosR.css.css">
</head>
<body>
    <%@include file="../../template/menusecretaria.jsp" %>
    <div class="container">
      <div class="titulopaciente">
        <h2 class="centered-title">SEGUIMIENTO PACIENTES</h2>
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
      <div class="content">
        <div class="table-content">
          <table>
            <thead>
              <tr>
                <th>N°</th>
                <th>Paciente</th>
                <th>Fecha de cita</th>
                <th>Género</th>
                <th>Teléfono</th>
                <th>Monto Pendiente</th>
                <th>Estado</th>
                <th>Dirección</th>
              </tr>
            </thead>
            <tbody>
              <!-- Aquí puedes agregar las filas de datos de los pacientes -->
              <tr>
                <td>1</td>
                <td>Lucía Fernández Guevara</td>
                <td>23-12-2023</td>
                <td>Femenino</td>
                <td>938234546</td>
                <td>S/300.00</td>
                <td>Pendiente</td>
                <td>Diego Ferre #142</td>
              </tr>
            
              <tr>
              <td>2</td>
                <td>Lionel Andrés Messi Cuccittini</td>
                <td>24-06-2023</td>
                <td>Masculino</td>
                <td>692143761</td>
                <td>S/500.00</td>
                <td>Asistio</td>
                <td>Fort Lauderdale</td>
            </tr>
            
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
  <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
    <%
    if (request.getAttribute("message") != null) {


    %>
    
    <script>alert('<%=request.getAttribute("message")%>')</script>
    
    <%

    }
    %>
    
</body>
</html>
