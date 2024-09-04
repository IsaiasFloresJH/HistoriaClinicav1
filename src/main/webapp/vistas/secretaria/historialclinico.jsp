<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paciente</title>
    
    <link rel="icon" href="../../img/iconosinfondo.png">
        <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
        <link rel="stylesheet" href="estilosgenerales.css">
    <link rel="stylesheet" href="../../css/historialclinico.css">
</head>
<body>
    <%@include file="../../template/menusecretaria.jsp" %>
    
    <div class="cajaPrincipal">    
        <div class="titulopaciente">
            <h2 class="titulo">HISTORIAL CLINICO DE PACIENTES</h2>
            <a href="agregarhistoriaclinica.jsp" class="btnagregar">AGREGAR HISTORIAL</a>
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
            <table>
                <thead>
                    <tr>
                        <th>N°</th>
                        <th>Paciente</th>
                        <th>Fecha añadida</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>01</td>
                        <td>Ximena Huaman Flores</td>
                        <td>30/08/2010</td>
                        <td><a href="hcpaciente.html" class="hc">Abrir</a></td>
                    </tr>
                    <tr>
                        <td>02</td>
                        <td>Isaias Huaman Flores</td>
                        <td>14/03/2003</td>
                        <td><a href="hcpaciente.html" class="hc">Abrir</a></td>
                    </tr>
                    <tr>
                        <td>03</td>
                        <td>Marcos Gonzales Lores</td>
                        <td>14/03/2003</td>
                        <td><a href="hcpaciente.html" class="hc">Abrir</a></td>
                    </tr>
                    <tr>
                        <td>04</td>
                        <td>Marcos Gonzales Lores</td>
                        <td>14/03/2003</td>
                        <td><a href="hcpaciente.html" class="hc">Abrir</a></td>
                    </tr>
                </tbody>
            </table>
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