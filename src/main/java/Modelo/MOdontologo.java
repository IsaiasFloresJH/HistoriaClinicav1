
package Modelo;


public class MOdontologo extends MPersona{
    
    private int idOdontologo;
    private String numeroRegistro;
    private String especialidad;
    private String direccion;

   
    public MOdontologo() {
        
        
    }

    public MOdontologo(int idOdontologo) {
        this.idOdontologo = idOdontologo;
    }

    
    public MOdontologo(int idOdontologo, String numeroRegistro, String especialidad, String direccion, int idPersona, String nombre, String apellido, String telefono, String correo) {
        super(idPersona, nombre, apellido, telefono, correo);
        this.idOdontologo = idOdontologo;
        this.numeroRegistro = numeroRegistro;
        this.especialidad = especialidad;
        this.direccion = direccion;
    }

    public MOdontologo(int idOdontologo, String nombre, String apellido, String numeroRegistro, String especialidad, String telefono, String correo, String direccion ) {
        super(nombre, apellido, telefono, correo);
        this.idOdontologo = idOdontologo;
        this.numeroRegistro = numeroRegistro;
        this.especialidad = especialidad;
        this.direccion = direccion;
    }

    public int getIdOdontologo() {
        return idOdontologo;
    }

    public void setIdOdontologo(int idOdontologo) {
        this.idOdontologo = idOdontologo;
    }

    public String getNumeroRegistro() {
        return numeroRegistro;
    }

    public void setNumeroRegistro(String numeroRegistro) {
        this.numeroRegistro = numeroRegistro;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
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


    