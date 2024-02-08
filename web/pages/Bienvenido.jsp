<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
        <link rel="stylesheet" 
              href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
              crossorigin="anonymous"/>
        <link rel="stylesheet" 
              href="src/css/style.css" 
              />
    </head>
    <body>
  <!-- Section: Design Block -->
<section class="background-radial-gradient overflow-hidden">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="ControladorServlet?action=Administracion">Empleado</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                
              </ul>
              <div class="d-flex align-items-center">
                <span class="btn btn-primary me-3">
                    <a href="Controlador?accion=cerrarSesion" style="color: white"><span>Cerrar sesion</span></a>
                </span>
                <!-- Avatar -->
                  
                  <a class="nav-link" href="#">&nbsp;&nbsp;</a>
              </div>
            </div>
        </nav>
    <div class="container px-4 py-5 px-md-5 text-center text-lg-start my-5">
      <div class="row gx-lg-5 align-items-center mb-5">
        <div class="col-lg-6 mb-5 mb-lg-0" style="z-index: 10">
          <h1 class="my-5 display-5 fw-bold ls-tight" style="color: hsl(218, 81%, 95%)">
            Bienvenido al sistema de control <br />
            <span style="color: hsl(218, 81%, 75%)">para Acceso de usuarios</span>
          </h1>
          <p class="mb-4 opacity-70" style="color: hsl(218, 81%, 85%)">
            Nuestro enfoque de control de usuarios encriptados se basa en la última tecnología de cifrado,
            asegurando una capa adicional de protección contra accesos no autorizados. 
          </p>
        </div>
  
        <div class="col-lg-6 mb-5 mb-lg-0 position-relative">
          <div id="radius-shape-1" class="position-absolute rounded-circle shadow-5-strong"></div>
          <div id="radius-shape-2" class="position-absolute shadow-5-strong"></div>
        </div>
      </div>
    </div>
  </section>
    </body>
</html>
