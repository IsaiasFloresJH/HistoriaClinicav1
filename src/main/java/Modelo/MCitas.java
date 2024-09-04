
package Modelo;

import java.time.LocalDateTime;

public class MCitas {
    
    protected  int idcita;
    protected  LocalDateTime fechacita;
    protected  MServicios mservicio;
    protected  int estado;
    protected LocalDateTime fechalimite;
    public MCitas() {
    }

    public MCitas(int idcita, LocalDateTime fechacita, int estado, LocalDateTime fechalimite) {
        this.idcita = idcita;
        this.fechacita = fechacita;
        this.estado = estado;
        this.fechalimite = fechalimite;
    }
    
    public MCitas(int idcita, LocalDateTime fechacita, MServicios mservicio, int estado, LocalDateTime fechalimite) {
        this.idcita = idcita;
        this.fechacita = fechacita;
        this.mservicio = mservicio;
        this.estado = estado;
        this.fechalimite = fechalimite;
    }

    public MCitas(LocalDateTime fechacita, MServicios mservicio, int estado, LocalDateTime fechalimite) {
        this.fechacita = fechacita;
        this.mservicio = mservicio;
        this.estado = estado;
        this.fechalimite = fechalimite;
    }

    public MCitas(LocalDateTime fechacita, int estado, LocalDateTime fechalimite) {
        this.fechacita = fechacita;
        this.estado = estado;
        this.fechalimite = fechalimite;
    }
    
    
    public int getIdcita() {
        return idcita;
    }

    public void setIdcita(int idcita) {
        this.idcita = idcita;
    }

    public LocalDateTime getFechacita() {
        return fechacita;
    }

    public void setFechacita(LocalDateTime fechacita) {
        this.fechacita = fechacita;
    }

    public MServicios getMservicio() {
        return mservicio;
    }

    public void setMservicio(MServicios mservicio) {
        this.mservicio = mservicio;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public LocalDateTime getFechalimite() {
        return fechalimite;
    }

    public void setFechalimite(LocalDateTime fechalimite) {
        this.fechalimite = fechalimite;
    }
    
    
}

