/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
public class regvac extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String form=null;
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Registration of People</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>REGISTRATION FORM</h1>");
            
            form="<form action='/Registration/Certificate' method='post'>"
                    + "NIN:"
                    + "<input type='number' name='nin'>"
                    +"<br>"
                    +"<br>"
                    + "Name:"
                    + "<input type='text' name='name'>"
                    +"<br>"
                    +"<br>"
                    + "Health Center:"
                    + "<input type='text' name='healthcenter'>"
                    +"<br>"
                    +"<br>"
                    + "Date of administration:"
                    + "<input type='date' name='date'>"
                    +"<br>"
                    +"<br>"
                    + "Next Date of administration:"
                    + "<input type='date' name='dates'>"
                    +"<br>"
                    +"<br>"
                    + "Batch Number:"
                    + "<input type='number' name='number'>"
                    +"<br>"
                    +"<br>"
                    + "Vaccine Administered:"
                    + "<input type='text' name='vaccine'>"
                    +"<br>"
                    +"<br>"
                    + "<input type='submit' name='Register' value='Register'>"
                    + "</form>";
            
            out.println(form);
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
