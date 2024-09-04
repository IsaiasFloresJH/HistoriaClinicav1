
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
    <link rel="stylesheet" href="css/sobrenosotros.css">
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
                    <a class="nav-link  subslink" aria-current="page" href="index.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link subslink active linkactivo" aria-current="page" href="sobrenosotros.jsp">Sobre Nosotros</a>
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
    
    <section>
        <div class="sobrenosotros">
            <div class="titulos">
                <h1>Clinica Odontologica</h1>
                <h2>Santa Lucia</h2>
            </div>
            <div class="cont-nosotros">
                <div class="secciones">
                    <div class="iconos"> <img src="img/mision.png" alt="mision" class="imgicon"></div>
                    <div class="mision">
                        <h2>Mision</h2>
                        <p>
                            Ser la Clínica Odontológica líder en la ciudad de Chiclayo, Perú, brindando 
                            atención odontológica de alta calidad a precios accesibles.
                        </p>
                    </div>
                </div>

                <div class="secciones">
                    <div class="iconos"><img src="img/vision.png" alt="vision" class="imgicon"></div>
                    <div class="vision">
                        <h2>Vision</h2>
                        <p>
                            Brindar a nuestros pacientes una atención odontológica personalizada y de calidad, 
                            que les permita mejorar su salud bucal y su sonrisa.
                        </p>
                    </div>
                </div>
                <div class="secciones">
                    <div class="iconos"><img src="img/valores.png" alt="valores" class="imgicon"></div>
                    <div class="valores">
                        <h2>Valores</h2>
                        <ul>
                            <li>Profesionalismo: Brindar a nuestros pacientes atención odontológica de la más alta calidad.</li>
                            <li>Compromiso: Trabajar con nuestros pacientes para satisfacer sus necesidades y expectativas.</li>
                            <li>Compasión: Ofrecer una atención compasiva y sensible.</li>
                        </ul>
                    </div>
                </div>
            </div>                        
        </div>
    </section>
    

</body>
</html>