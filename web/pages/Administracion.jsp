<%@page import="Model.User"%>
<%@page import="Model.UserDao"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administracion</title>
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
<!--                <a class="nav-link" id="consultOption" href="Controlador?accion=bienvenido">Consultar</a>-->
                <a class="nav-link" id="admonOption" href="Controlador?accion=admon">Administrar</a>
                <a class="nav-link" id="loginOption" href="Controlador?accion=inicio">Inicio</a>
              </ul>
              <div class="d-flex align-items-center">
                <span class="btn btn-primary me-3">
                    <a href="Controlador?accion=registro" style="color: white"><span>Agregar usuario</span></a>
                </span>
                <a class="nav-link" href="#">&nbsp;&nbsp;</a>
                <span class="btn btn-simple me-3">
                    <a href="Controlador?accion=cerrarSesion" style="color: black"><span>Cerrar Sesion</span></a>
                </span>
              </div>
            </div>
        </nav>
        <div class="container">
            <div class="container-sm col-lg-10">
                <table class="table table-hover">
                <thead>
                  <tr>
                    <th scope="col">Numero de registro</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellido paterno</th>
                    <th scope="col">Apellido materno</th>
                    <th scope="col">Usuario</th>
                    <th scope="col">Correo</th>
                    <th scope="col">Telefono</th>
                    <th scope="col">Perfil</th>
                    <th scope="col">Status</th>
                    <th scope="col">Acción</th>
                  </tr>
                </thead>
                <tbody>
                    <%
                        UserDao controller=new UserDao();
                        List<User> listUsers=controller.listar();
                        for(User us:listUsers){
                    %>

                        <tr>
                          <th scope="row"><%=us.getIdUser()%></th>
                          <td><%=us.getNombre()%></td>
                          <td><%=us.getApaterno()%></td>
                          <td><%=us.getAmaterno()%></td>
                          <td><%=us.getUsuario()%></td>
                          <td><%=us.getCorreo()%></td>
                          <td><%=us.getTelefono()%></td>
                          <td><%=us.getPerfil()%></td>
                          <td><%=us.getStatus()%></td>
                          
                          <td>
                              <button type="button" class="btn btn-secondary btn-sm">
                                  <a href="Controlador?accion=editar&idUser=<%=us.getIdUser()%>&page=admon" style="color: white;">
                                      Actualizar
                                  </a>
                              </button>
                              <button type="button" class="btn btn-danger btn-sm">
                                  <a href="Controlador?accion=eliminar&idUser=<%=us.getIdUser()%>&page=admon" style="color: white;">
                                      Eliminar
                                  </a>
                              </button>
                          </td>
                        </tr>

                    <%
                    }
                    %>

                </tbody>
              </table>
            </div>
        </div>
    </body>
</html>
