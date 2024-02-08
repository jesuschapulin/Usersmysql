
package Controlador;

import Model.User;
import Model.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador extends HttpServlet {
    String consulta="pages/Consulta.jsp";
    String administracion="pages/Administracion.jsp";
    String registro="pages/Registro.jsp";
    String login="index.jsp";
    String editar="pages/Modificar.jsp";
    String bienvenido="pages/Bienvenido.jsp";
    User user=new User();
    UserDao udao=new UserDao();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String acceso="";
            String accion=request.getParameter("accion");
            if(accion.equalsIgnoreCase("consulta")){
                acceso=consulta;
            }else if(accion.equalsIgnoreCase("admon")){
                acceso=administracion;
            }else if(accion.equalsIgnoreCase("registro")){
                acceso=registro;
            }else if(accion.equalsIgnoreCase("login")){
                acceso=login;
            }else if(accion.equalsIgnoreCase("registrar")){
                String nombre=request.getParameter("NOMBRE");
                String apaterno=request.getParameter("APATERNO");
                String amaterno=request.getParameter("AMATERNO");
                String correo=request.getParameter("CORREO");
                String telefono=request.getParameter("TELEFONO");
                String perfil=request.getParameter("PERFIL");
                String status=request.getParameter("STATUS");
                String usuario=request.getParameter("USUARIO");
                String password=request.getParameter("PASSWORD");
                user.setNombre(nombre);
                user.setApaterno(apaterno);
                user.setAmaterno(amaterno);
                user.setCorreo(correo);
                user.setTelefono(telefono);
                int perfilCV=Integer.parseInt(perfil);
                int statusCV=Integer.parseInt(status);
//                perfilCV=1;
//                statusCV=1;
                user.setPerfil(perfilCV);
                user.setStatus(statusCV);
                user.setUsuario(usuario);
                user.setPassword(password);
                udao.registrar(user);
                
                acceso=administracion;
            }else if(accion.equalsIgnoreCase("editar")){
                request.setAttribute("idUser",request.getParameter("idUser"));
                acceso=editar;
            }
            else if(accion.equalsIgnoreCase("modificar")){
                
                String nombre=request.getParameter("NOMBRE");
                String apaterno=request.getParameter("APATERNO");
                String amaterno=request.getParameter("AMATERNO");
                String correo=request.getParameter("CORREO");
                String telefono=request.getParameter("TELEFONO");
                String perfil=request.getParameter("PERFIL");
                String status=request.getParameter("STATUS");
                String usuario=request.getParameter("USUARIO");
                String password=request.getParameter("PASSWORD");
                user.setIdUser(Integer.parseInt(request.getParameter("idUser")));
                user.setNombre(nombre);
                user.setApaterno(apaterno);
                user.setAmaterno(amaterno);
                user.setCorreo(correo);
                user.setTelefono(telefono);
                int perfilCV=Integer.parseInt(perfil);
                int statusCV=Integer.parseInt(status);
//                perfilCV=1;
//                statusCV=1;
                user.setPerfil(perfilCV);
                user.setStatus(statusCV);
                user.setUsuario(usuario);
                user.setPassword(password);
                
                System.out.println("nombre en java controler:::: "+nombre);
                
                udao.editar(user);
                acceso=administracion;
            }
            else if(accion.equalsIgnoreCase("loguear")){
                
                String usuario=request.getParameter("USUARIO");
                String password=request.getParameter("PASSWORD");
                user.setCorreo("");
                user.setUsuario("");
                user.setPassword("");
                user.setStatus(0);
                ////udao.acceso(user.getUsuario(),user.getPassword());
                /////System.out.println("usuario de box:::: "+user.getUsuario());
                user=udao.acceso(usuario,password);
                System.out.println("correo en java controler:::: "+user.getCorreo());
                int intentos=0;
                intentos=udao.validarIntentos(usuario,password);
                System.out.println("intentos en controller java:::: "+intentos);
                
                    if(user.getCorreo()!="" && user.getCorreo()!=null){
                        System.out.println("cambiando a acceso:::: "+user.getCorreo());
                        ///acceso=administracion;
                        if(user.getPerfil()==1){
                            acceso=administracion;
                        }else{
                            acceso=bienvenido;
                        }
                    }else if(user.getCorreo()=="" || user.getCorreo()==null){
                        System.out.println("cambiando a login por error:::: ");
                        acceso=login;
                    }
                
            }else if(accion.equalsIgnoreCase("inicio")){
                acceso=login;
            }else if(accion.equalsIgnoreCase("eliminar")){
                user.setIdUser(Integer.parseInt(request.getParameter("idUser")));
                udao.eliminar(user);
                acceso=administracion;
            }else if(accion.equalsIgnoreCase("cancelar")){
                acceso=administracion;
            }else if(accion.equalsIgnoreCase("cerrarSesion")){
                user.setCorreo("");
                user.setUsuario("");
                user.setPassword("");
                user.setStatus(0);
                acceso=login;
            }
            else{
                acceso=login;
            }
            RequestDispatcher vista=request.getRequestDispatcher(acceso);
            vista.forward(request, response);
    
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
