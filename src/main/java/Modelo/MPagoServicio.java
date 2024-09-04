
package Modelo;

import java.util.Date;


public class MPagoServicio {
    private MPago pago;
    private MServicios servicio;
    private int numeroCitas;
    private Date fechaLimitePago;

    public MPagoServicio() {
    }

    public MPagoServicio(MPago pago, MServicios servicio, int numeroCitas, Date fechaLimitePago) {
        this.pago = pago;
        this.servicio = servicio;
        this.numeroCitas = numeroCitas;
        this.fechaLimitePago = fechaLimitePago;
    }

    public MPago getPago() {
        return pago;
    }

    public void setPago(MPago pago) {
        this.pago = pago;
    }

    public MServicios getServicio() {
        return servicio;
    }

    public void setServicio(MServicios servicio) {
        this.servicio = servicio;
    }

    public int getNumeroCitas() {
        return numeroCitas;
    }

    public void setNumeroCitas(int numeroCitas) {
        this.numeroCitas = numeroCitas;
    }

    public Date getFechaLimitePago() {
        return fechaLimitePago;
    }

public void setFechaLimitePago(Date fechaLimitePago) {
    this.fechaLimitePago = fechaLimitePago;
}

}
