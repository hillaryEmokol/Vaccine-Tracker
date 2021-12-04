/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
public class Certificate extends HttpServlet {

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
            out.println("<title>Covid Certificate</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>COVID-19 CERTIFICATE</h1>");
            out.println("..................................................................................................................");
            out.println("</br>"); 
            String a=(String)request.getParameter("nin");
            String b=(String)request.getParameter("name");
            String c=(String)request.getParameter("healthcenter");
            String d=(String)request.getParameter("date");
            String e=(String)request.getParameter("dates");
            String f=(String)request.getParameter("number");
            String g=(String)request.getParameter("vaccine");
            
            out.println("NIN: " + a);
            out.println("</br>"); 
            out.println("Name: "+b);
            out.println("</br>"); 
            out.println("Health Center: "+c);
            out.println("</br>"); 
            out.println("Date of Administration: "+d);
            out.println("</br>"); 
            out.println("Next Date of Administration: "+e);
            out.println("</br>"); 
            out.println("Batch Number: "+f);
            out.println("</br>"); 
            out.println("Vaccine administered: "+g);
            out.println("</br>");
            out.println("...................................................................................................................");
            out.println("</br>");
            out.println("<input type='submit' name='add' value='Add Patient'>");
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
