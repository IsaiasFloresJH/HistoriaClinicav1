package Modelo;

import Modelo.Conexion;
import Modelo.MPaciente;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



public class DAOPaciente extends Conexion {

    public int registrarPaciente(MPaciente mpa) {
        int res = 0;
        try {
            this.conectar();
            System.out.println("Cargando registro de paciente...");

            PreparedStatement prePersona = this.getConnection().prepareStatement("INSERT INTO persona (nombre, apellido, telefono, correo) VALUES (?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
            prePersona.setString(1, mpa.getNombre());
            prePersona.setString(2, mpa.getApellido());
            prePersona.setString(3, mpa.getTelefono());
            prePersona.setString(4, mpa.getCorreo());
            res = prePersona.executeUpdate();
            ResultSet rs = prePersona.getGeneratedKeys();
            if (rs.next()) {
                mpa.setIdPersona(rs.getInt(1));
            }
            
            mpa.setIdPersona(rs.getInt(1));
            String sqlPaciente = "INSERT INTO paciente (fechadenacimiento, genero, direccion, ciudad, datosmedicos, idpersona) VALUES (?,?,?,?,?,?)";
            PreparedStatement prePaciente = this.getConnection().prepareStatement(sqlPaciente);
            prePaciente.setString(1, mpa.getFechadenacimiento());
            prePaciente.setString(2, mpa.getGenero());
            prePaciente.setString(3, mpa.getDireccion());
            prePaciente.setString(4, mpa.getCiudad());
            prePaciente.setString(5, mpa.getDatosmedicos());
            prePaciente.setInt(6, mpa.getIdPersona());

            res = prePaciente.executeUpdate();

        } catch (SQLException e) {
            System.out.println("ERROR AL INSERTAR: " + e.getMessage());
        } finally {
            this.desconectar();
        }

        return res;
    }
    
    public ArrayList<MPaciente> mostrarPaciente() {
        ArrayList<MPaciente> lista = new ArrayList<>();

        try {
            this.conectar();

            String sql = "SELECT `idpaciente`, `fechadenacimiento`, `genero`, `direccion`, `ciudad`, `datosmedicos`, `idpersona` FROM `paciente`";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            ResultSet rs;
            rs = pre.executeQuery();
            while (rs.next()) {
                do {
                    MPaciente pa = new MPaciente();
                    pa.setIdpaciente(rs.getInt(1));
                    pa.setFechadenacimiento(rs.getString(2));
                    pa.setGenero(rs.getString(3));
                    pa.setDireccion(rs.getString(4));
                    pa.setCiudad(rs.getString(5));
                    pa.setDatosmedicos(rs.getString(6));
                    int idpersona = rs.getInt(7);
                    String sqlPersona = "SELECT `nombre`, `apellido`, `telefono`, `correo` FROM `persona` WHERE `idpersona` = ?";
                    PreparedStatement prePersona = this.getConnection().prepareStatement(sqlPersona);
                    prePersona.setInt(1, idpersona);
                    ResultSet rsPersona = prePersona.executeQuery();

                    if (rsPersona.next()) {
                        pa.setNombre(rsPersona.getString(1));
                        pa.setApellido(rsPersona.getString(2));
                        pa.setTelefono(rsPersona.getString(3));
                        pa.setCorreo(rsPersona.getString(4));
                    }


                    lista.add(pa);
                } while (rs.next()); 
            }

        } catch (SQLException e) {
            System.out.println("ERROR AL MOSTRAR: " + e.getMessage());
        } finally {
            this.desconectar();
        }

        return lista;
    }
    
    public int modificarPaciente(MPaciente mpa) {
        int resP = 0;
        int resPa = 0;
        try {
            this.conectar();
            
            String sqlRecuperarIdPaciente = "SELECT idpersona FROM paciente WHERE idpaciente = ?";
            int idpersona = -1; 
            try (PreparedStatement preRecuperarIdPaciente = this.getConnection().prepareStatement(sqlRecuperarIdPaciente)) {
                preRecuperarIdPaciente.setInt(1, mpa.getIdpaciente());
                try (ResultSet rs = preRecuperarIdPaciente.executeQuery()) {
                    if (rs.next()) {
                        idpersona = rs.getInt("idpersona");
                    }
                }
            }
            
            String sqlPersona = "UPDATE persona SET nombre = ?, apellido = ?, telefono = ?, correo = ? WHERE idpersona = ?";
            try (PreparedStatement prePersona = this.getConnection().prepareStatement(sqlPersona)) {
                prePersona.setString(1, mpa.getNombre());
                prePersona.setString(2, mpa.getApellido());
                prePersona.setString(3, mpa.getTelefono());
                prePersona.setString(4, mpa.getCorreo());
                prePersona.setInt(5, idpersona);

                resP = prePersona.executeUpdate();
            }

           
            String sqlPaciente = "UPDATE paciente SET fechadenacimiento = ?, genero = ?, direccion = ?, ciudad = ?, datosmedicos  = ? WHERE idpaciente = ?";
            try (PreparedStatement prePaciente = this.getConnection().prepareStatement(sqlPaciente)) {
                prePaciente.setString(1, mpa.getFechadenacimiento());
                prePaciente.setString(2, mpa.getGenero());
                prePaciente.setString(3, mpa.getDireccion());
                prePaciente.setString(4, mpa.getCiudad());
                prePaciente.setString(5, mpa.getDatosmedicos());
                prePaciente.setInt(6, mpa.getIdpaciente());
                
                resPa = prePaciente.executeUpdate();
            }

        } catch (SQLException e) {
            System.out.println("ERROR AL MODIFICAR " + e.getMessage());
        } finally {
            this.desconectar();
        }

        return resP + resPa;
    }




    public int eliminarPaciente(MPaciente mpa){
        int res =0;
        try {
            this.conectar();
            String sql="DELETE FROM paciente WHERE idpaciente=?";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            pre.setInt(1, mpa.getIdpaciente());
            
            res = pre.executeUpdate();
        } catch (SQLException e) {
            System.out.println("ERROR AL ELIMINAR "+e.getMessage());
        } finally {
            this.desconectar();
        }
        
        return res;
    }


    public ArrayList<MPaciente> extraerNPaciente() {
        ArrayList<MPaciente> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT idpaciente, fechadenacimiento, genero FROM tblpaciente";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            ResultSet rs;
            rs = pre.executeQuery();
            while (rs.next()) {
                MPaciente pac = new MPaciente();
                pac.setIdpaciente(rs.getInt(1));
                pac.setFechadenacimiento(rs.getString(2));
                pac.setGenero(rs.getString(3));
                lista.add(pac);
            }

        } catch (SQLException e) {
            System.out.println("ERROR AL MOSTRAR" + e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }


}
