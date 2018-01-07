/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.File;
import java.io.FileInputStream;
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
@WebServlet(name = "tambahTugas", urlPatterns = {"/tambahTugas"})
public class tambahTugas extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            String filenya = request.getParameter("file");
            File file = new File("D:\\AUDIO\\Kun_Anta_Cover_with_Lirik_Translate_Bahasa_Indonesia.mp3");
            FileInputStream fis = new FileInputStream(file);
            file.getName();
            long leng = file.length();
            String judul = request.getParameter("judul");
            String keterangan = request.getParameter("des");            
            String id_guru = request.getParameter("id_guru"); 
            String id_kelas = request.getParameter("id_kelas");
            String id_matpel = request.getParameter("id_matpel");
            try{
               String sql = "INSERT INTO tugas values(nextval('seq_tugas'),'"+judul+"','"+keterangan+"',"+id_guru+","+id_matpel+","+id_kelas+")";
               TheConnection konek = new TheConnection();
               konek.execute(sql);                              
               out.println("<body onload="+"'alert('berhasil!')'"+"></body>");
               response.sendRedirect("/Siakadslta/home-guru.jsp");
           }catch(Exception e){
               out.print("ada kesalahan!");
           }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet tambahTugas</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet tambahTugas at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
