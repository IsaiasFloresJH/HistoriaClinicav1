<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tratamientos</title>
    <link rel="stylesheet" href="../../css/pagospaciente.css">
    <link rel="icon" href="../../img/iconosinfondo.png">
    <link
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous"
        />
    <link rel="stylesheet" href="../secretaria/estilosgenerales.css">
</head>
<body class="fondogeneral">
    <%@include file="../../template/pacienteregistrado.jsp" %>
    
    <div class="cajaPrincipal">
        <div class="espaciotop"></div>
        <div class="cabecera">
            <div class="btn-registrar">
                <h2>Estado de cuenta</h2>
                <div class="montopago">
                    <p>Deuda total: S/. 400.00</p>
                    <button class="pagar">Opciones de pago</button>
                </div>
            </div>
        
        <br>
        <div class="container">
            <table>
                <thead>
                    <tr>
                        <th>Item</th>
                        <th>Descripción</th>
                        <th>Monto</th>
                        <th>Vencimiento</th>
                        <th>Estado</th>
                        <th>Acción</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>123456789</td>
                        <td>Endodoncia</td>
                        <td>S/. 100.00</td>
                        <td>15/12/2023</td>
                        <td>Pendiente</td>
                        <td>
                            <button class="btndescargar">Descargar</button>
                        </td>
                    </tr>
                    <tr>
                        <td>123456789</td>
                        <td>Endodoncia</td>
                        <td>S/. 100.00</td>
                        <td>15/12/2023</td>
                        <td>Pendiente</td>
                        <td>
                            <button class="btndescargar">Descargar</button>
                        </td>
                    </tr>
                    <tr>
                        <td>123456789</td>
                        <td>Endodoncia</td>
                        <td>S/. 100.00</td>
                        <td>15/12/2023</td>
                        <td>Pendiente</td>
                        <td>
                            <button class="btndescargar">Descargar</button>
                        </td>
                    </tr>
                    <tr>
                        <td>123456789</td>
                        <td>Endodoncia</td>
                        <td>S/. 100.00</td>
                        <td>15/12/2023</td>
                        <td>Pendiente</td>
                        <td>
                            <button class="btndescargar">Descargar</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>


    </div>
    
  <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap5.min.js"></script>
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
   <script>
    $(document).ready(function () {
        $('#mydataTable').DataTable();
    });
    </script>
</body>
</html>