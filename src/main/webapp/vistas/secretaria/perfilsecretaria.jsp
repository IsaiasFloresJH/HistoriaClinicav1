<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Santa Lucia</title>
    
        <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <link rel="icon" href="../../img/iconosinfondo.png">
    <link rel="stylesheet" href="../../css/perfilsecretaria.css">
    <link rel="stylesheet" href="estilosgenerales.css">
</head>
<body>
    <%@include file="../../template/menusecretaria.jsp" %>

    <div class="perfil">
        <div class="perfil">
            <h2 class="titulopagos">Mi Perfil</h2>
            <div class="info-usuario">
                <div class="img">
                    <img src="../../img/user.png" alt="usuario" class="imgsecretaria">
                </div>
                <div class="datos-usuario">
                    <div class="usuario">
                        <h1 class="nameusuario">Sasha Camila</h1>
                    <br>
                    <label class="textlabel" for="nombre">Nombre:</label>
                    <input type="text" id="nombre"  class="cuadrotexto"/>
                    <label class="textlabel" for="apellido">Apellido:</label>
                    <input type="text" id="apellido"  class="cuadrotexto"/>
                    <label class="textlabel" for="usuario">Usuario:</label>
                    <input type="email" id="correo"  class="cuadrotexto"/>
                    <label class="textlabel" for="contrasena">Contraseña:</label>
                    <input type="password" id="contrasena"  class="cuadrotexto"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </main>

    <!-- Enlace a los archivos JavaScript de Bootstrap y Popper.js (requerido para Bootstrap 5) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
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