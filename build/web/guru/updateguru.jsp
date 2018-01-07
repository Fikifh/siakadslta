<%-- 
    Document   : updateguru
    Created on : Jan 7, 2018, 9:19:14 AM
    Author     : syah
--%>

<%@page import="Controller.Login"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>  
<%        
        try{
            
            String url =    "jdbc:postgresql://localhost:5432/sias";
            String user = "postgres";
            String password = "root";
            Class.forName("org.postgresql.Driver");
            Connection konek = DriverManager.getConnection(url, user, password);%>
            <%
            String nis = request.getParameter("nis_siswa");
            String namadepan = request.getParameter("nama_depan");
            String namatengah = request.getParameter("nama_tengah");
            String namabelakang = request.getParameter("nama_belakang");
            String jeniskelamin = request.getParameter("jk");
            String alamat = request.getParameter("alamat");
            String detail = request.getParameter("detail");
            String email = request.getParameter("email");
            String nohp = request.getParameter("no_hp");
            String tanggallahir = request.getParameter("tanggal_lahir");%>
            <%                                    
            String sql = "UPDATE guru SET gender='"+jeniskelamin+"',nama_depan='"+namadepan+"',nama_tengah='"+namatengah+"',nama_belakang='"+namabelakang+"',detail_guru='"+detail+"',no_hp='"+nohp+"',email='"+email+"',alamat_guru='"+alamat+"' WHERE id_guru="+session.getAttribute("username")+"";
            Statement st = konek.createStatement();           
            int status = st.executeUpdate(sql);             
        %>
        <body onload="alert('Updated!')">
        <%
        response.sendRedirect("Biodata.jsp");
    }catch(Exception e){
       out.print(request.getParameter("nama_depan")+"ada kesalahan "+e);          
    }
           
            
        %>
    </body>
</html>
