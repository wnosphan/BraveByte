/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import dao.CartDAO;
import dao.LibraryDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Game;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "AddGametoLibrary", urlPatterns = {"/addgamelibrary"})
public class AddGametoLibrary extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

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
        LibraryDAO i= new LibraryDAO();
        HttpSession session = request.getSession();
        String idGameStr = request.getParameter("idGame");
  
        if (idGameStr!=null) {
            int idGame = Integer.parseInt(idGameStr);
             i.addGameToLibrary(request, idGame);
       CartDAO cartDAO = new CartDAO();
              List<Game> cartGames = cartDAO.getAllGamesForUser(request);
              session.setAttribute("games",cartGames);

              if (cartGames!=null) {
             for (Game game : cartGames) {
                  cartDAO.removeAllGamesFromCartForUser(request);
              }                 
               request.getRequestDispatcher("createbill").forward(request, response);
        } else {
             request.getRequestDispatcher("home,jsp").forward(request, response);  
        }
        }
        
             
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
