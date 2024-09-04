
package Controlador;

import Modelo.DAOPago;
import Modelo.MMulta;
import Modelo.MPago;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "PagoServlet", urlPatterns = {"/PagoServlet"})
public class PagoServlet extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        int idPago = Integer.parseInt(request.getParameter("txtIdPago"));
            String nombre = request.getParameter("txtNombre");
            String servicio = request.getParameter("txtServicio");
            int dni = Integer.parseInt(request.getParameter("txtDni"));
            String monto = request.getParameter("txtMonto");
            String estado = request.getParameter("txtEstado");
            String metodoPago = request.getParameter("txtmetodoPago");
            Date fecha = new Date(); // Aquí deberías obtener la fecha correcta
            
            // Crear una instancia de MMulta para asociarla al pago
            MMulta multa = new MMulta(/* Parámetros para la creación de la multa */);

            MPago pago = new MPago(idPago, nombre, servicio, dni, monto, estado, metodoPago, fecha, multa);
            DAOPago pagoDAO = new DAOPago();
            
            String mensaje = "ERROR";
            int res;
            
            if (request.getParameter("btnGuardar") != null) {
                res = pagoDAO.insertarPago(pago);
                if (res != 0) {
                    mensaje = "Registro agregado";
                }
            } else if (request.getParameter("btnEditar") != null) {
                res = pagoDAO.modificarPago(pago);
                if (res != 0) {
                    mensaje = "Registro modificado";
                }
            } else if (request.getParameter("btnEliminar") != null) {
                res = pagoDAO.eliminarPago(pago);
                if (res != 0) {
                    mensaje = "Registro eliminado";
                }
            }

            request.setAttribute("message", mensaje);
            request.getRequestDispatcher("/vistas/agregarpagosecretaria.jsp").forward(request, response);

        } catch (Exception e) {
            System.out.println("ERROR:" + e.getLocalizedMessage());
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
