/*
lấy dữ liệu từ dao sang hoome.jsp 
 */
package control;

import dao.DAO;
import entity.Employee;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dinhv
 */
@WebServlet(name = "HomeContol", urlPatterns = {"/liste"})
public class HomeContol extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    public static void main(String[] args) {
        HomeContol contol = new HomeContol();
        // b1: get data from dao`
         DAO dao = new DAO();
        List<Employee> list = dao.getAllEmployee();
        System.out.println("aas"+list);
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // b1: get data from dao`
         DAO dao = new DAO();
        List<Employee> list = dao.getAllEmployee();
        System.out.println(list);
        // b2: set data to jsp file
        request.setAttribute("listE", list);// đẩy list lên listE ở trang index.jsp
        request.getRequestDispatcher("index.jsp").forward(request, response);
        
     
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
        
        // b1: get data from dao`
         DAO dao = new DAO();
        List<Employee> list = dao.getAllEmployee();
        System.out.println(list);
        // b2: set data to jsp file
        request.setAttribute("listE", list);// đẩy list lên listE ở trang index.jsp
        request.getRequestDispatcher("index.jsp").forward(request, response);
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
