<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>-->  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nueva Historia Clinica</title>
    <link rel="stylesheet" href="../../css/estilosgenerales.css">
    <link rel="stylesheet" href="../../css/nuevahistoriaclinica.css">
    <link rel="icon" href="../../img/iconosinfondo.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous">
</head>
<body>
    

    <div class="cajaPrincipal">    
        <div class="titulohistoria">
            <h2 class="titulo2">HISTORIAL CLINICA</h2>
            <a href="historialclinico.jsp" class="btnagregar volver">VOLVER</a>
        </div>
        <h3 class="subtitulo">DATOS PERSONALES</h3>
        <div class="datos-historia">
            
            <div class="historia">
                <label class="textlabel" for="nombre">N° Historia clinica:</label>
                <input type="number" id="nombre"class="cuadrotexto"/>
                <label class="textlabel" for="Servicio">Nombre:</label>
                <input type="text" id="Servicio"class="cuadrotexto"/>
                <label class="textlabel" for="DNI">Edad:</label>
                <input type="number" id="DNI"  class="cuadrotexto"/>
                <label class="textlabel" for="Monto">Estado Civil:</label>
                <input type="email" id="Monto"  class="cuadrotexto"/> 
                <label class="textlabel" for="Multa">Grado de instrucción:</label>
                <input type="text" id="Multa"  class="cuadrotexto"/>
                <label class="textlabel" for="Estado">En caso de urgencia comunicar a (nombre y numero de telefono):</label>
                <input type="text" id="Estado" class="cuadrotexto"/> 
            </div>
            <div class="historia">
                <label class="textlabel" for="nombre">Fecha de ingreso:</label>
                <input type="date" id="nombre"class="cuadrotexto"/>
                <label class="textlabel" for="Servicio">Apellido:</label>
                <input type="text" id="Servicio"class="cuadrotexto"/>
                <label class="textlabel" for="DNI">Sexo:</label>
                <input type="number" id="DNI"  class="cuadrotexto"/>
                <label class="textlabel" for="Monto">DNI:</label>
                <input type="number" id="Monto"  class="cuadrotexto"/> 
                <label class="textlabel" for="Multa">Profesión / Ocupacion:</label>
                <input type="text" id="Multa"  class="cuadrotexto"/>
                <label class="textlabel" for="Estado">Nombre del familiar o responsable (en caso ser menor de edad):</label>
                <input type="text" id="Estado" class="cuadrotexto"/> 
            </div>
        </div>
        <h3 class="subtitulo">ANTECEDENTES</h3>
        <div class="datos-historia">
            <div class="historia">
                <label class="textlabel" for="nombre">Atencion odontologica en los ultimos 6 meses: SI() NO()</label>
                <input type="text" id="nombre"class="cuadrotexto"/> 
                <label class="textlabel" for="Servicio">Experiencia defavorable en la consulta dental: SI() NO()</label>
                <input type="text" id="Servicio"class="cuadrotexto"/>
                <label class="textlabel" for="DNI">Problemas durante la anestecia local: SI() NO()</label>
                <input type="number" id="DNI"  class="cuadrotexto"/>
                <label class="textlabel" for="Monto">Problemas de coagulacion: SI() NO()</label>
                <input type="number" id="Monto"  class="cuadrotexto"/> 
                <label class="textlabel" for="Multa">Adicciones / Habitos: SI() NO()</label>
                <input type="text" id="Multa"  class="cuadrotexto"/>
            </div>
            <div class="historia">
                <label class="textlabel" for="nombre">Atencion por medico en los ultimos 6 meses: SI() NO()</label>
                <input type="text" id="nombre"class="cuadrotexto"/> 
                <label class="textlabel" for="Servicio">Medicacion en los ultimos 6 meses: SI() NO()</label>
                <input type="text" id="Servicio"class="cuadrotexto"/>
                <label class="textlabel" for="DNI">Hospitalizacion en los ultimos años/motivo: SI() NO()</label>
                <input type="number" id="DNI"  class="cuadrotexto"/>
                <label class="textlabel" for="Monto">Embarazo: SI() NO()</label>
                <input type="number" id="Monto"  class="cuadrotexto"/> 
                <label class="textlabel" for="Multa">Sufrio o sufre de alguna enfermedad: SI() NO()</label>
                <input type="text" id="Multa"  class="cuadrotexto"/>
            </div>
        </div>
        <div class="datos-historia">
            <div class="historiacompleta">
                <label class="textlabel" for="Estado">Alergias algún medicamento: SI() NO()</label>
                <input type="text" id="Estado" class="cuadrotexto"/> 
                <label class="textlabel" for="Estado">Diagnostico presuntivo</label>
                <textarea name="Estado" id="Estado" cols="30" rows="5" class="cuadrotexto"></textarea>
                <label class="textlabel" for="Estado">Examen imagenologico</label>
                <textarea name="Estado" id="Estado" cols="30" rows="5" class="cuadrotexto"></textarea>
                <label class="textlabel" for="Estado">Examenes de laboratorio</label>
                <textarea name="Estado" id="Estado" cols="30" rows="5" class="cuadrotexto"></textarea>
            </div>
        </div>
        <h3 class="subtitulo">DIAGNÓSTICO DEFINITIVO</h3>
        <div class="datos-historia">
            <div class="historiacompleta">
                <label class="textlabel" for="Estado">Del estado de salud general</label>
                <input type="text" id="Estado" class="cuadrotexto"/> 
                <label class="textlabel" for="Estado">Del estado de salud estomatologico</label>
                <textarea name="Estado" id="Estado" cols="30" rows="5" class="cuadrotexto"></textarea>
                <label class="textlabel" for="Estado">Plan de tratamiento por citas</label>
                <textarea name="Estado" id="Estado" cols="30" rows="5" class="cuadrotexto"></textarea>
                <table>
                    <thead>
                      <tr>
                        <th>FECHA</th>
                        <th>DIAGNOSTICO</th>
                        <th>TRATAMIENTO</th>
                        <th>FIRMA DEL PACIENTE</th>
                        <th>FIRMA DEL OPERADOR</th>
                        <th>CONSENTIMIENTO INFORMADO</th>
                      </tr>
                    </thead>
                    <tbody>
                        <!-- Aquí puedes agregar las filas de datos de los pacientes -->
                        <tr>
                          <td>23-12-2023</td>
                          <td>Se va a morir</td>
                          <td>Endodoncia</td>
                          <td><button class="btnsubirhc">Subir</button></td>
                          <td><button class="btnsubirhc">Subir</button></td>
                          <td><button class="btnsubirhc">Subir</button></td>
                        </tr>
                        <tr>
                            <td>23-12-2023</td>
                            <td>Se va a morir</td>
                            <td>Endodoncia</td>
                            <td><button class="btnsubirhc">Subir</button></td>
                            <td><button class="btnsubirhc">Subir</button></td>
                            <td><button class="btnsubirhc">Subir</button></td>
                          </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>