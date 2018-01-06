/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author syah
 */
public class mendaftarSiswa extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet mendaftarSiswa</title>");            
            out.println("</head>");
                      
            
            TheConnection konek = new TheConnection();
            String nama_depan = request.getParameter("nama_depan");
            String nama_tengah = request.getParameter("nama_tengah");
            String nama_belakang = request.getParameter("nama_belakang");
            String jk = request.getParameter("jk");
            String tempat_lahir = request.getParameter("tempat_lahir");
            String tanggal_lahir = request.getParameter("tanggal_lahir");
            String asal_sekolah = request.getParameter("asal_sekolah");
            String alamat = request.getParameter("alamat");
            String prov = request.getParameter("prov");
            String kab = request.getParameter("kab");
            String kec = request.getParameter("kec");
            String no_hp = request.getParameter("no_hp");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            int a =  0;
            for (int i=3; i>1; i++){
                a++;
            }
            try{
            String sql = "INSERT INTO siswa_baru(id_sisbar,detail_siswa,nama_depan,nama_tengah,nama_belakang,gender,tempat_lahir,tanggal_lahir,asal_sekolah,alamat,no_hp,email,pswd,status,kelas) VALUES(nextval('seq_siswabaru'),'siswa baru','"+nama_depan+"','"+nama_tengah+"','"+nama_belakang+"','"+jk+"','"+tempat_lahir+"','"+tanggal_lahir+"','"+asal_sekolah+"','"+alamat+" "+kab+" "+kec+" "+prov+"','"+no_hp+"','"+email+"','"+password+"','Menunggu','X')";
            ResultSet rs = TheConnection.executeQuery(sql);                
                out.print("<body onload='alert('selamat anda sudah terdaftar')'>");
                response.sendRedirect("terdaftar.jsp");                        
            }catch(Exception e){
                out.print("ada kesalahan! pada "+e);                
            }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(mendaftarSiswa.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(mendaftarSiswa.class.getName()).log(Level.SEVERE, null, ex);
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
