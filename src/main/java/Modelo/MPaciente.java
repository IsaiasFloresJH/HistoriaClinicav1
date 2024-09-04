package Modelo;

import java.util.Date;

public class MPaciente extends MPersona{
    private int idpaciente;
    private String fechadenacimiento;
    private String genero;
    private String direccion;
    private String ciudad;
    private String datosmedicos;

    public MPaciente() {
    }

    public MPaciente(int idpaciente, String fechadenacimiento, String genero, String direccion, String ciudad, String datosmedicos) {
        this.idpaciente = idpaciente;
        this.fechadenacimiento = fechadenacimiento;
        this.genero = genero;
        this.direccion = direccion;
        this.ciudad = ciudad;
        this.datosmedicos = datosmedicos;
    }

    public MPaciente(String fechadenacimiento, String genero, String direccion, String ciudad, String datosmedicos, String nombre, String apellido, String telefono, String correo) {
        super(nombre, apellido, telefono, correo);
        this.fechadenacimiento = fechadenacimiento;
        this.genero = genero;
        this.direccion = direccion;
        this.ciudad = ciudad;
        this.datosmedicos = datosmedicos;
    }

    public MPaciente(int idpaciente, String fechadenacimiento, String genero, String direccion, String ciudad, String datosmedicos, String nombre, String apellido, String telefono, String correo) {
        super(nombre, apellido, telefono, correo);
        this.idpaciente = idpaciente;
        this.fechadenacimiento = fechadenacimiento;
        this.genero = genero;
        this.direccion = direccion;
        this.ciudad = ciudad;
        this.datosmedicos = datosmedicos;
    }

    public MPaciente(int idpaciente, String fechadenacimiento, String genero, String direccion, String ciudad, String datosmedicos, int idPersona, String nombre, String apellido, String telefono, String correo) {
        super(idPersona, nombre, apellido, telefono, correo);
        this.idpaciente = idpaciente;
        this.fechadenacimiento = fechadenacimiento;
        this.genero = genero;
        this.direccion = direccion;
        this.ciudad = ciudad;
        this.datosmedicos = datosmedicos;
    }
    

    
    public int getIdpaciente() {
        return idpaciente;
    }

    public void setIdpaciente(int idpaciente) {
        this.idpaciente = idpaciente;
    }

    public String getFechadenacimiento() {
        return fechadenacimiento;
    }

    public void setFechadenacimiento(String fechadenacimiento) {
        this.fechadenacimiento = fechadenacimiento;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getDatosmedicos() {
        return datosmedicos;
    }

    public void setDatosmedicos(String datosmedicos) {
        this.datosmedicos = datosmedicos;
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

    public int getInt(int i) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    
    
}
