
package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;

public class DAOCitas extends Conexion{
    
   public int insertarCita(MOdontologocitas cit) {

    int res = 0;
    try {
        this.conectar();

        // Insertar en la tabla `citas`
        String sql = "INSERT INTO `citas`(`fechacita`, `estado`, `fechalimite`, `idservicio`) VALUES (?,?,?,?)";
        PreparedStatement pre = this.getConnection().prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
        LocalDateTime fecha = cit.getAsignarcita().getFechacita();
        Timestamp timestamp = Timestamp.valueOf(fecha);
        pre.setTimestamp(1, timestamp);
        pre.setInt(2, cit.getAsignarcita().getEstado());
        LocalDateTime fechalimite = cit.getAsignarcita().getFechalimite();
        Timestamp tiempolimite = Timestamp.valueOf(fechalimite);
        pre.setTimestamp(3, tiempolimite);
        pre.setInt(4, cit.getAsignarcita().getMservicio().getIdServicios());
        res = pre.executeUpdate();
        ResultSet rs = pre.getGeneratedKeys();
        // Obtener el ID de la cita insertada
        if (rs.next()) {
            int idcita = rs.getInt(1);
            cit.getAsignarcita().setIdcita(idcita); // Asignar el ID obtenido
          }

        // Insertar en la tabla `odontologocitas`
        String sql2 = "INSERT INTO `odontologocitas`(`duracion`, `idodontologo`, `idcita`) VALUES (?,?,?)";
        PreparedStatement pre2 = this.getConnection().prepareStatement(sql2);
        pre2.setInt(1, cit.getDuracion());
        pre2.setInt(2, cit.getElegirodontologo().getIdOdontologo());
        pre2.setInt(3, cit.getAsignarcita().getIdcita());
        res = pre2.executeUpdate();
    } catch (SQLException e) {
        System.out.println("ERROR AL INSERTAR " + e.getMessage());
    } finally {
        this.desconectar();
    }

    return res;
}

   
   
   public ArrayList<MOdontologocitas> mostrarCita() {
        ArrayList<MOdontologocitas> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT citas.idcita, citas.fechacita, citas.estado, citas.fechalimite, citas.idservicio, odontologo.nombreodontologo, servicio.nombreservicio \" +\n" +
"                \"FROM citas INNER JOIN odontologo ON citas.idodontologo = odontologo.idodontologo \" +\n" +
"                \"INNER JOIN servicio ON citas.idservicio = servicio.idservicio";
            PreparedStatement pre = this.getConnection().prepareStatement(sql);
            ResultSet rs;
            rs = pre.executeQuery();
            while (rs.next()) {
                    int idcita = rs.getInt("idcita");
                    Timestamp fechacita = rs.getTimestamp("fechacita");
                    int estado = rs.getInt("estado");
                    Timestamp fechalimite = rs.getTimestamp("fechalimite");
                    int idservicio = rs.getInt("idservicio");
                    String nombreodontologo = rs.getString("nombreodontologo");
                    String nombreservicio = rs.getString("nombreservicio");

                    // Crear objeto MOdontologocitas
                    MOdontologocitas cit = new MOdontologocitas();

                    // Asignar valores al objeto
                    cit.getAsignarcita().setIdcita(idcita);
                    cit.getAsignarcita().setFechacita(fechacita.toLocalDateTime());
                    cit.getAsignarcita().setEstado(estado);
                    cit.getAsignarcita().setFechalimite(fechalimite.toLocalDateTime());
                    cit.getElegirodontologo().setNombre(nombreodontologo);
                    cit.getAsignarcita().getMservicio().setIdServicios(idservicio);
                    cit.getAsignarcita().getMservicio().setNombre(nombreservicio);

                    lista.add(cit);
                  }

        } catch (SQLException e) {
            System.out.println("ERROR AL MOSTRAR" + e.getMessage());
        } finally {
            this.desconectar();
        }
        return lista;
    }
    
}
