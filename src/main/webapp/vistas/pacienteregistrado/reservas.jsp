<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Santa Lucia</title>
    <link rel="stylesheet" href="../../css/estilosreservas.css">
    <!-- Enlace al archivo CSS de Bootstrap -->
    <link rel="icon" href="../../img/iconosinfondo.png">
    <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css' rel='stylesheet' />
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js'></script>
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
    <div class="contenido">
        <div class="total">
        <div class="seccion-titulo">
            <h1 class="titulo">Solicita tu cita en línea</h1>
            <div class="titulo-con-indicadores">
                <span class="circulo-indicador activo" id="indicador-seccion1">1</span>
                <span class="circulo-indicador" id="indicador-seccion2">2</span>
                <span class="circulo-indicador" id="indicador-seccion3">3</span>
            </div>
        </div>

        <div class="seccion visible" id="seccion1">
           <label for="nombre">Nombre:</label>
           <input type="text" id="nombre" placeholder="Nombre"><br><br>

           <label for="apellido">Apellido:</label>
           <input type="text" id="apellido" placeholder="Apellido"><br><br>

           <label for="correo">Correo:</label>
           <input type="email" id="correo" placeholder="Correo"><br><br>

           <label for="telefono">TelÃ©fono:</label>
           <input type="tel" id="telefono" placeholder="TelÃ©fono"><br><br>

           <button onclick="mostrarSiguiente('seccion1', 'seccion2', 'indicador-seccion1', 'indicador-seccion2')">Siguiente</button>
        </div>

        <div class="seccion" id="seccion2">
           <div id='calendario'></div>
           <script>
            document.addEventListener('DOMContentLoaded', function() {
                $('#calendario').fullCalendar({
                    // Configuraciones y opciones del calendario
                    // events: [...], u otras configuraciones
                });
            });
           </script>
           <button onclick="mostrarSiguiente('seccion2', 'seccion3', 'indicador-seccion2', 'indicador-seccion3')">Siguiente</button>
        </div>

        <div class="seccion" id="seccion3">
            <div class="contenido-reserva-cita">
                <h2 class="titulo">Reserva de cita</h2>
                <div class="peque">
                <p>Consulta general</p>
                <p>26/10/2023</p>
                <p>Av. JosÃ© Balta #097 2do piso</p>
                <p>Total: s/30.00</p>
                </div>
            </div>
            <div class="opciones-tarjeta">
                <button class="debito"> Tarjeta de DÃ©bito</button>
                <button class="credito"> Tarjeta de CrÃ©dito</button>
            </div>
        </div>

        </div>
    </div>

    <script>
        function mostrarSiguiente(ocultar, mostrar, ocultarIndicador, mostrarIndicador) {
            document.getElementById(ocultar).classList.remove('visible');
            document.getElementById(mostrar).classList.add('visible');

            if (ocultarIndicador) {
                document.getElementById(ocultarIndicador).classList.remove('activo');
            }

            document.getElementById(mostrarIndicador).classList.add('activo');
        }
    </script>
    <!-- Enlace a los archivos JavaScript de Bootstrap y Popper.js (requerido para Bootstrap 5) -->
    <script src="../../js/servicios.js"></script>
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