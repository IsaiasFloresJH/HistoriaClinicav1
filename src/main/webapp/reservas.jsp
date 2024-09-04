<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Santa Lucia</title>
    <!-- Enlace al archivo CSS de Bootstrap -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <link rel="icon" href="img/iconosinfondo.png">
    <link rel="stylesheet" href="css/navbarSL.css">
    <link rel="stylesheet" href="css/estilosgenerales.css">
    <link rel="stylesheet" href="css/reservas.css">
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
                    <a class="nav-link subslink" aria-current="page" href="index.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link subslink" aria-current="page" href="sobrenosotros.jsp">Sobre Nosotros</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link subslink " aria-current="page" href="servicios.jsp">Servicios</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link subslink active linkactivo" aria-current="page" href="reservas.jsp">Reservas</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <a href="login.jsp" class="btn btn-outline-secondary subslink">Iniciar Sesión</a>
            </form>
        </div>
        
      </div>
    </nav>
    <div class="reservas">
                <div class="reservali">
                    <h1 class="resv">Reserva en lí­nea</h1>
                    <p class="paraf1"> 
                        ¡Hola! Para que hagas un reserva en lí­nea debes iniciar sesión y si aún no te has registrado, en la parte de abajo aparece un botón de registrarse para que puedas separar tu cita online..
                    </p>
                    <button class="btnreserva btnespacio" > <a href="login.jsp" class="btnreserva">Registrarse</a></button>
                </div>

                <div class="informacion">
                    <h1 class="inf"> Informacion</h1>
                    <hr class="hr2">
                    <p> 
                        Av. José Balta #097 2do piso<br><br>
                        Fijo: (074) 451168<br><br>
                        Telefono: 973310708<br><br>
                    </p>
                </div>
            
            </div>                        
        </div>
    </section>
    

</body>
</html>