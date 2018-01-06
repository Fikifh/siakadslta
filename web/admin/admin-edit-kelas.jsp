<%-- 
    Document   : admin-edit-kelas
    Created on : Jan 6, 2018, 3:59:00 PM
    Author     : syah
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.TheConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Kelas</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %> 
        <form action="/Siakadslta/editKelas" class="container" id="needs-validation" novalidate>
        <h3 align="center">Edit Kelas</h3>                    
        <%  
            String id = request.getParameter("dipilih");
            try{
                String sql = "SELECT * from kelas WHERE id_kelas="+id+"";
                TheConnection konek = new TheConnection();
                ResultSet rs =konek.executeQuery(sql);
                while (rs.next()){                
                String id_kelas = rs.getString(1); 
                String kode_kelas = rs.getString(2);
                String nama_kelas = rs.getString(3);
                
            %>   
            <input type="text" value="<%=id%>" name="id_kelas" class="form-control" hidden="true" id="validationCustom01">
            <div class="row">                            
              <div class="col-md-6 mb-3">
                <label for="validationCustom02">Kode Kelas</label>
                <input type="text" name="kode_kelas" value="<%=kode_kelas%>" class="form-control" id="validationCustom02">
              </div>
              <div class="col-md-6 mb-3">
                <label for="validationCustom01">Nama Kelas</label>
                <input type="text" value="<%=nama_kelas%>" name="nama_kelas" class="form-control" id="validationCustom01">
              </div>
              
            </div>
            <%                
            }
            }catch(Exception e){
                out.print("ada kesalahan!");
            }
            %>
            <button class="btn btn-info">Edit</button>
        </form>
    </body>
</html>
