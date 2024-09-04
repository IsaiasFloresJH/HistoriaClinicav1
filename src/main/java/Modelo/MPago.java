
package Modelo;

import java.util.Date;


public class MPago {
     private int idPago;
    private String nombre;
    private String servicio;
    private int dni;
    private String monto;
    private String estado;
    private String metodoPago;
    private Date fecha;
    private MMulta multa;
    

    public MPago() {
        multa = new MMulta();
    }

    public MPago(int idPago, String nombre, String servicio, int dni, String monto, String estado, String metodoPago, Date fecha, MMulta multa) {
        this.idPago = idPago;
        this.nombre = nombre;
        this.servicio = servicio;
        this.dni = dni;
        this.monto = monto;
        this.estado = estado;
        this.metodoPago = metodoPago;
        this.fecha = fecha;
        this.multa = multa;
    }

    public int getIdPago() {
        return idPago;
    }

    public void setIdPago(int idPago) {
        this.idPago = idPago;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getServicio() {
        return servicio;
    }

    public void setServicio(String servicio) {
        this.servicio = servicio;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public String getMonto() {
        return monto;
    }

    public void setMonto(String monto) {
        this.monto = monto;
    }

    public MMulta getMulta() {
        return multa;
    }

    public void setMulta(MMulta multa) {
        this.multa = multa;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getMetodoPago() {
        return metodoPago;
    }

    public void setMetodoPago(String metodoPago) {
        this.metodoPago = metodoPago;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    
    
    
}
