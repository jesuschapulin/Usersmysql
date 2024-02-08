<%@page import="Model.User"%>
<%@page import="Model.UserDao"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
                <a class="nav-link" id="consultOption" href="Controlador?accion=bienvenido">Consultar</a>
                <a class="nav-link" id="admonOption" href="Controlador?accion=admon">Administrar</a>
                <a class="nav-link" id="loginOption" href="Controlador?accion=login">Login</a>
                
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
        <%
            UserDao controller=new UserDao();
            int idUser=Integer.parseInt((String)request.getParameter("idUser"));
            User user=(User)controller.listUser(idUser);
        %>
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
                      <form action="Controlador" id="formMod">
                        <div class="row">
                            <input type="hidden" id="idUser" class="form-control" name="idUser" value="<%=user.getIdUser()%>"/>
                            <div class="form-outline mb-4">
                                <input type="text" id="boxUsuario" class="form-control" name="USUARIO" value="<%=user.getUsuario()%>"/>
                                <label class="form-label boxUsuario">Usuario</label>
                            </div>
                            <div class="form-outline mb-4">
                              <input type="text" id="boxNombre" class="form-control" name="NOMBRE" value="<%=user.getNombre()%>"/>
                              <label class="form-label boxNombre">Nombre</label>
                            </div>
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <input type="text" id="boxApaterno" class="form-control" name="APATERNO" value="<%=user.getApaterno()%>"/>
                              <label class="form-label boxApaterno">Apellido paterno</label>
                            </div>
                          </div>
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <input type="text" id="boxAmaterno" class="form-control" name="AMATERNO" value="<%=user.getAmaterno()%>"/>
                              <label class="form-label boxAmaterno">Apellido materno</label>
                            </div>
                          </div>
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <input type="text" id="boxCorreo" class="form-control" name="CORREO" value="<%=user.getCorreo()%>"/>
                              <label class="form-label boxCorreo">Correo</label>
                            </div>
                          </div>
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <input type="text" id="boxTelefono" class="form-control" name="TELEFONO" value="<%=user.getTelefono()%>"/>
                              <label class="form-label boxTelefono">Telefono</label>
                            </div>
                          </div>
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <input type="text" id="boxPerfil" class="form-control" name="PERFIL" value="<%=user.getPerfil()%>"/>
                              <label class="form-label" for="form3Example5">Perfil</label>
                            </div>
                          </div>
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <input type="text" id="boxStatus" class="form-control" name="STATUS" value="<%=user.getStatus()%>"/>
                              <label class="form-label" for="form3Example6">Status</label>
                            </div>
                          </div>
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <input type="text" id="boxPassword" class="form-control" name="PASSWORD" value="<%=user.getPassword()%>"/>
                              <label class="form-label boxPassword" for="form3Example7">Contraseña</label>
                            </div>
                          </div>
                        </div>

                        <!-- Submit button -->
                     <span class="btn btn-primary btn-block mb-4" id="btnPrepareMod">
                          Continuar
                        </span>
                        <!-- Submit button -->
<!--                        <span  class="btn btn-default btn-block mb-4">
                            Cancelar
                        </span>-->
                        <input class="btn btn-primary" id="btnModifica" type="submit" name="accion" value="modificar" 
                                style="display: none;">
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
