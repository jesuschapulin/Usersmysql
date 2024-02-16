<%@page import="Model.User"%>
<%@page import="Model.UserDao"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;">
        <title>Login</title>
    </head>
    <jsp:include page="pages/templates/header.jsp" />
    <body>
        <%
            UserDao controller=new UserDao();
            String logUser=request.getParameter("USUARIO");
            String logPass=request.getParameter("PASSWORD");
            int estadoActual=(int)controller.getUserState(logUser,logPass);
        %>
        <!-- Section: Design Block -->
        <section class="background-radial-gradient overflow-hidden">
            <input type="hidden" id="logUser" class="form-control" name="logUser" value="<%=logUser%>"/>
            <input type="hidden" id="estadoActual" class="form-control" name="estadoActual" value="<%=estadoActual%>"/>
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
                          <!-- Password input -->
                        <div class="form-outline mb-4">
                          <input type="text" id="boxUsuario" class="form-control" name="USUARIO"/>
                          <label class="form-label boxUsuario">Usuario</label>
                        </div>
                        <!-- Password input -->
                        <div class="form-outline mb-4">
                          <input type="password" id="boxPassword" class="form-control" name="PASSWORD"/>
                          <label class="form-label boxPassword">Contraseña</label>
                        </div>

                        <span class="btn btn-primary btn-block mb-4" id="btnPrepareLog">
                          Continuar
                        </span>
                        <input class="btn btn-primary" 
                               id="btnLoguear" 
                               type="submit" 
                               name="accion" 
                               value="loguear"
                               style="display: none;">
<!--                        <input class="btn btn-default" type="submit" name="accion" value="cancelarLogin">-->
                      </form>
                      <span class="btn btn-primary btn-block mb-4" id="btn-jelastic">
                          Test jelastic service
                        </span>  
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
    </body>
</html>
