

package Modelo;

import java.util.Date;

public class MMulta {
    private Date fechaDeMulta;
    private double monto;
    private String motivoDeMulta;

    public MMulta() {
    }

    public MMulta(Date fechaDeMulta, double monto, String motivoDeMulta) {
        this.fechaDeMulta = fechaDeMulta;
        this.monto = monto;
        this.motivoDeMulta = motivoDeMulta;
    }

    public Date getFechaDeMulta() {
        return fechaDeMulta;
    }

    public void setFechaDeMulta(Date fechaDeMulta) {
        this.fechaDeMulta = fechaDeMulta;
    }

    public double getMonto() {
        return monto;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }

    public String getMotivoDeMulta() {
        return motivoDeMulta;
    }

    public void setMotivoDeMulta(String motivoDeMulta) {
        this.motivoDeMulta = motivoDeMulta;
    }
}