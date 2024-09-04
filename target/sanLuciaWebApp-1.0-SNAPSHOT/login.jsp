<%-- Document : login.jsp Created on : 20 nov. 2023, 12:46:23 Author : PC --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/loginSL.css" />
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/estilosR.css">
  </head>
  <body>
    <center>
        <div class="container mt-5">
            <form method="post" action="CUsuario?accion=verificar">
                <div class="cuerpoSL" style="width: 30rem;">
                    <div class="card-body d-grid gap-2">
                        <div class="salir">
                        <a class="imgsalir" href="${pageContext.servletContext.contextPath}/index.jsp"><img class="imgsalir" src="${pageContext.servletContext.contextPath}/img/iconosalir.png" alt="iconosalir"/></a>
                        </div>
                        <h4 class="titulo">INICIAR SESIÓN</h4>
                        <input type="text" name="txtusuario" id="txtusuario" class="form-control mt-2 textoingresar" placeholder="Ingresar Usuario" required>
                        <input type="password" name="txtclave" id="txtclave" class="form-control mt-2 textoingresar" placeholder="Ingresar Contraseña" required>
                        <input type="submit" class="btn btn-outline-secondary btnIngresar btn-block mt-2" name="verificar" value="INGRESAR">
                        <a href="vistas/olvidarCv.jsp" style="color: #ffff;">¿Has olvidado la contraseña?</a>
                        <br>
                        <a href="vistas/registrar.jsp" class="btn btn-success">Crear cuenta nueva</a>
                        <p style="color: red;"> </p>

                    </div>

                </div>
            </form>
        </div>
    </center>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
