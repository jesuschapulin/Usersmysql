<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;">
        <title>Registro</title>
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
                <a class="nav-link" id="consultOption" href="Controlador?accion=consulta">Consultar</a>
                </li>
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
        
        <!-- Section: Design Block -->
        <section class="background-radial-gradient overflow-hidden">

            <div class="container px-4 py-5 px-md-5 text-center text-lg-start my-5">
              <div class="row gx-lg-5 align-items-center mb-5">
                <div class="col-lg-6 mb-5 mb-lg-0" style="z-index: 10">
                  <h1 class="my-5 display-5 fw-bold ls-tight" style="color: hsl(218, 81%, 95%)">
                    El mejor control <br />
                    <span style="color: hsl(218, 81%, 75%)">para Acceso de usuarios</span>
                  </h1>
                  <p class="mb-4 opacity-70" style="color: hsl(218, 81%, 85%)">
                    Nuestro enfoque de control de usuarios encriptados se basa en la última tecnología de cifrado, asegurando una capa adicional de protección contra accesos no autorizados. 
                  </p>
                </div>

                <div class="col-lg-6 mb-5 mb-lg-0 position-relative">
                  <div id="radius-shape-1" class="position-absolute rounded-circle shadow-5-strong"></div>
                  <div id="radius-shape-2" class="position-absolute shadow-5-strong"></div>

                  <div class="card bg-glass">
                    <div class="card-body px-4 py-5 px-md-5">
                      <form action="Controlador">
                        <div class="row">
                            <div class="form-outline mb-4">
                                <input type="text" id="boxUsuario" class="form-control" name="USUARIO"/>
                                <label class="form-label boxUsuario" for="formRegUsuario">Usuario</label>
                            </div>
                          <div class="form-outline mb-4">
                            <input type="text" id="boxNombre" class="form-control" name="NOMBRE"/>
                            <label class="form-label boxNombre" for="formRegNombre">Nombre</label>
                          </div>
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <input type="text" id="boxApaterno" class="form-control" name="APATERNO"/>
                              <label class="form-label boxApaterno" for="form3Example1">Apellido paterno</label>
                            </div>
                          </div>
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <input type="text" id="boxAmaterno" class="form-control" name="AMATERNO"/>
                              <label class="form-label boxAmaterno" for="form3Example2">Apellido materno</label>
                            </div>
                          </div>
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <input type="text" id="boxCorreo" class="form-control" name="CORREO"/>
                              <label class="form-label boxCorreo" for="form3Example3">Correo</label>
                            </div>
                          </div>
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <input type="text" id="boxTelefono" class="form-control" name="TELEFONO"/>
                              <label class="form-label boxTelefono" for="form3Example4">Telefono</label>
                            </div>
                          </div>
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <input type="text" id="boxPerfil" class="form-control" name="PERFIL"/>
                              <label class="form-label boxPerfil" for="form3Example5">Perfil</label>
                            </div>
                          </div>
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <input type="text" id="boxStatus" class="form-control" name="STATUS"/>
                              <label class="form-label boxStatus" for="form3Example6">Status</label>
                            </div>
                          </div>
                          
                        </div>

                        <!-- Password input -->
                        <div class="form-outline mb-4">
                          <input type="password" id="boxPassword" class="form-control" name="PASSWORD"/>
                          <label class="form-label boxPassword" for="form3Example7">Contraseña</label>
                        </div>

                        <span class="btn btn-primary btn-block mb-4" id="btnPrepareReg">
                          Continuar
                        </span>
                        <input class="btn btn-primary" id="btnRegistra" style="display: none" type="submit" name="accion" value="registrar">
                        <input class="btn btn-default" type="submit" name="accion" value="cancelar">
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
    </body>
</html>
