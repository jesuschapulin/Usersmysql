
package Model;

import java.util.List;

/**
 *
 * @author wailf
 */
public interface Crud {
    public List listar();
    public User listUser(int idUser);
    public User acceso(String usuario,String password);
    public int validarIntentos(String usuario,String password);
    public int getUserState(String usuario,String password);
    public boolean registrar(User user);
    public boolean editar(User user);
    public boolean eliminar(User user);
    public boolean incrementaIntentos(User user);
    public boolean disableUser(User user);
    public boolean setLimit(User user);
}
