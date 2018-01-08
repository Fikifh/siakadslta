<%-- 
    Document   : jadwalmatpel
    Created on : Jan 7, 2018, 2:45:35 PM
    Author     : syah
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.TheConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="navbar-siswa.jsp" %>
    </head>
    <body>
        <div class="container-fluid" col-sm-6>
        <table class="table">
            <thead>
              <tr>
                <th scope="col">No</th>
                <th scope="col">Kode Mata Pelajaran</th>
                <th scope="col">Nama Mata Pelajaran</th>
                <th scope="col">Waktu</th>
                <th scope="col">Hari</th>
                
              </tr>
            </thead>  
         <%            
            int a=0;
            String id_kelas=request.getParameter("id_kelas");
             try{               
               String data = "select id_jadwal_pelajaran,b.kode_matpel,b.nama_matpel,CONCAT(to_char(a.jam_mulai, 'HH12:MI:SS'),'-',to_char(a.jam_berakhir, 'HH12:MI:SS')),a.hari from jadwal_pelajaran x join kbm a on x.id_kbm=a.id_kbm join mata_pelajaran b on a.id_matpel=b.id_matpel where x.id_kelas="+id_kelas+"";
               TheConnection konek = new TheConnection();
               ResultSet rs;
               rs=konek.executeQuery(data);
               while(rs.next()){
               String id_jad = rs.getString(1);
               String kode = rs.getString(2);
               String nama_pel = rs.getString(3);
               String waktu = rs.getString(4);
               String hr = rs.getString(5);

               a++;
             %>
           <tbody>         
             <tr>
               <th scope="row"><%=a%></th>
               <td><%=kode%></td>
               <td><%=nama_pel%></td>
               <td><%=waktu%></td>
               <td><%=hr%></td>
               
             </tr>          
           </tbody>
           <%            
               }
           }catch(Exception e){
               out.println("ada kesalahan!");
           }
           %>
       </table>       
       <form action="printoutjadwal-siswa.jsp">
           <input name="id_kelas" type="text" value="<%=id_kelas%>" hidden="true">
       <button class="btn btn-primary">Print</button>
       </form>
    </div>       
    </body>
</html>
