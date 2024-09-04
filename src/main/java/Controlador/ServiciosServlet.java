
package Controlador;

import Modelo.DAOServicios;
import Modelo.MServicios;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ServiciosServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            int codigo = Integer.parseInt(request.getParameter("txtCodigo"));
            String nombre = request.getParameter("txtNombre");
            String descripcion = request.getParameter("txtDescripcion");
            String requisitos = request.getParameter("txtRequisitos");
            String indicaciones = request.getParameter("txtIndicaciones");
            String mensaje = "ERROR EN SERVLET";
            
            int res;
            
            MServicios serv = new MServicios(codigo, nombre, descripcion, requisitos, indicaciones);
            DAOServicios servDAO = new DAOServicios();
            
            if(request.getParameter("btnGuardar")!=null){
                res = servDAO.insertarServicios(serv);
                if(res != 0){
                    mensaje ="Registro agregado";
                }
            }else if(request.getParameter("btnEditar")!=null){
                res = servDAO.modificarServicios(serv);
                if(res != 0){
                    mensaje ="Registro modificado";
                }
            }else if(request.getParameter("btnEliminar")!=null){
                res = servDAO.eliminarServicios(serv);
                if(res != 0){
                    mensaje ="Registro eliminado";
                }
            }
            
            request.setAttribute("message", mensaje);
            request.getRequestDispatcher("/vistas/administrador/CRUDServicios.jsp").forward(request, response);
            
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
