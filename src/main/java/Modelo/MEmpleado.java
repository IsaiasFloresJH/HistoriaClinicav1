package Modelo;

import Modelo.MPersona;


public class MEmpleado extends MPersona{
    private int idEmpleado;
    private int idUsuario;
    
    public MEmpleado() {
        
    }


    public MEmpleado(int idEmpleado, int idUsuario, int idPersona, String nombre, String apellido, String telefono, String correo) {
        super(idPersona, nombre, apellido, telefono, correo);
        this.idEmpleado = idEmpleado;
        this.idUsuario = idUsuario;
    }

    public MEmpleado(int idEmpleado, int idUsuario, String nombre, String apellido, String telefono, String correo) {
        super(nombre, apellido, telefono, correo);
        this.idEmpleado = idEmpleado;
        this.idUsuario = idUsuario;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }
    
    
    
}