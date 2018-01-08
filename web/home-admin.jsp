<%-- 
    Document   : home-admin
    Created on : Dec 7, 2017, 7:35:40 AM
    Author     : syah
--%>
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
                margin: 0px 10px 10px 0px;
                border : 1px solid #138496;
                height: 550px;
                padding: 20px 10px 10px 10px;

            }
            .bungkus-link-side-kiri{
                padding-bottom: 10px;
            }
            .link{
                margin: 7px; 
                width: 120px;
                                
            }
        </style>
        <title>Biodata Siswa</title>
    </head>    
    <body>        
        <nav class="navbar navbar-expand-lg navbar-light bg-dark" style="border-bottom : 4px solid #007bff;">
            <img src="images/logo-sma_1.png" id="logo">
            <a class="navbar-brand" href="home-admin.jsp" style="color:#ffffff">SIAS</a>                  
            <a class="navbar" href="home-admin.jsp" style="color:#ffffff">Home</a>                                                                           
            <a class="logout" href="logout.jsp" style="margin-left : 77%;">Log Out</a>           
        </nav> 
        <div class="col-2 badge-light side-kiri" style="border-right: 1px solid #269abc; border-top: 0px;"> 
            <div clss="row">
                <div class="dropdown">
                    <img src="/Siakadslta/images/siswa.png" width="32px" height="32px">
                    <button class="btn btn-primary dropdown-toggle link" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Kelola Siswa
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                      <a class="dropdown-item" href="/Siakadslta/admin/siswa-kelas-x.jsp">Kelas X</a>
                      <a class="dropdown-item" href="/Siakadslta/admin/SiswaKelasXI.jsp">Kelas XI</a>
                      <a class="dropdown-item" href="/Siakadslta/admin/SiswaKelasXII.jsp">Kelas XII</a>
                      <a class="dropdown-item" href="/Siakadslta/admin/kelola-siswa.jsp">Semua Kelas</a>
                      <a class="dropdown-item" href="/Siakadslta/admin/SiswaBaru.jsp">Calon Siswa Baru</a>                      
                    </div>
                </div>                                
            </div>            
            <div clss="row">
                <div class="dropdown">
                    <img src="/Siakadslta/images/man-user.png">            
                    <button class="btn btn-primary dropdown-toggle link" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Kelola Guru
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                      <a class="dropdown-item" href="/Siakadslta/admin/semua-guru.jsp">Semua Guru</a>
                      <a class="dropdown-item" href="/Siakadslta/admin/tambah-guru.jsp">Tambah Guru</a>                      
                    </div>
                </div>                   
            </div>
            <div clss="row">
                <div class="dropdown">
                    <img src="/Siakadslta/images/megaphone.png">            
                    <button class="btn btn-primary dropdown-toggle link" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Kelola Berita
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                      <a class="dropdown-item" href="/Siakadslta/admin/buat_berita.jsp">Buat Berita</a>
                      <a class="dropdown-item" href="/Siakadslta/admin/listAtikel.jsp">List Berita</a>                      
                    </div>
                </div>                  
            </div>
             <div clss="row">
                 <div class="dropdown">
                    <img src="/Siakadslta/images/classroom.png" width="30px" height="30px">            
                    <button class="btn btn-primary dropdown-toggle link" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Kelola Kelas
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                      <a class="dropdown-item" href="/Siakadslta/admin/semua-kelas.jsp">List Kelas</a>
                      <a class="dropdown-item" href="/Siakadslta/admin/tambah-kelas.jsp">Tambah Kelas</a>                      
                    </div>
                </div>                
            </div>
             <div clss="row">
                <div class="dropdown">
                    <img src="/Siakadslta/images/calendar.png" width="30px" height="30px">            
                    <button class="btn btn-primary dropdown-toggle link" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Penjadwalan
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                      <a class="dropdown-item" href="/Siakadslta/admin/lihatJadwal.jsp">Lihat Jadwal</a>
                      <a class="dropdown-item" href="/Siakadslta/admin/tambah-jadwal.jsp">Buat Jadwal</a>
                      <a class="dropdown-item" href="/Siakadslta/admin/tambahkan-jadwal-kbm.jsp">Tambah Jadwal</a>
                      <a class="dropdown-item" href="/Siakadslta/admin/tambah-pelajaran.jsp">Tambah Pelajaran</a>
                    </div>
                </div>                
            </div>           
        </div>                  
        <div class="col-10">
            
        </div>
    </body>
</html>
<%
    }
%>
