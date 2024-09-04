
package Modelo;

import Modelo.Conexion;
import Modelo.MOdontologo;
import Modelo.MPersona;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DAOOdontologo extends Conexion{
    
    public int insertarOdontologo(MOdontologo odo){
        
        int res =0;
        try {
            this.conectar();
            System.out.println("cargaenviar");
            String sql ="INSERT INTO persona (nombre, apellido, telefono, correo) VALUES (?,?,?,?);";            
            PreparedStatement prePersona = this.getConnection().prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            
            prePersona.setString(1, odo.getNombre());
            prePersona.setString(2, odo.getApellido());
            prePersona.setString(3, odo.getTelefono());
            prePersona.setString(4, odo.getCorreo());
            res = prePersona.executeUpdate();
            
            ResultSet rs = prePersona.getGeneratedKeys();
            if(rs.next()){
                odo.setIdPersona(rs.getInt(1));
            }
            
            odo.setIdPersona(rs.getInt(1));
            String sqlOdontologo = "INSERT INTO odontologo (numeroRegistro, especialidad, direccion, personaId) VALUES (?,?,?,?);";
            PreparedStatement preOdon = this.getConnection().prepareStatement(sqlOdontologo);
            preOdon.setString(1, odo.getNumeroRegistro());
            preOdon.setString(2, odo.getEspecialidad());
            preOdon.setString(3, odo.getDireccion());
            preOdon.setInt(4, odo.getIdPersona());
            res = preOdon.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println("ERROR AL INSERTAR "+e.getMessage());
        } finally {
            this.desconectar();
        }
        
        return res;
    }
    
    public ArrayList<MOdontologo>mostrarOdontologo(){
        ArrayList<MOdontologo> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql ="SELECT * FROM odontologo";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            ResultSet rs;
            rs = pre.executeQuery();
            while(rs.next()){
                do {                    
                    MOdontologo odo = new MOdontologo();
                    odo.setIdOdontologo(rs.getInt(1));
                    odo.setNumeroRegistro(rs.getString(2));
                    odo.setEspecialidad(rs.getString(3));
                    odo.setDireccion(rs.getString(4));
                    int personaId = rs.getInt(5);
                    String sqlPersona = "SELECT nombre, apellido, telefono, correo FROM persona WHERE idpersona = ?";
                    PreparedStatement prePersona = this.getConnection().prepareStatement(sqlPersona);
                    prePersona.setInt(1,personaId);
                    ResultSet rsPersona = prePersona.executeQuery();
                    if (rsPersona.next()) {
                        odo.setNombre(rsPersona.getString(1));
                        odo.setApellido(rsPersona.getString(2));
                        odo.setTelefono(rsPersona.getString(3));
                        odo.setCorreo(rsPersona.getString(4));
                    }
                    lista.add(odo);
                } while (rs.next());
                
            }
            
        } catch (SQLException e) {
            System.out.println("ERROR AL MOSTRAR"+e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }
    
    public int modificarOdontologo(MOdontologo odo) {
        int resP = 0;
        int resO = 0;
        try {
            this.conectar();
            
            String sqlRecuperarIdPersona = "SELECT personaId FROM odontologo WHERE idodontologo = ?";
            int personaId = -1; 
            try (PreparedStatement preRecuperarIdPersona = this.getConnection().prepareStatement(sqlRecuperarIdPersona)) {
                preRecuperarIdPersona.setInt(1, odo.getIdOdontologo());
                try (ResultSet rs = preRecuperarIdPersona.executeQuery()) {
                    if (rs.next()) {
                        personaId = rs.getInt("personaId");
                    }
                }
            }
            
            String sqlPersona = "UPDATE persona SET nombre = ?, apellido = ?, telefono = ?, correo = ? WHERE idpersona = ?";
            try (PreparedStatement prePersona = this.getConnection().prepareStatement(sqlPersona)) {
                prePersona.setString(1, odo.getNombre());
                prePersona.setString(2, odo.getApellido());
                prePersona.setString(3, odo.getTelefono());
                prePersona.setString(4, odo.getCorreo());
                prePersona.setInt(5, personaId);

                resP = prePersona.executeUpdate();
            }

           
            String sqlOdontologo = "UPDATE odontologo SET numeroRegistro = ?, especialidad = ?, direccion = ? WHERE idOdontologo = ?";
            try (PreparedStatement preOdon = this.getConnection().prepareStatement(sqlOdontologo)) {
                preOdon.setString(1, odo.getNumeroRegistro());
                preOdon.setString(2, odo.getEspecialidad());
                preOdon.setString(3, odo.getDireccion());
                preOdon.setInt(4, odo.getIdOdontologo());

                resO = preOdon.executeUpdate();
            }

        } catch (SQLException e) {
            System.out.println("ERROR AL MODIFICAR " + e.getMessage());
        } finally {
            this.desconectar();
        }

        return resP + resO;
    }

    
    public int eliminarOdontologo(MOdontologo odo){
        int res =0;
        try {
            this.conectar();
            String sql="DELETE FROM odontologo WHERE idOdontologo=?";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            pre.setInt(1, odo.getIdOdontologo());
            
            res = pre.executeUpdate();
        } catch (SQLException e) {
            System.out.println("ERROR AL ELIMINAR "+e.getMessage());
        } finally {
            this.desconectar();
        }
        
        return res;
    }
    
    public ArrayList<MOdontologo> extraerNOdontologo() {
        ArrayList<MOdontologo> lista = new ArrayList<>();

        try {
          this.conectar();
          String sql = "SELECT odontologo.idodontologo, persona.nombre FROM odontologo INNER JOIN persona ON odontologo.personaId = persona.idpersona";
          PreparedStatement pre = this.getConnection().prepareStatement(sql);
          ResultSet rs;
          rs = pre.executeQuery();

          while (rs.next()) {
            MOdontologo odo = new MOdontologo();
            odo.setIdOdontologo(rs.getInt(1));
            odo.setNombre(rs.getString(2));
            lista.add(odo);
          }

        } catch (SQLException e) {
          System.out.println("ERROR AL MOSTRAR" + e.getMessage());
        } finally {
          this.desconectar();
        }

        return lista;
      }

    
}
