
package Controlador;
import Modelo.DAOCitas;
import Modelo.MCitas;
import Modelo.MOdontologo;
import Modelo.MOdontologocitas;
import Modelo.MServicios;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SvCitasServlet", urlPatterns = {"/SvCitasServlet"})
public class SvCitasServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    try (PrintWriter out = response.getWriter()) {

        int codigo = Integer.parseInt(request.getParameter("txtCodigo"));
        int idodo = Integer.parseInt(request.getParameter("txtOdontologo"));
        int idser = Integer.parseInt(request.getParameter("txtServicio"));
        LocalDateTime fechacita = LocalDateTime.parse(request.getParameter("txtfechacita")+ ":00");
        int estado = Integer.parseInt(request.getParameter("txtEstado"));
        LocalDateTime fechalimite = LocalDateTime.parse(request.getParameter("txtfechalimite")+ ":00");
        int duracion = Integer.parseInt(request.getParameter("txtduracion"));
        String mensaje = "ERROR";
        int res;
        
        MServicios ser = new MServicios(idser);
        MCitas cita = new MCitas(fechacita,ser, estado, fechalimite);
        MOdontologo odon = new MOdontologo(idodo);
        MOdontologocitas odoci = new MOdontologocitas(duracion, cita, odon);
        
        odoci.setAsignarcita(cita);
        DAOCitas odocidao = new DAOCitas();

        if (request.getParameter("btnGuardar") != null) {
            res = odocidao.insertarCita(odoci);
            if (res != 0) {
                mensaje = "Registro agregado";
                System.out.println("funciona");
            }
        }else if(request.getParameter("btnEditar")!=null){
                res = odocidao.insertarCita(odoci);
                if(res != 0){
                    mensaje ="Registro modificado";
                }
            }else if(request.getParameter("btnEliminar")!=null){
                res = odocidao.insertarCita(odoci);
                if(res != 0){
                    mensaje ="Registro eliminado";
                }
            }
            
        request.setAttribute("message", mensaje);
        request.getRequestDispatcher("/vistas/secretaria/paciente.jsp").forward(request, response);

    } catch (Exception e) {
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
