
package Modelo;

public class MCargo {
    private int idCargo;
    private String nombreCargo;
    private boolean estado;

    public MCargo() {
    }

    public MCargo(int idCargo, String nombreCargo, boolean estado) {
        this.idCargo = idCargo;
        this.nombreCargo = nombreCargo;
        this.estado = estado;
    }

    public MCargo(int idCargo, String nombreCargo) {
        this.idCargo = idCargo;
        this.nombreCargo = nombreCargo;
    }
    
    

    public int getIdCargo() {
        return idCargo;
    }

    public void setIdCargo(int idCargo) {
        this.idCargo = idCargo;
    }

    public String getNombreCargo() {
        return nombreCargo;
    }

    public void setNombreCargo(String nombreCargo) {
        this.nombreCargo = nombreCargo;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }
}
