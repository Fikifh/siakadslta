<%-- 
    Document   : lihatJadwal
    Created on : Jan 1, 2018, 10:23:40 AM
    Author     : syah
--%>

<%@page import="Controller.TheConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%@include file="navbar.jsp"%>
    <body>
        <div class="container-fluid col-sm-4 col-lg-4" style="margin-top: 15px;">
            
            <form name="id_kelas" action="lihatJadwalPelajaran.jsp">
                <div class="form-group">
                    <select name="id_kelas" class="form-control">
                      <option>Pilih Kelas</option> 
                      <%                
                      try{
                      String sql = "SELECT * FROM kelas";
                      TheConnection konek = new TheConnection();
                      ResultSet rs =konek.executeQuery(sql);
                      while (rs.next()){                
                        String id_kelas = rs.getString(1); 
                        String kode_kelas = rs.getString(2);
                        String nama_kelas = rs.getString(3);
                      %>
                      <option value="<%out.print(id_kelas);%>"><%out.print(nama_kelas);%></option> 
                      <%}
                      }catch(Exception e){
                          out.print("ada kesalahan!");
                      }   
                      %>
                  </select> 
                </div>
                <div class="form-group">
                    <button class="btn btn-primary">Lihat</button>
                </div>
            </form>
        </div>
    </body>
</html>
