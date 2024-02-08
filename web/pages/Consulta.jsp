
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta</title>
    </head>
    <jsp:include page="templates/header.jsp" />
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="ControladorServlet?action=Administracion">Administrador</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">

                <a class="nav-link" id="admonOption" href="Controlador?accion=admon">Administrar</a>
                <a class="nav-link" id="consultaOption" href="Controlador?accion=consulta">Consultar</a>
                
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" 
                     href="#" id="navbarDropdown" 
                     role="button" data-toggle="dropdown" 
                     aria-haspopup="true" 
                     aria-expanded="false">
                    Perfil
                  </a>
                </li>
              </ul>
              <div class="d-flex align-items-center">
                <button data-mdb-ripple-init type="button" class="btn btn-primary me-3">
                  Agregar usuario
                </button>
                <!-- Avatar -->
                  <div class="dropdown">
                      <img
                        src="https://mdbcdn.b-cdn.net/img/new/avatars/2.webp"
                        class="rounded-circle"
                        height="25"
                        alt="Black and White Portrait of a Man"
                        loading="lazy"
                      />
                  </div>
                  <div class="btn-group">
                    <button type="button" class="btn btn-default dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
                      <span class="visually-hidden">Toggle Dropdown</span>
                    </button>
                    <ul class="dropdown-menu">
                      <li><span class="dropdown-item">Cerrar sesión</span></li>
                    </ul>
                  </div>
                  <a class="nav-link" href="#">&nbsp;&nbsp;</a>
              </div>
            </div>
        </nav>
    </body>
</html>
