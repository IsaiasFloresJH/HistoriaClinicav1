<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tu Navbar</title>
        <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
        <link rel="stylesheet" href="../../css/pagosecretaria.css">
    <link rel="stylesheet" href="estilosgenerales.css">
</head>
<body>
  <%@include file="../../template/menusecretaria.jsp" %>
    <div class="container">
      <div class="content">
        <div class="payment-container">
          <div class="btnagregarpago"><a href="agregarpagosecretaria.jsp" class="btnagregar">AGREGAR PAGO</a></div>
          <div class="right-box">
            <div class="rounded-box">
              <h1>HISTORIAL DE PAGO DE PACIENTES</h1>
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
              <table>
                <thead>
                  <tr>
                    <th>N°</th>
                    <th>Paciente</th>
                    <th>DNI</th>
                    <th>Servicio</th>
                    <th>Monto</th>
                    <th>Multa</th>
                    <th>Estado</th>
                    <th>Acciones</th>
                  </tr>
                </thead>
                <tbody>
                  <!-- Aquí puedes agregar las filas de datos de pagos por cuotas -->
                    <tr>
                      <th>1</th>
                      <th>Lucía Fernández Guevara</th>
                      <th>75480249</th>
                      <th>Ortodoncia</th>
                      <th>S/ 200</th>
                      <th>S/ 0</th>
                      <th>Pendiente</th>
                      <th>
                        <img src="../../img/iconeditar.png" alt="editar" class="btnopciones">
                        <img src="../../img/iconborrar.png" alt="borrar" class="btnopciones">
                      </th>
                    </tr>


                  <tr>
                    <th>2</th>
                    <th>María Díaz Benavides</th>
                    <th>75480249</th>
                    <th>Endodoncia</th>
                    <th>S/ 250</th>
                    <th>S/ 0</th>
                    <th>Cancelado</th>
                    <th>
                      <img src="../../img/iconeditar.png" alt="editar" class="btnopciones">
                      <img src="../../img/iconborrar.png" alt="borrar" class="btnopciones">
                    </th>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
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
