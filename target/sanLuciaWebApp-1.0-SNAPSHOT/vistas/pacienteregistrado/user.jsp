<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Santa Lucia</title>
    <link rel="stylesheet" href="../../css/estilosuser.css">
    <link rel="stylesheet" href="../secretaria/estilosgenerales.css">
    <!-- Enlace al archivo CSS de Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous">
    <link rel="icon" href="../../img/iconosinfondo.png">
</head>
<body>
    <%@include file="../../template/pacienteregistrado.jsp" %>

    <main>
    <div class="user">
        <h2 class="mp">Mi Perfil</h2>
        <div class="perfil">
            <div class="IP">
                    <img src="../../img/bruce.png" alt="perfil" class="imagen-perfil">
                        <p class="titulo">Bruce Wayne</p>
                        <br>
                        <form action="" class="formulario">
                        <label for="nombre">Nombre:</label>
                        <input type="text" id="nombre" placeholder="Isaias" />
                        <label for="apellido">Apellido:</label>
                        <input type="text" id="apellido" placeholder="Flores"  />
                        <label for="correo">Correo:</label>
                        <input type="email" id="correo" placeholder="if@gmail.com" />
                        <label for="contrasena">ContraseÃ±a:</label>
                        <input type="password" id="contrasena" placeholder="*********" />
                        </form>
            </div>

            <div class="mis-citas">
                <h2 class="mc">Mis citas</h2>
                <p class="cita">- 10/11/23 Consulta general</p>
                <p class="cita">- 26/11/23 Consulta de ortodoncia</p>
            </div>
            </div>
        </div>
        <!-- Contenido de la pÃ¡gina -->
    </div>
    </main>

    <!-- Enlace a los archivos JavaScript de Bootstrap y Popper.js (requerido para Bootstrap 5) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>

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