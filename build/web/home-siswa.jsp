<%-- 
    Document   : BiodataF
    Created on : Dec 1, 2017, 10:03:25 PM
    Author     : syah
--%>      
        <%@page import="Controller.TheConnection"%>
<%@page import="java.sql.ResultSet"%>
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
        
        <body onload="log()">
        
<!--<a href="index.jsp" onload="log()">Silahkan Masuk Terlebih Dahulu</a>-->
        <% }else{
        %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                margin: 2px 10px 0px 0px;
                border-right: 1px solid #138496;
                height: 533px;
                width: 200px;
                padding-top: 15px; 
            }
            .bungkus-link-side-kiri{
                padding-bottom: 10px;
            }
            .link{
                width: 100%;
            }
        </style> 
        <title>Biodata Siswa</title>
    </head>
    <body>
        
                <nav class="navbar navbar-expand-lg navbar-light bg-dark">
                    <img src="images/logo-sma_1.png" id="logo">
                    <a class="navbar-brand" href="home-siswa.jsp" style="color:#ffffff">Siakadslta</a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                      <li class="nav-item active">
                        <a class="nav-link" href="#" style="color:#ffffff">Profil<span class="sr-only">(current)</span></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#" style="color:#ffffff">Gallery</a>
                      </li>
                      <li class="nav-item dropdown">
                        <a style="color:#ffffff" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Akademik
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" href="#">Kurikulum</a>
                          <a class="dropdown-item" href="#">Guru</a>
                          <div class="dropdown-divider"></div>
                          <a class="dropdown-item" href="#">Ekstra Kurikuler</a>
                        </div>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#" style="color:#ffffff">Contact</a>
                      </li>                      
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>   
                      <a class="logout" href="logout.jsp">Log Out</a>
                  </div>
                </nav> 
        <div class="col-12 col-md-3 col-xl-2 bd-sidebar side-kiri">
            <div class="bd-toc-item bungkus-link-side-kiri">
                <%
                    
                    try{
                    String sql = "SELECT k.id_kelas,k.nama_kelas from kelas k join siswa s on k.id_kelas=s.id_kelas  WHERE nis="+session.getAttribute("username")+"";
                    TheConnection konek = new TheConnection();
                    ResultSet rs =konek.executeQuery(sql);
                    while (rs.next()){                
                      String id_kelas = rs.getString(1); 
                      String nama_kelas = rs.getString(2);                       
                      
                    %>
                    <form action="siswa/jadwalmatpel.jsp">
                        <input type="text" hidden="true" name="id_kelas" value="<%=id_kelas%>">
                        <button class="btn btn-primary link">Jadwal Mata Pelajaran</button>
                    </form>
                    <%
                    }
                    }catch(Exception e){
                        out.print("ada kesalahan!");
                    }
                    %>
            </div>
            <div class="bd-toc-item bungkus-link-side-kiri">
                <a class="btn btn-primary link" href="siswa/biodata.jsp">Biodata</a>
            </div>
            <div class="dropdown">                    
                    <button class="btn btn-primary dropdown-toggle link" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Tugas
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <%
                    int a=0;
                    try{
                    String sql = "SELECT t.judul_tugas,t.deskripsi,k.nama_kelas from tugas t join kelas k on t.id_kelas=k.id_kelas join siswa s on k.id_kelas=s.id_kelas WHERE nis="+session.getAttribute("username")+"";
                    TheConnection konek = new TheConnection();
                    ResultSet rs =konek.executeQuery(sql);
                    while (rs.next()){                
                      String judul = rs.getString(1); 
                      String des = rs.getString(2);
                      String nkelas = rs.getString(3);
                      a++;
                    %>
                    <a class="dropdown-item" href="siswa/tugas.jsp"><b><%=a%>. </b><%=judul%></a>
                    <%}
                    }catch(Exception e){
                        out.print("ada kesalahan!");
                    }   
                    %>             
                    </div>
                </div>
        </div> 
    </body>
</html>
<%
    }
%>
