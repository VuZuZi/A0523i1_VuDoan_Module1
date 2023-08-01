/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dinhv
 */
@WebServlet(urlPatterns = {"/calculator"})
public class calculator extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          // get by name -> value
          double num1 = Double.parseDouble(request.getParameter("a"));
          double num2 = Double.parseDouble(request.getParameter("b"));
          String ope = request.getParameter("ope");
          double res = 0;
            if (ope.equals("+")) {
                res = num1 + num2;
                request.setAttribute("add", "selected");
            }else if (ope.equals("-")) {
                res = num1 - num2;
                request.setAttribute("sub", "selected");
            }else if(ope.equals("*")){
                res = num1 * num2;
                request.setAttribute("mul", "selected");
            }else{
                res = num1 / num2;
                request.setAttribute("divv", "selected");
            }
            // đẩy res đến r ở trang c 
            request.setAttribute("f", num1);
            request.setAttribute("s", num2);
            request.setAttribute("r", res);
            request.getRequestDispatcher("index.jsp").forward(request, response);//trả về file index ban đầu
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
     * @param response servlet respone
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
