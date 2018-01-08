<%-- 
    Document   : printoutjadwal-siswa
    Created on : Jan 8, 2018, 2:01:16 PM
    Author     : syah
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.TheConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style/css/bootstrap.css">         
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Print Out Jadwal</title>
    </head>
    <body onload="window.print()">
        <div class="container-fluid" col-sm-6>
            <h2 align="center">Jadwal Pelajaran</h2>
            <h4 align="center">Tahun Ajaran 2018/2019</h4>
            <%                       
            String nis=session.getAttribute("username").toString();
             try{               
               String data = "select CONCAT(nama_depan,' ',nama_tengah,' ',nama_belakang),nis FROM siswa WHERE nis="+nis+"";
               TheConnection konek = new TheConnection();
               ResultSet rs;
               rs=konek.executeQuery(data);
               while(rs.next()){
               String id_jad = rs.getString(1);                             
                String nisnya = rs.getString(2);
             %>
             <p>Nama : <%=id_jad%></p>
             <p>NIS : <%=nisnya%></p><br>
             <% }
                }catch(Exception e){
                    out.println("ada kesalahan!");
                }
             %>
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
    </div>       
    </body>
</html>
