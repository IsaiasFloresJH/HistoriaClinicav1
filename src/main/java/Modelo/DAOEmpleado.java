/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Modelo;

import Modelo.MEmpleado;
import Modelo.Conexion;

import Modelo.MPersona;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class DAOEmpleado extends Conexion{
    
    public int insertarEmpleado(MEmpleado emp){
        
        int res =0;
        try {
            
            this.conectar();
            System.out.println("cargaenviar");
            
            
            PreparedStatement prePersona = this.getConnection().prepareStatement("INSERT INTO persona (nombre, apellido, telefono, correo) VALUES (?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
            prePersona.setString(1, emp.getNombre());
            prePersona.setString(2, emp.getApellido());
            prePersona.setString(3, emp.getTelefono());
            prePersona.setString(4, emp.getCorreo());
            res = prePersona.executeUpdate();
            ResultSet rs = prePersona.getGeneratedKeys();
            if (rs.next()) {
                emp.setIdPersona(rs.getInt(1));
            }
            
            emp.setIdPersona(rs.getInt(1));
            String sqlPaciente = "INSERT INTO empleado (idpersona,idusuario) VALUES (?,?);";
            PreparedStatement prePaciente = this.getConnection().prepareStatement(sqlPaciente);
            prePaciente.setInt(1, emp.getIdPersona());
            prePaciente.setInt(2, emp.getIdUsuario());

            res = prePaciente.executeUpdate();

        } catch (SQLException e) {
            System.out.println("ERROR AL INSERTAR: " + e.getMessage());
        } finally {
            this.desconectar();
        }

        return res;
    }
            
    public ArrayList<MEmpleado> mostrarEmpleado() {
        ArrayList<MEmpleado> lista = new ArrayList<>();

        try {
            this.conectar();

            String sql = "SELECT idempleado, idpersona, idusuario FROM empleado";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            ResultSet rs;
            rs = pre.executeQuery();
            while (rs.next()) {
                do {
                    MEmpleado emp = new MEmpleado();
                    emp.setIdEmpleado(rs.getInt(1));
                    emp.setIdPersona(rs.getInt(2));
                    emp.setIdUsuario(rs.getInt(3));
                    int idpersona = rs.getInt(2);
                    String sqlPersona = "SELECT nombre, apellido, telefono, correo FROM persona WHERE idpersona = ?";
                    PreparedStatement prePersona = this.getConnection().prepareStatement(sqlPersona);
                    prePersona.setInt(1, idpersona);
                    ResultSet rsPersona = prePersona.executeQuery();

                    if (rsPersona.next()) {
                        emp.setNombre(rsPersona.getString(1));
                        emp.setApellido(rsPersona.getString(2));
                        emp.setTelefono(rsPersona.getString(3));
                        emp.setCorreo(rsPersona.getString(4));
                        
                    }


                    lista.add(emp);
                } while (rs.next()); 
            }

        } catch (SQLException e) {
            System.out.println("ERROR AL MOSTRAR: " + e.getMessage());
        } finally {
            this.desconectar();
        }

        return lista;
    }
    
    public int modificarEmpleado(MEmpleado emp) {
        int resP = 0;
        int resE = 0;
        try {
            this.conectar();
            
            String sqlRecuperarIdPersona = "SELECT idpersona FROM empleado WHERE idempleado = ?";
            int idpersona = -1; 
            try (PreparedStatement preRecuperarIdPersona = this.getConnection().prepareStatement(sqlRecuperarIdPersona)) {
                preRecuperarIdPersona.setInt(1, emp.getIdEmpleado());
                try (ResultSet rs = preRecuperarIdPersona.executeQuery()) {
                    if (rs.next()) {
                        idpersona = rs.getInt("idpersona");
                    }
                }
            }
            
            String sqlPersona = "UPDATE persona SET nombre = ?, apellido = ?, telefono = ?, correo = ? WHERE idpersona = ?";
            try (PreparedStatement prePersona = this.getConnection().prepareStatement(sqlPersona)) {
                prePersona.setString(1, emp.getNombre());
                prePersona.setString(2, emp.getApellido());
                prePersona.setString(3, emp.getTelefono());
                prePersona.setString(4, emp.getCorreo());
                prePersona.setInt(5, idpersona);

                resP = prePersona.executeUpdate();
            }

           
            String sqlEmpleado = "UPDATE empleado SET idusuario = ? WHERE idEmpleado = ?";
            try (PreparedStatement preEmp = this.getConnection().prepareStatement(sqlEmpleado)) {
                preEmp.setInt(1, emp.getIdUsuario());
                preEmp.setInt(2, emp.getIdEmpleado());
                
                resE = preEmp.executeUpdate();
            }

        } catch (SQLException e) {
            System.out.println("ERROR AL MODIFICAR " + e.getMessage());
        } finally {
            this.desconectar();
        }

        return resP + resE;
    }
    
    public int eliminarEmpleado(MEmpleado emp){
        int res =0;
        try {
            this.conectar();
            String sql="DELETE FROM empleado WHERE idEmpleado=?";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            pre.setInt(1, emp.getIdEmpleado());
            
            res = pre.executeUpdate();
        } catch (SQLException e) {
            System.out.println("ERROR AL ELIMINAR "+e.getMessage());
        } finally {
            this.desconectar();
        }
        
        return res;
    }
    
    public ArrayList<MEmpleado> extraerNEmpleado() {
        ArrayList<MEmpleado> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT idempleado, nombre, idusuario FROM tblempleado";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            ResultSet rs;
            rs = pre.executeQuery();
            while (rs.next()) {
                MEmpleado emp = new MEmpleado();
                emp.setIdEmpleado(rs.getInt(1));
                emp.setNombre(rs.getString(2));
                emp.setIdUsuario(rs.getInt(3));
                lista.add(emp);
            }

        } catch (SQLException e) {
            System.out.println("ERROR AL MOSTRAR" + e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }
    
}