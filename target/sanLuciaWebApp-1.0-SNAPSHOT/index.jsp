<%-- Document : index.jsp Created on : 20 nov. 2023, 10:38:47 Author : Roberto
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Santa Lucia</title>
    <link rel="icon" href="img/iconosinfondo.png" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/navbarSL.css">
    <link rel="stylesheet" href="css/estilosgenerales.css"/>
    <link rel="stylesheet" href="css/inicio.css">
  </head>
  <body>
    <nav class="navbar navbar-expand-lg bg-blanco">
      <div class="container-fluid">
          
        <a class="navbar-brand" href="index.jsp">
            <img class="imgnav" src="img/iconosinfondo.png" alt="logoname">
            Santa Lucia
        </a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active linkactivo subslink" aria-current="page" href="index.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link subslink" aria-current="page" href="sobrenosotros.jsp">Sobre Nosotros</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link subslink" aria-current="page" href="servicios.jsp">Servicios</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link subslink" aria-current="page" href="reservas.jsp">Reservas</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <a href="login.jsp" class="btn btn-outline-secondary subslink">Iniciar Sesión</a>
            </form>
        </div>
        
      </div>
    </nav>

    <div class="cuerpoSL">
        <h2 class="titulo1">Clinica Odontologica</h2>
        <h1 class="titulo2">Santa Lucia</h1>
        <a href="login.jsp" class="btn btn-outline-secondary btnReservas">Reserva tu cita</a>
    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
