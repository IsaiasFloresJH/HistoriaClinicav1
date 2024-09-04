
package Modelo;

public class MOdontologocitas {
    
    private int idodontologocitas;
    private int duracion;
    private MCitas asignarcita;
    private MOdontologo elegirodontologo;
    
    
    
    public MOdontologocitas() {
    }
    
    

    public MOdontologocitas(int idodontologocitas, int duracion, MCitas asignarcita, MOdontologo elegirodontologo) {
        this.idodontologocitas = idodontologocitas;
        this.duracion = duracion;
        this.asignarcita = asignarcita;
        this.elegirodontologo = elegirodontologo;
    }
    
    
    public MOdontologocitas(int duracion, MCitas asignarcita, MOdontologo elegirodontologo) {
        this.duracion = duracion;
        this.asignarcita = asignarcita;
        this.elegirodontologo = elegirodontologo;
    }

    public MOdontologocitas(int duracion) {
        this.duracion = duracion;
    }
    

    public int getIdodontologocitas() {
        return idodontologocitas;
    }

    public void setIdodontologocitas(int idodontologocitas) {
        this.idodontologocitas = idodontologocitas;
    }

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public MCitas getAsignarcita() {
        return asignarcita;
    }

    public void setAsignarcita(MCitas asignarcita) {
        this.asignarcita = asignarcita;
    }

    public MOdontologo getElegirodontologo() {
        return elegirodontologo;
    }

    public void setElegirodontologo(MOdontologo elegirodontologo) {
        this.elegirodontologo = elegirodontologo;
    }
    
}
