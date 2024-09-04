
package Modelo;

import Modelo.Conexion;
import Modelo.MCargo;
import Modelo.MUsuario;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAOUsuario extends Conexion{
    
    
    public int insertarUsuario(MUsuario usu) {
        int res =0;
        try {
            this.conectar();
            System.out.println("cargaenviar");
            String sql ="INSERT INTO usuario( nombreUsuario, clave, estado, idCargo) VALUES (?,?,?,?)";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            pre.setString(1, usu.getNombreUsuario());
            pre.setString(2, usu.getClave());
            pre.setBoolean(3, usu.isEstado());
            pre.setInt(4, usu.getCargos());
            
            res = pre.executeUpdate();
        } catch (SQLException e) {
            System.out.println("ERROR AL INSERTAR "+e.getMessage());
        } finally {
            this.desconectar();
        }
        
        return res;  
    }
    
    
    public ArrayList<MUsuario> mostrarUsuario() {
        ArrayList<MUsuario> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT u.idUsuario, u.nombreUsuario, u.clave, u.estado, u.idCargo, car.nombreCargo FROM usuario u INNER JOIN cargo car ON u.idCargo = car.idCargo;";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            ResultSet rs;
            rs = pre.executeQuery();
            while (rs.next()) {
                MUsuario usu = new MUsuario();
                usu.setIdUsuario(rs.getInt(1));
                usu.setNombreUsuario(rs.getString(2));
                usu.setClave(rs.getString(3));
                usu.setEstado(rs.getBoolean(4));
                usu.setCargos(rs.getInt(5));
                usu.setNombreCargo(rs.getString(6));
                
              
                lista.add(usu);
            }

        } catch (SQLException e) {
            System.out.println("ERROR AL MOSTRAR" + e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }
    
    
    
    
    public MUsuario identificar(MUsuario user) throws Exception{
        MUsuario usu = null;
        Conexion con;
        Connection cn = null;
        Statement st = null;
        ResultSet rs = null;
        String sql = "SELECT U.idUsuario, C.nombreCargo FROM usuario U "
                + "INNER JOIN cargo C ON U.idCargo=C.idCargo "
                + "WHERE U.estado = 1 AND U.nombreUsuario = '"+user.getNombreUsuario()+"'"
                + "AND U.clave = '"+user.getClave()+"'";
        con = new Conexion();
        
        try {
            cn = con.conectar();
            st = cn.createStatement();
            rs = st.executeQuery(sql);
            if(rs.next()== true){
                usu = new MUsuario();
                usu.setIdUsuario(rs.getInt("idUsuario"));
                usu.setCargo(new MCargo());
                usu.getCargo().setNombreCargo(rs.getString("nombreCargo"));
                usu.setEstado(true);
            }
        } catch (Exception e) {
            System.out.println("Error"+e.getMessage());
        }finally{
            if(rs !=null && rs.isClosed() == false){
                rs.close();
            }
            rs = null;
            if(st !=null && st.isClosed() == false){
                st.close();
            }
            st = null;
            if(cn !=null && cn.isClosed() == false){
                cn.close();
            }
            cn = null;
            
        }
        return usu;
        
    } 

    public int modificarUsuario(MUsuario usu) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public int eliminarUsuario(MUsuario usu) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
