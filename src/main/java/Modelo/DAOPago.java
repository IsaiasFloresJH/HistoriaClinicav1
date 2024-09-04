package Modelo;

import Modelo.MPago;
import Modelo.MMulta;
import Modelo.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

public class DAOPago extends Conexion {

    public int insertarPago(MPago pago) {
        int res = 0;
        try {
            this.conectar();
            String sql = "INSERT INTO tblpago (nombre, servicio, dni, monto, estado, metodoPago, fecha) VALUES (?,?,?,?,?,?,?)";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            pre.setString(1, pago.getNombre());
            pre.setString(2, pago.getServicio());
            pre.setInt(3, pago.getDni());
            pre.setString(4, pago.getMonto());
            pre.setString(5, pago.getEstado());
            pre.setString(6, pago.getMetodoPago());
            pre.setDate(7, new java.sql.Date(pago.getFecha().getTime())); // Conversion de Date a java.sql.Date

            res = pre.executeUpdate();
        } catch (SQLException e) {
            System.out.println("ERROR AL INSERTAR " + e.getMessage());
        } finally {
            this.desconectar();
        }
        return res;
    }

    public ArrayList<MPago> mostrarPago() {
        ArrayList<MPago> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT * FROM tblpago";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            ResultSet rs;
            rs = pre.executeQuery();
            while (rs.next()) {
                MPago pago = new MPago();
                pago.setIdPago(rs.getInt(1));
                pago.setNombre(rs.getString(2));
                pago.setServicio(rs.getString(3));
                pago.setDni(rs.getInt(4));
                pago.setMonto(rs.getString(5));
                pago.setEstado(rs.getString(6));
                pago.setMetodoPago(rs.getString(7));
                pago.setFecha(rs.getDate(8));

                lista.add(pago);
            }
        } catch (SQLException e) {
            System.out.println("ERROR AL MOSTRAR" + e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }

    public int modificarPago(MPago pago) {
        int res = 0;
        try {
            this.conectar();
            String sql = "UPDATE tblpago SET nombre=?, servicio=?, dni=?, monto=?, estado=?, metodoPago=?, fecha=? WHERE idPago=?";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);

            pre.setString(1, pago.getNombre());
            pre.setString(2, pago.getServicio());
            pre.setInt(3, pago.getDni());
            pre.setString(4, pago.getMonto());
            pre.setString(5, pago.getEstado());
            pre.setString(6, pago.getMetodoPago());
            pre.setDate(7, new java.sql.Date(pago.getFecha().getTime())); // Conversion de Date a java.sql.Date
            pre.setInt(8, pago.getIdPago());

            res = pre.executeUpdate();
        } catch (SQLException e) {
            System.out.println("ERROR AL MODIFICAR " + e.getMessage());
        } finally {
            this.desconectar();
        }
        return res;
    }

    public int eliminarPago(MPago pago) {
        int res = 0;
        try {
            this.conectar();
            String sql = "DELETE FROM tblpago WHERE idPago=?";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            pre.setInt(1, pago.getIdPago());

            res = pre.executeUpdate();
        } catch (SQLException e) {
            System.out.println("ERROR AL ELIMINAR " + e.getMessage());
        } finally {
            this.desconectar();
        }
        return res;
    }

    public MPago extraerPago(int idPago) {
        MPago pago = new MPago();
        try {
            this.conectar();
            String sql = "SELECT * FROM tblpago WHERE idPago=?";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            pre.setInt(1, idPago);
            ResultSet rs;
            rs = pre.executeQuery();
            if (rs.next()) {
                pago.setIdPago(rs.getInt(1));
                pago.setNombre(rs.getString(2));
                pago.setServicio(rs.getString(3));
                pago.setDni(rs.getInt(4));
                pago.setMonto(rs.getString(5));
                pago.setEstado(rs.getString(6));
                pago.setMetodoPago(rs.getString(7));
                pago.setFecha(rs.getDate(8));
            }
        } catch (SQLException e) {
            System.out.println("ERROR AL EXTRAER " + e.getMessage());
        } finally {
            this.desconectar();
        }
        return pago;
    }

   // Otros métodos en DAOPago para manipular MMulta asociada a un pago
public int asociarMulta(MPago pago, MMulta multa) {
    int res = 0;
    try {
        this.conectar();
        String sql = "UPDATE tblpago SET multa_fechaDeMulta=?, multa_monto=?, multa_motivoDeMulta=? WHERE idPago=?";
        PreparedStatement pre = this.getConnection().prepareStatement(sql);

        pre.setDate(1, new java.sql.Date(multa.getFechaDeMulta().getTime())); // Conversion de Date a java.sql.Date
        pre.setDouble(2, multa.getMonto());
        pre.setString(3, multa.getMotivoDeMulta());
        pre.setInt(4, pago.getIdPago());

        res = pre.executeUpdate();
    } catch (SQLException e) {
        System.out.println("ERROR AL ASOCIAR MULTA " + e.getMessage());
    } finally {
        this.desconectar();
    }
    return res;
}

public int desasociarMulta(int idPago) {
    int res = 0;
    try {
        this.conectar();
        String sql = "UPDATE tblpago SET multa_fechaDeMulta=null, multa_monto=null, multa_motivoDeMulta=null WHERE idPago=?";
        PreparedStatement pre = this.getConnection().prepareStatement(sql);
        pre.setInt(1, idPago);

        res = pre.executeUpdate();
    } catch (SQLException e) {
        System.out.println("ERROR AL DESASOCIAR MULTA " + e.getMessage());
    } finally {
        this.desconectar();
    }
    return res;
}
}
