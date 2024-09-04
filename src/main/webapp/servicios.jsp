
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Servicios</title>
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
    <link rel="stylesheet" href="css/servicios.css">
    
</head>
<body >
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
                    <a class="nav-link subslink active linkactivo" aria-current="page" href="servicios.jsp">Servicios</a>
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
    <br>
    <section>
        <h1 class="titulo">¡Ofrecemos!</h1>
        <div class="presentacionservicios">
            <div class="imgconbtn"><img class="imgcirculares" src="img/image1.jpg" alt="imagen1"></img><button class="btnservicios" id="boton1">Endodoncia</button></div>
            <div class="imgconbtn"><img class="imgcirculares" src="img/image2.jpg" alt="imagen2"></img><button class="btnservicios" id="boton2">Odontopediatra</button></div>
            <div class="imgconbtn"><img class="imgcirculares" src="img/image3.jpg" alt="imagen3"></img><button class="btnservicios" id="boton3">Ortodoncia</button></div>
            <div class="imgconbtn"><img class="imgcirculares" src="img/image4.jpg" alt="imagen4"></img><button class="btnservicios" id="boton4">Cirujano Bucal</button></div>
            <div class="imgconbtn"><img class="imgcirculares" src="img/image5.jpg" alt="imagen5"></img><button class="btnservicios" id="boton5">Rehabilitacion Oral</button></div>
            <div class="imgconbtn"><img class="imgcirculares" src="img/image6.jpg" alt="imagen6"></img><button class="btnservicios" id="boton6">Estetica Dental</button></div>
            .
        </div>
        
        <div class="endoponcia">
            <div class="presentacionendoponcia">
                <div class="imgconbtnparte2"><button class="btnserviciosparte2" id="boton12">Endodoncia <img class="imgcircularespequeñas" src="img/image1.jpg" alt="imagen1"></img></button></div>
                <div class="imgconbtnparte2"><button class="btnserviciosparte2" id="boton22">Odontopediatra <img class="imgcircularespequeñas" src="img/image2.jpg" alt="imagen2"></img></button></div>
                <div class="imgconbtnparte2"><button class="btnserviciosparte2" id="boton32">Ortodoncia<img class="imgcircularespequeñas" src="img/image3.jpg" alt="imagen3"></img></button></div>
                <div class="imgconbtnparte2"><button class="btnserviciosparte2" id="boton42">Cirujano Bucal<img class="imgcircularespequeñas" src="img/image4.jpg" alt="imagen4"></img></button></div>
                <div class="imgconbtnparte2"><button class="btnserviciosparte2" id="boton52">Rehabilitacion Oral <img class="imgcircularespequeñas" src="img/image5.jpg" alt="imagen5"></img></button></div>
                <div class="imgconbtnparte2"><button class="btnserviciosparte2" id="boton62">Estetica Dental <img class="imgcircularespequeñas" src="img/image6.jpg" alt="imagen6"></img></button></div>
                
            </div>
            <div class="informacion">
                <div class="infocolor2">
                    <div class="titulo1">Endodoncia</div>
                    <div class="titulo2">Odontopediatra</div>
                    <div class="titulo3">Ortodoncia</div>
                    <div class="titulo4">CirujÃ­a Bucal</div>
                    <div class="titulo5">Rehabilitacion Oral</div>
                    <div class="titulo6">Estetica Dental</div>
                    <div class="texto1"><p>La endodoncia, una especialidad de la OdontologÃ­a, constituye el proceso destinado a la extracciÃ³n de la pulpa dental, comÃºnmente denominada nervio, localizada en el interior del conducto radicular, que ha experimentado daÃ±os o infecciones, ya sea debido a fracturas, caries profundas o impactos severos. <br> <br>
                        Una vez que se ha efectuado la extracciÃ³n, se procede a la meticulosa limpieza, desinfecciÃ³n y posterior relleno del canal radicular con un material sellador adecuado. <br> <br>
                        Este procedimiento posibilita la preservaciÃ³n de los dientes que, en Ã©pocas anteriores, eran sometidos a extracciones a causa de la afectaciÃ³n de sus nervios, al carecer de otras alternativas viables.</p>
                    </div>
                    <div class="texto2"><p>La odontopediatrÃ­a se dedica al cuidado de los jÃ³venes miembros de la familia, es decir, los niÃ±os. <br> <br>
                        El odontopediatra se encarga de identificar posibles irregularidades en la denticiÃ³n y la estructura maxilar, con el fin de llevar a cabo intervenciones preventivas y correctivas. <br><br>
                        Este profesional posee las aptitudes y el carisma necesarios para interactuar con los niÃ±os y enfoca su atenciÃ³n en la preservaciÃ³n de los dientes temporales con el propÃ³sito de prevenir el agravamiento de las afecciones o la extracciÃ³n prematura de los mismos, dado que ello podrÃ­a afectar tanto la salud como el desarrollo de los dientes permanentes.</p> <br>
                    </div>
                    <div class="texto3"><p>La ortodoncia es una rama de la odontologÃ­a que se encarga de prevenir, diagnosticar y tratar las malposiciones dentales y los problemas de la mordida. El objetivo de la ortodoncia es lograr una alineaciÃ³n adecuada de los dientes y la mandÃ­bula, lo que mejora la estÃ©tica, la funciÃ³n masticatoria y la salud bucal general.</p>
                    </div>
                    <div class="texto4"><p>La cirugÃ­a oral, como especialidad de la OdontologÃ­a, se dedica al diagnÃ³stico, prevenciÃ³n y tratamiento de una amplia gama de afecciones que pueden manifestarse en la cavidad bucal, incluyendo dientes, encÃ­as y estructuras Ã³seas de la mandÃ­bula y el maxilar. Esta disciplina abarca desde la extracciÃ³n de dientes impactados hasta la correcciÃ³n de deformidades faciales, pasando por la extirpaciÃ³n de quistes, la colocaciÃ³n de implantes dentales, y la resoluciÃ³n de traumas y lesiones orales, contribuyendo asÃ­ a mejorar la salud y la calidad de vida de los pacientes.</p>
                    </div>
                    <div class="texto5"><p>La RehabilitaciÃ³n Oral, dentro del campo de la OdontologÃ­a, se dedica a la restauraciÃ³n integral de la salud bucal y la calidad de vida de los pacientes. A travÃ©s de tÃ©cnicas y dispositivos avanzados, como las prÃ³tesis dentales, se busca no solo reemplazar las piezas dentales faltantes, sino tambiÃ©n restablecer la masticaciÃ³n eficiente, mejorar la pronunciaciÃ³n y restaurar la estÃ©tica dental. <br> <br>
                        Estos avances en prÃ³tesis dentales permiten un aspecto natural y una mayor adaptabilidad para el paciente, lo que contribuye a una mejora significativa en su bienestar y autoestima. La RehabilitaciÃ³n Oral, por lo tanto, desempeÃ±a un papel esencial en la recuperaciÃ³n de la funciÃ³n oral y la armonÃ­a estÃ©tica, brindando soluciones integrales para una sonrisa saludable y hermosa.</p>
                    </div>
                    <div class="texto6"><p>La importancia de una sonrisa radiante va mÃ¡s allÃ¡ de la mera estÃ©tica; impacta en la calidad de vida de las personas. En la CLÃNICA Santa Lucia, reconocemos que una sonrisa atractiva no solo mejora la percepciÃ³n de uno mismo, sino que tambiÃ©n promueve una mayor confianza en las interacciones sociales y profesionales. <br><br>
                        Nuestro enfoque integral combina la experiencia de profesionales altamente capacitados con las Ãºltimas tÃ©cnicas y avances en odontologÃ­a estÃ©tica. Trabajamos de la mano con nuestros pacientes para entender sus deseos y necesidades especÃ­ficos, permitiÃ©ndoles lograr una transformaciÃ³n estÃ©tica que refleje su personalidad y estilo de vida. La satisfacciÃ³n del paciente es nuestra mÃ¡xima prioridad, y nos esforzamos por brindar resultados que no solo sean espectaculares desde el punto de vista estÃ©tico, sino que tambiÃ©n mejoren su bienestar emocional y su calidad de vida en general.</p>
                    </div>

                </div>
            </div>
            
        </div>


    </section>

    <!-- Enlace a los archivos JavaScript de Bootstrap y Popper.js (requerido para Bootstrap 5) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <script src="js/servicios.js"></script>
</body>
</html>