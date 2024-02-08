
package Model;


public class User {
    int idUser;
    String nombre;
    String apaterno;
    String amaterno;
    String usuario;
    String correo;
    String telefono;
    int perfil;
    int status;
    String password;
    int intentos;
    public User(){
        
    }
    public User(String nombre,String apaterno, String amaterno, String correo, String telefono, int perfil, int status, String usuario
                ,String password){
        this.nombre=nombre;
        this.apaterno=apaterno;
        this.amaterno=amaterno;
        this.correo=correo;
        this.telefono=telefono;
        this.perfil=perfil;
        this.status=status;
        this.usuario=usuario;
        this.password=password;
    }
    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public int getIntentos() {
        return intentos;
    }

    public void setIntentos(int intentos) {
        this.intentos = intentos;
    }

    
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String getApaterno() {
        return apaterno;
    }

    public void setApaterno(String apaterno) {
        this.apaterno = apaterno;
    }

    public String getAmaterno() {
        return amaterno;
    }

    public void setAmaterno(String amaterno) {
        this.amaterno = amaterno;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public int getPerfil() {
        return perfil;
    }

    public void setPerfil(int perfil) {
        this.perfil = perfil;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}
