
package Modelo;

import Modelo.Conexion;
import Modelo.MCargo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAOCargo extends Conexion{
    
    public ArrayList<MCargo> extraerNCargo() {
        ArrayList<MCargo> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT idCargo,nombreCargo FROM cargo";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            ResultSet rs;
            rs = pre.executeQuery();
            while (rs.next()) {
                MCargo car = new MCargo();
                car.setIdCargo(rs.getInt(1));
                car.setNombreCargo(rs.getString(2));
                lista.add(car);
            }

        } catch (SQLException e) {
            System.out.println("ERROR AL MOSTRAR" + e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }
}
