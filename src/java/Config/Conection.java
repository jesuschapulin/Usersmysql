
package Config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Conection {
    Connection con;
    public Conection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empresa","root","");
        }catch(Exception ex){
            System.out.println("Fallo la conexion a la base de datos");
            ex.printStackTrace();
        }
    }
    public Connection getConection(){
        return con;
    }
    public static void main(String args[]){
        System.out.println("llamando conexion a mysql");
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/empresa","root","");  
            //here sonoo is database name, root is username and password  
            Statement stmt=con.createStatement();  
            ResultSet rs=stmt.executeQuery("select * from users");  
            while(rs.next())  
                System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
            con.close();  
         }catch(Exception e){ 
             System.out.println(e);
         }  
            
    }
}
