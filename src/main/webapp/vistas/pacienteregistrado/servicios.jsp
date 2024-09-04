<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tratamientos</title>
    <link rel="icon" href="../../img/iconosinfondo.png">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../secretaria/estilosgenerales.css">
    <link rel="stylesheet" href="../../css/administradores.css">
</head>
<body class="fondogeneral">
    <%@include file="../../template/pacienteregistrado.jsp" %>
    <div class="cajaPrincipal">

        <div class="cabecera">
            <div class="btn-registrar">
                <h2>Tratamientos</h2>
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
            </div>
        </div>
        <br>
        <div class="container">
            <table>
                <thead>
                    <tr>
                        <th>N°</th>
                        <th>Servicio</th>
                        <th>Descripción</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>01</td>
                        <td>Endodoncia</td>
                        <td>Lorem ipsum dolor sit, amet consectetur adipisoribussdd awse poras alias dolorum id? Soluta eum, incidunt reiciendis prov 
                        </td>
                        <td>
                            <button>Reservar</button>
                        </td>
                    </tr>
                    <tr>
                        <td>01</td>
                        <td>Endodoncia</td>
                        <td>Lorem ipsum dolor sit, amet consectetur adipisoribussdd awse poras alias dolorum id? Soluta eum, incidunt reiciendis prov 
                        </td>
                        <td>
                            <button>Reservar</button>
                        </td>
                    </tr>
                    <tr>
                        <td>01</td>
                        <td>Endodoncia</td>
                        <td>Lorem ipsum dolor sit, amet consectetur adipisoribussdd awse poras alias dolorum id? Soluta eum, incidunt reiciendis prov 
                        </td>
                        <td>
                            <button>Reservar</button>
                        </td>
                    </tr>
                    <tr>
                        <td>01</td>
                        <td>Endodoncia</td>
                        <td>Lorem ipsum dolor sit, amet consectetur adipisoribussdd awse poras alias dolorum id? Soluta eum, incidunt reiciendis prov 
                        </td>
                        <td>
                            <button>Reservar</button>
                        </td>
                    </tr>
                </tbody>
            </table>
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