<%-- 
    Document   : jadwal-matpel-guru
    Created on : Jan 7, 2018, 6:59:15 AM
    Author     : syah
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.TheConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jadwal Mengajar</title>
       
    <%if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
    %>
    <script type="text/javascript">
        function log(){
            var x = confirm("Masuk ke Laman Login?");                
            if (x){
                window.location.href="FormLogin.jsp";
            }else{
                window.close();
            }    
        }

    </script>
    </head> 
    <body onload="log()">

<!--<a href="index.jsp" onload="log()">Silahkan Masuk Terlebih Dahulu</a>-->
    <% }else{
    %>
    
        <%@include file="navbar-guru.jsp" %>        
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
            int a = 0;
            try{
            String id = session.getAttribute("username").toString();
            String SQL = "select id_jadwal_pelajaran,b.kode_matpel,b.nama_matpel,CONCAT(to_char(a.jam_mulai, 'HH12:MI:SS'),'-',to_char(a.jam_berakhir, 'HH12:MI:SS')),a.hari from jadwal_pelajaran x join kbm a on x.id_kbm=a.id_kbm join mata_pelajaran b on a.id_matpel=b.id_matpel where b.guru_pengampu="+id+"";
            TheConnection konek = new TheConnection();
            ResultSet rs = konek.executeQuery(SQL);
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
    </body>
</html>
<%
}
%>