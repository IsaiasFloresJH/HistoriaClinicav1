<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pago</title>
    <link rel="stylesheet" href="../../css/estilosgenerales.css">
    <link rel="stylesheet" href="../../css/pagosecretaria.css">
    <link rel="icon" href="../../img/iconosinfondo.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous">
</head>
<body>
    

    <div class="cajaPrincipal">    
        <div class="titulopaciente">
            <h2 class="titulo2">AGREGAR PAGO</h2>
            <a href="pagossecretaria.jsp" class="btnagregar volver">VOLVER</a>
        </div>
        <div class="datos-paciente">
            <div class="paciente">
                <label class="textlabel" for="nombre">Paciente:</label>
                <input type="text" id="nombre" style="margin-left: 8%;" class="cuadrotexto"/>
                <label class="textlabel" for="Servicio">Servicio:</label>
                <input type="text" id="Servicio" style="margin-left: 8%;" class="cuadrotexto"/>
                <label class="textlabel" for="dni">DNI:</label>
                <input type="number" id="dni" style="margin-left: 11%;"  class="cuadrotexto"/>
                <label class="textlabel" for="Monto">Monto del Servicio:</label>
                <input type="email" id="Monto" style="margin-left: 9%;"   class="cuadrotexto"/> <br>
                <label class="textlabel" for="Multa">Multa:</label>
                <input type="text" id="Multa" style="margin-left: 10%;"  class="cuadrotexto"/>
                <label class="textlabel" for="Estado">Estado:</label>
                <input type="text" id="Estado" style="margin-left: 9%;"  class="cuadrotexto"/> 
                <label class="textlabel" for="metodoPago">Metodo de Pago:</label>
                <input type="text" id="metodoPago" style="margin-left: 9%;"  class="cuadrotexto"/> 
                 <label class="textlabel" for="fecha">Fecha:</label>
                <input type="Date" id="fecha" style="margin-left: 9%;"  class="cuadrotexto"/> 
                
                <button type="submit" class="btnguardar" form="action" >Guardar</button>
            </div>
        </div>
    </div>
</body>