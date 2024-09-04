
package Modelo;

import Modelo.Conexion;
import Modelo.MServicios;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DAOServicios extends Conexion{
    
    public int insertarServicios(MServicios serv){
        
        int res =0;
        try {
            this.conectar();
            String sql ="INSERT INTO servicios (nombre, descripcion, requisitos, indicacionesGenerales) VALUES (?,?,?,?)";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            pre.setString(1, serv.getNombre());
            pre.setString(2, serv.getDescipcion());
            pre.setString(3, serv.getRequisitos());
            pre.setString(4, serv.getIndicacionesGenerales());
            
            res = pre.executeUpdate();
        } catch (SQLException e) {
            System.out.println("ERROR AL INSERTAR "+e.getMessage());
        } finally {
            this.desconectar();
        }
        
        return res;
    }
    
    
    public ArrayList<MServicios>mostrarServicios(){
        ArrayList<MServicios> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql ="SELECT * FROM servicios";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            ResultSet rs;
            rs = pre.executeQuery();
            while(rs.next()){
                MServicios serv = new MServicios();
                serv.setIdServicios(rs.getInt(1));
                serv.setNombre(rs.getString(2));
                serv.setDescipcion(rs.getString(3));
                serv.setRequisitos(rs.getString(4));
                serv.setIndicacionesGenerales(rs.getString(5));
                
                lista.add(serv);
            }
            
        } catch (SQLException e) {
            System.out.println("ERROR AL MOSTRAR"+e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }
    
    public int modificarServicios(MServicios serv){
        int res=0;
        try {
            this.conectar();
            String sql ="UPDATE servicios SET nombre=?, descripcion=?, requisitos=?, indicacionesGenerales=? WHERE idServicios=?";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            pre.setString(1, serv.getNombre());
            pre.setString(2, serv.getDescipcion());
            pre.setString(3, serv.getRequisitos());
            pre.setString(4, serv.getIndicacionesGenerales());
            pre.setInt(5, serv.getIdServicios());
            
            res = pre.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println("ERROR AL MODIFICAR "+e.getMessage());
        } finally {
            this.desconectar();
        }
        return res;
    }
    
    
    public int eliminarServicios(MServicios serv){
        int res =0;
        try {
            this.conectar();
            String sql="DELETE FROM servicios WHERE idServicios=?";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            pre.setInt(1, serv.getIdServicios());
            
            res = pre.executeUpdate();
        } catch (SQLException e) {
            System.out.println("ERROR AL ELIMINAR "+e.getMessage());
        } finally {
            this.desconectar();
        }
        
        return res;
    }
    
    public ArrayList<MServicios> extraerNServicio() {
        ArrayList<MServicios> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT idServicios,nombre FROM servicios";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            ResultSet rs;
            rs = pre.executeQuery();
            while (rs.next()) {
                MServicios ser = new MServicios();
                ser.setIdServicios(rs.getInt(1));
                ser.setNombre(rs.getString(2));
                lista.add(ser);
            }

        } catch (SQLException e) {
            System.out.println("ERROR AL MOSTRAR" + e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }
    
    
    
    
    
    
    
}
