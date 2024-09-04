
package Modelo;

public class MUsuario {
    
    private int idUsuario;
    private String nombreUsuario;
    private String clave;
    private boolean estado;
    private MCargo cargo;
    int cargos;
    String nombreCargo;

    public MUsuario() {
    }

    public MUsuario(int idUsuario, String nombreUsuario, String clave, boolean estado, MCargo cargo) {
        this.idUsuario = idUsuario;
        this.nombreUsuario = nombreUsuario;
        this.clave = clave;
        this.estado = estado;
        this.cargo = cargo;
    }

    public MUsuario(int idUsuario, String nombreUsuario, String clave, boolean estado, MCargo cargo, int cargos, String nombreCargo) {
        this.idUsuario = idUsuario;
        this.nombreUsuario = nombreUsuario;
        this.clave = clave;
        this.estado = estado;
        this.cargo = cargo;
        this.cargos = cargos;
        this.nombreCargo = nombreCargo;
    }

    public MUsuario(int idUsuario, String nombreUsuario, String clave, boolean estado, int cargos, String nombreCargo) {
        this.idUsuario = idUsuario;
        this.nombreUsuario = nombreUsuario;
        this.clave = clave;
        this.estado = estado;
        this.cargos = cargos;
        this.nombreCargo = nombreCargo;
    }
    
    

    
    
    

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public MCargo getCargo() {
        return cargo;
    }

    public void setCargo(MCargo cargo) {
        this.cargo = cargo;
    }

    public int getCargos() {
        return cargos;
    }

    public void setCargos(int cargos) {
        this.cargos = cargos;
    }
    
    

    public String getNombreCargo() {
        return nombreCargo;
    }

    public void setNombreCargo(String nombreCargo) {
        this.nombreCargo = nombreCargo;
    }
    
    
    
    
}
