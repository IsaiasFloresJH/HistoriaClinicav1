package Controlador;

import Modelo.DAOEmpleado;
import Modelo.MEmpleado;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "EmpleadoServlet", urlPatterns = {"/EmpleadoServlet"})
public class EmpleadoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            int codigo = Integer.parseInt(request.getParameter("txtCodigo"));
            String nombre = request.getParameter("txtNombre");
            String apellido = request.getParameter("txtApellido");
            String telefono = request.getParameter("txtTelefono");
            String correo = request.getParameter("txtCorreo");
            
            int idUsuario = 0;
            if (request.getParameter("txtIdUsuario") != null && !request.getParameter("txtIdUsuario").isEmpty()) {
              idUsuario = Integer.parseInt(request.getParameter("txtIdUsuario"));
            } else {
              idUsuario = -1;
            }
            
            String mensaje = "ERROR";
            int res;
            
            MEmpleado emp = new MEmpleado(codigo, idUsuario, nombre, apellido, telefono, correo);
            DAOEmpleado empDAO = new DAOEmpleado();
            
            if(request.getParameter("btnGuardar") != null){
                res = empDAO.insertarEmpleado(emp);
                if(res != 0){
                    mensaje ="Registro agregado";
                }
            } else if(request.getParameter("btnEditar") != null){
                res = empDAO.modificarEmpleado(emp);
                if(res != 0){
                    mensaje ="Registro modificado";
                }
            } else if(request.getParameter("btnEliminar") != null){
                res = empDAO.eliminarEmpleado(emp);
                if(res != 0){
                    mensaje ="Registro eliminado";
                }
            }
            
            request.setAttribute("message", mensaje);
            request.getRequestDispatcher("/vistas/administrador/CRUDEmpleado.jsp").forward(request, response);
            
        } catch(Exception  e){
            
            e.printStackTrace(); // Imprime la traza de la excepción
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