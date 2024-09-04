
package Modelo;


public class MServicios {
    
    private int idServicios;
    private String nombre;
    private String descipcion;
    private String requisitos;
    private String indicacionesGenerales;

    public MServicios() {
    }

    public MServicios(int idServicios) {
        this.idServicios = idServicios;
    }
    
    
    public MServicios(int idServicios, String nombre, String descipcion, String requisitos, String indicacionesGenerales) {
        this.idServicios = idServicios;
        this.nombre = nombre;
        this.descipcion = descipcion;
        this.requisitos = requisitos;
        this.indicacionesGenerales = indicacionesGenerales;
    }

    public int getIdServicios() {
        return idServicios;
    }

    public void setIdServicios(int idServicios) {
        this.idServicios = idServicios;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescipcion() {
        return descipcion;
    }

    public void setDescipcion(String descipcion) {
        this.descipcion = descipcion;
    }

    public String getRequisitos() {
        return requisitos;
    }

    public void setRequisitos(String requisitos) {
        this.requisitos = requisitos;
    }

    public String getIndicacionesGenerales() {
        return indicacionesGenerales;
    }

    public void setIndicacionesGenerales(String indicacionesGenerales) {
        this.indicacionesGenerales = indicacionesGenerales;
    }
    
    
    
    
}
