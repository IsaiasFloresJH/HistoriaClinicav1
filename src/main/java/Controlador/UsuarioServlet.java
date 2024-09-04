
package Controlador;

import Modelo.MUsuario;
import Modelo.DAOUsuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UsuarioServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            int codigo = Integer.parseInt(request.getParameter("txtCodigo"));
            String nombre = request.getParameter("txtNombre");
            String clave = request.getParameter("txtClave");
            String estado = request.getParameter("txtEstado");
            int cargoId = Integer.parseInt(request.getParameter("txtCargo"));
            String mensaje = "ERROR";
            
            int res;
            
            MUsuario usu = new MUsuario(codigo, nombre, clave, true,cargoId, nombre);
            DAOUsuario usuDAO = new DAOUsuario();
            
            if(request.getParameter("btnGuardar")!=null){
                res = usuDAO.insertarUsuario(usu);
                if(res != 0){
                    mensaje ="Registro agregado";
                }
            }else if(request.getParameter("btnEditar")!=null){
                res = usuDAO.modificarUsuario(usu);
                if(res != 0){
                    mensaje ="Registro modificado";
                }
            }else if(request.getParameter("btnEliminar")!=null){
                res = usuDAO.eliminarUsuario(usu);
                if(res != 0){
                    mensaje ="Registro eliminado";
                }
            }
            
            request.setAttribute("message", mensaje);
            request.getRequestDispatcher("/vistas/administrador/CRUDUsuario.jsp").forward(request, response);
            
        }catch(Exception e){
            System.out.println("ERROR:" +e.getLocalizedMessage());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
