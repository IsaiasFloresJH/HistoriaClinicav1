
package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexion {
    public static String url = "jdbc:mysql://localhost/bdsantalucia";
    public static String usuario = "root";
    public static String clave = "";
    private Connection conexion;

    public Connection conectar() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, clave);
            System.out.println("Conexion establecida..");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        return conexion;
    }

    public ResultSet ejecutarConsulta(String sql) throws SQLException {
        Statement st = conectar().createStatement();
        ResultSet rs = st.executeQuery(sql);
        return rs;
    }

    public int ejecutarActualizacionP(String sql, Object[] params) throws SQLException {
        PreparedStatement ps = conectar().prepareStatement(sql);
        // Definir los valores para los argumentos
        for (int i = 0; i < params.length; i++) {
            ps.setObject(i + 1, params[i]);
        }
        int r = ps.executeUpdate(); // Retorna la cantidad de registros actualizados
        ps.close();
        return r;
    }

    public void desconectar() {
        if (conexion != null) {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error al cerrar la conexión: " + e);
            }
        }
    }

    public Connection getConnection() {
        return conexion;
    }
}