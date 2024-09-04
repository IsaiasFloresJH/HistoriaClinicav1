
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg bg-blanco">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img style="width: 15%"
                class="imgnav"
                src="${pageContext.servletContext.contextPath}/img/iconosinfondo.png"
                alt="logoname"
                />
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
                    <a class="nav-link" aria-current="page" href="${pageContext.servletContext.contextPath}/vistas/secretaria/paciente.jsp">Pacientes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.servletContext.contextPath}/vistas/secretaria/reserva.jsp">Reservas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.servletContext.contextPath}/vistas/secretaria/seguimientopaciente.jsp">Seguimiento pacientes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.servletContext.contextPath}/vistas/secretaria/pagossecretaria.jsp">Pagos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.servletContext.contextPath}/vistas/secretaria/historialclinico.jsp">Historial clinico</a>
                </li>
                
                
            </ul>
            <li class="nav-item dropdown d-flex" style="padding-right: 50px;">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Falta Nomb.
                </a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="${pageContext.servletContext.contextPath}/vistas/secretaria/perfilsecretaria.jsp">Perfil</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="/sanLuciaWebApp/login.jsp">Salir</a></li>
                </ul>
            </li>
            
        </div>
    </div>
</nav>


