
package Controlador;

import Modelo.DAOUsuario;
import Modelo.MUsuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "CUsuario", urlPatterns = {"/CUsuario"})
public class CUsuario extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String accion = request.getParameter("accion");
        try{
            if(accion != null){
                switch(accion){
                    case "verificar":
                        verificar(request, response);
                        break;
                    case "cerrar":
                        cerrarsession(request, response);
                        break;
                    default:
                        response.sendRedirect("login.jsp");
                }
            }else{
                response.sendRedirect("login.jsp");
            }
        }catch(Exception e){
            try{
                this.getServletConfig().getServletContext().getRequestDispatcher("/administrador/mensaje.jsp").forward(request, response);
                
            }catch(Exception ex){
                System.out.println("ERROR" +ex.getMessage());
            }
            
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

    private void verificar(HttpServletRequest request, HttpServletResponse response) throws Exception{
        HttpSession sesion;
        DAOUsuario dao;
        MUsuario usuario;
        usuario = this.obtenerUsuario(request);
        dao = new DAOUsuario();
        usuario = dao.identificar(usuario);
        if(usuario !=null && usuario.getCargo().getNombreCargo().equals("Administrador")){
            sesion = request.getSession();
            sesion.setAttribute("usuario",usuario);
            response.sendRedirect(request.getContextPath() + "/vistas/administrador/administrador.jsp");
          
            
        }else if(usuario !=null && usuario.getCargo().getNombreCargo().equals("Secretaria")){
            sesion = request.getSession();
            sesion.setAttribute("usuario",usuario);
            response.sendRedirect(request.getContextPath() + "/vistas/secretaria/paciente.jsp");
        }else if(usuario !=null && usuario.getCargo().getNombreCargo().equals("Paciente")){
            sesion = request.getSession();
            sesion.setAttribute("usuario",usuario);
            response.sendRedirect(request.getContextPath() + "/vistas/pacienteregistrado/reservas.jsp");
        }else{
            request.setAttribute("msje", "Credenciales incorrectas");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        
        
    }

    private void cerrarsession(HttpServletRequest request, HttpServletResponse response) throws Exception{
        HttpSession sesion = request.getSession();
        sesion.setAttribute("MUsuario", null);
        sesion.invalidate();
        response.sendRedirect("login.jsp");
    }

    private MUsuario obtenerUsuario(HttpServletRequest request) {
        MUsuario u=new MUsuario();
        u.setNombreUsuario(request.getParameter("txtusuario"));
        u.setClave(request.getParameter("txtclave"));
        return u;
    }

}
