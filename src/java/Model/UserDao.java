
package Model;

import Config.Conection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDao implements Crud{
    PreparedStatement ps;
    ResultSet rs;
    Connection conn;
    Conection cn=new Conection();
    User user=new User();
    @Override
    public List listar() {
        List<User> UserList=new ArrayList<>();
        String query="select *from users";
        try{
            conn=cn.getConection();
            ps=conn.prepareStatement(query);
            rs=ps.executeQuery();
            while(rs.next()){
                User user=new User();
                user.setIdUser(rs.getInt("idUser"));
                user.setNombre(rs.getString("nombre"));
                user.setApaterno(rs.getString("apaterno"));
                user.setAmaterno(rs.getString("amaterno"));
                user.setCorreo(rs.getString("correo"));
                user.setTelefono(rs.getString("telefono"));
                user.setPerfil(rs.getInt("perfil"));
                user.setStatus(rs.getInt("status"));
                user.setUsuario(rs.getString("usuario"));
                UserList.add(user);
            }
        }catch(Exception ex){
            
        }
        return UserList;
    }
    @Override
    public User listUser(int idUser) {
        String query="select *from users where idUser="+idUser;
        try{
            conn=cn.getConection();
            ps=conn.prepareStatement(query);
            rs=ps.executeQuery();
            while(rs.next()){
                user.setIdUser(rs.getInt("idUser"));
                user.setNombre(rs.getString("nombre"));
                user.setApaterno(rs.getString("apaterno"));
                user.setAmaterno(rs.getString("amaterno"));
                user.setCorreo(rs.getString("correo"));
                user.setTelefono(rs.getString("telefono"));
                user.setPassword(rs.getString("password"));
                user.setPerfil(rs.getInt("perfil"));
                user.setStatus(rs.getInt("status"));
                user.setUsuario(rs.getString("usuario"));
            }
        }catch(Exception ex){
            
        }
        return user;
    }
    @Override
    public User acceso(String usuario,String password) {
        String query="select *from users "
                + "where usuario='"+usuario+"' and password='"+password+"' and status=1";
        try{
            conn=cn.getConection();
            ps=conn.prepareStatement(query);
            rs=ps.executeQuery();
            System.out.println("query de login:::::: "+query);
            while(rs.next()){
                user.setIdUser(rs.getInt("idUser"));
                user.setNombre(rs.getString("nombre"));
                user.setApaterno(rs.getString("apaterno"));
                user.setAmaterno(rs.getString("amaterno"));
                user.setCorreo(rs.getString("correo"));
                user.setTelefono(rs.getString("telefono"));
                user.setPassword(rs.getString("password"));
                user.setPerfil(rs.getInt("perfil"));
                user.setStatus(rs.getInt("status"));
                user.setUsuario(rs.getString("usuario"));
            }
        }catch(Exception ex){
            
        }
        return user;
    }
    @Override
    public int validarIntentos(String usuario,String password) {
        String query="select users.idUser,acceso.intentos "
                + "from users,acceso where "
                + "users.usuario='"+usuario+"' and password!='"+password+"' "
                + "and users.idUser=acceso.idUser";
        try{
            conn=cn.getConection();
            ps=conn.prepareStatement(query);
            rs=ps.executeQuery();
            System.out.println("query de validarIntentos:::::: "+query);
            int increment=0;
            while(rs.next()){
                user.setIdUser(rs.getInt("idUser"));
                increment=Integer.parseInt(rs.getString("intentos"))<=5 ? Integer.parseInt(rs.getString("intentos"))+1 : Integer.parseInt(rs.getString("intentos"));
                user.setIntentos(increment);
            }
            if(increment<5){
                this.incrementaIntentos(user);
            }else{
                System.out.println("se bloqueo el usuario  :::::: "+query);
                this.disableUser(user);
                this.setLimit(user);
            }
        }catch(Exception ex){
            
        }
        return user.getIntentos();
    }
    @Override
    public int getUserState(String usuario,String password) {
        String query="select users.idUser,users.status"
                + " from users,acceso "
                + "where users.usuario='"+usuario+"' and password!='"+password+"' "
                + "and users.idUser=acceso.idUser";
        try{
            conn=cn.getConection();
            ps=conn.prepareStatement(query);
            rs=ps.executeQuery();
            System.out.println("query de verificacion de estado:::::: "+query);
            int increment=0;
            while(rs.next()){
                user.setIdUser(rs.getInt("idUser"));
                user.setStatus(rs.getInt("status"));
            }
        }catch(Exception ex){
            
        }
        return user.getStatus();
    }
    @Override
    public boolean registrar(User user) {
        String query="insert into users "
                + "(idUser,nombre,apaterno,amaterno,correo,telefono,perfil,status,usuario,password)"
                + "values("
                + "0,'"+user.nombre+"',"
                + "'"+user.apaterno+"',"
                + "'"+user.amaterno+"',"
                + "'"+user.correo+"',"
                + "'"+user.telefono+"',"
                + ""+user.perfil+","
                + ""+user.status+","
                + "'"+user.usuario+"',"
                + "'"+user.password
                +"')";
        try{
            System.out.println("query de insert:::::: "+query);
            conn=cn.getConection();
            ps=conn.prepareStatement(query);
            ps.executeUpdate();
            
        }catch(Exception ex){
            
        }
        return false;
    }
    @Override
    public boolean editar(User user) {
        String query="update users set "
                + "nombre='"+user.nombre+"',"
                + "apaterno='"+user.apaterno+"',"
                + "amaterno='"+user.amaterno+"',"
                + "correo='"+user.correo+"',"
                + "telefono='"+user.telefono+"',"
                + "password='"+user.password+"',"
                + "perfil="+user.perfil+","
                + "status="+user.status+","
                + "usuario='"+user.usuario+"' "
                + "where idUser="+user.idUser;
        try{
            System.out.println("query de mod:::::: "+query);
            conn=cn.getConection();
            ps=conn.prepareStatement(query);
            ps.executeUpdate();
            
        }catch(Exception ex){
            
        }
        return false;
    }
    @Override
    public boolean incrementaIntentos(User user) {
        String query="update acceso set "
                + "intentos="+user.getIntentos()+" "
                + "where idUser="+user.idUser;
        try{
            System.out.println("query de incrementa intentos:::::: "+query);
            conn=cn.getConection();
            ps=conn.prepareStatement(query);
            ps.executeUpdate();
            
        }catch(Exception ex){
            
        }
        return false;
    }
    @Override
    public boolean disableUser(User user) {
        String query="update users set "
                + "status=2 "
                + "where idUser="+user.idUser;
        try{
            System.out.println("query de bloqueo de usuario:::::: "+query);
            conn=cn.getConection();
            ps=conn.prepareStatement(query);
            ps.executeUpdate();
            
        }catch(Exception ex){
            
        }
        return false;
    }
    @Override
    public boolean setLimit(User user) {
        String query="update acceso set "
                + "intentos=5 "
                + "where idUser="+user.idUser;
        try{
            System.out.println("query de limite de usuario:::::: "+query);
            conn=cn.getConection();
            ps=conn.prepareStatement(query);
            ps.executeUpdate();
            
        }catch(Exception ex){
            
        }
        return false;
    }
    @Override
    public boolean eliminar(User user) {
        String query="delete from users "
                + "where idUser="+user.idUser;
        try{
            System.out.println("query de eliminar:::::: "+query);
            conn=cn.getConection();
            ps=conn.prepareStatement(query);
            ps.executeUpdate();
            
        }catch(Exception ex){
            
        }
        return false;
    }
}
