/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author syah
 */
@WebServlet(name = "buatJadwal", urlPatterns = {"/buatJadwal"})
public class buatJadwal extends HttpServlet {

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
           String gurupengampu = request.getParameter("gurupengampu");           
           try{               
               String id_kbm = request.getParameter("id_kbm");
               String id_kelas = request.getParameter("id_kelas");
               String sql = "INSERT INTO jadwal_pelajaran VALUES(nextval('seq_jadwal_pelajaran'),"+id_kbm+","+id_kelas+")";
               TheConnection konek = new TheConnection();
               konek.execute(sql);                              
               out.println("<body onload="+"'alert('berhasil!')'"+"></body>");
               response.sendRedirect("/Siakadslta/admin/tambah-jadwal.jsp");
               out.printf("<form action="+"tambah-jadwal"+"><input type='text' name='id_kelas' value='"+id_kelas+"'><button clicked='true'>ok</button></form>");
           }catch(Exception e){
               out.print("ada kesalahan!");
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

}
