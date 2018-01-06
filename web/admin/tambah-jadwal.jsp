<%-- 
    Document   : tambah-jadwal
    Created on : Dec 31, 2017, 12:14:48 AM
    Author     : syah
--%>

<%@page import="Controller.TheConnection"%>
<%@page import="java.sql.ResultSet"%>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style/css/bootstrap.css">         
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <style type="text/css">
            a .logout{                
                color: white;                
            }
            #logo{
                height: 30px;
                width: 30px;
                margin-right: 50px;
                margin-left: 28px;
            }
            .side-kiri{
                margin: 15px 10px 10px 0px;
                border : 1px solid #138496;

            }
            .bungkus-link-side-kiri{
                padding-bottom: 10px;
            }
            .link{
                width: 100%;
            }
        </style>             
                <nav class="navbar navbar-expand-lg navbar-light bg-dark">
                    <img src="/Siakadslta/images/logo-sma_1.png" id="logo">
                    <a class="navbar-brand" href="/Siakadslta/home-admin.jsp" style="color:#ffffff">SIAS</a>
                    <a class="navbar" href="/Siakadslta/admin/lihatJadwal.jsp" style="color:#ffffff">Lihat Jadwal</a>
                      <a class="logout" href="/Siakadslta/logout.jsp">Log Out</a>
                  </div>
                </nav>         

<body> 
    <div class="container-fluid" style="margin-top: 15px;">
        <h3 align="center">Buat Jadwal Pelajaran</h3>
        <form action="/Siakadslta/buatJadwal" class="container-fluid col-sm-6">
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
              <select name="id_kbm" class="form-control">
                <option>Pilih Mata Pelajaran</option> 
                <%
                try{
                String sql = "SELECT kbm.id_kbm,mata_pelajaran.nama_matpel FROM kbm,mata_pelajaran WHERE kbm.id_matpel=mata_pelajaran.id_matpel";
                TheConnection konek = new TheConnection();
                ResultSet rs =konek.executeQuery(sql);
                while (rs.next()){                
                  String id_kbm = rs.getString(1); 
                  String matpel = rs.getString(2);

                %>
                <option value="<%out.print(id_kbm);%>"><%out.print(matpel);%></option> 
                <%}
                }catch(Exception e){
                    out.print("ada kesalahan!");
                }   
                %>
            </select>
        </div>           
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>              
  </div>
</body>
</html>