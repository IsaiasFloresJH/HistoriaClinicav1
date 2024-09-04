package Controlador;

import Modelo.DAOPaciente;
import Modelo.MPaciente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PacienteServlet", urlPatterns = {"/PacienteServlet"})
public class PacienteServlet extends HttpServlet{
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    try (PrintWriter out = response.getWriter()) {

        int codigo = Integer.parseInt(request.getParameter("txtCodigo"));
        String nombre = request.getParameter("txtNombre");
        String apellido = request.getParameter("txtApellido");
        String telefono = request.getParameter("txtNumero");
        String fechadenacimiento = request.getParameter("txtfechanaci");
        String genero = request.getParameter("txtgenero");
        String direccion = request.getParameter("txtdireccion");
        String ciudad = request.getParameter("txtciudad");
        String correo = request.getParameter("txtCorreo");
        String datosmedicos = request.getParameter("txtdatosmedicos");
        
        
        String mensaje = "Error";
        int res;

        MPaciente pa = new MPaciente( codigo, fechadenacimiento, genero, direccion, ciudad, datosmedicos, nombre, apellido, telefono, correo);
        DAOPaciente padao = new DAOPaciente();

        if (request.getParameter("btnGuardar") != null) {
            res = padao.registrarPaciente(pa);
            if (res != 0) {
                mensaje = "Paciente agregado";
            }
        }else if(request.getParameter("btnEditar")!=null){
                res = padao.modificarPaciente(pa);
                if(res != 0){
                    mensaje ="Paciente editado";
                }
            } else if(request.getParameter("btnEliminar") != null){
                res = padao.eliminarPaciente(pa);
                if(res != 0){
                    mensaje ="Registro eliminado";
                }
            }
            
        request.setAttribute("message", mensaje);
        request.getRequestDispatcher("/vistas/secretaria/paciente.jsp").forward(request, response);

    } catch (Exception e) {
        e.printStackTrace(); 
        System.out.println("ERROR:" + e.getLocalizedMessage());
    }
}

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }


}
