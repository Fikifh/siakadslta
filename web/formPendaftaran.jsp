<%-- 
    Document   : formPendaftaran
    Created on : Dec 12, 2017, 9:22:22 PM
    Author     : syah
--%>

<%@page import="Controller.TheConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="style/css/bootstrap.css">         
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Form Pendaftaran Siswa Baru</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <h1 align="center">Pendaftaran Siswa Baru</h1>
        <div class="container form-control col-xl-8">
          <form name="mendaftarSiswa" action="mendaftarSiswa" method="POST">
            <div class="form-group">
              <label for="inputName">Nama Depan</label>
              <input name="nama_depan" type="text" class="form-control" id="inputAddress" placeholder="Nama Depan">
            </div>
            <div class="form-group">
              <label for="inputMiddleName">Nama Tengah</label>
              <input name="nama_tengah" type="text" class="form-control" id="inputAddress" placeholder="Nama Tengah">
            </div>
            <div class="form-group">
              <label for="inputLatName">Nama Belakang</label>
              <input name="nama_belakang" type="text" class="form-control" id="inputAddress" placeholder="Nama Belakang">
            </div>
            <label for="JenisKelamin">Jenis Kelamin</label>
            <div class="form-row">                
                <div class="form-group col-md-2">                                        
                    <input name="jk" type="radio" value="Laki-Laki">
                    <label for="RadioLakiLaki">Laki-Laki</label>
                </div>
                <div class="form-group col-md-6">                    
                    <input name="jk" type="radio" value="Perempuan">
                    <label for="RadioPerempuan">Perempuan</label>
                </div>
            </div>
            <div class="form-group">
                <label for="inputTempatLahir">Tempat Lahir</label>
                <input name="tempat_lahir" type="text" placeholder="Tempat Lahir" class="form-control">
            </div>                        
            <div class="form-group">
                <label for="inputTempatLahir">Tanggal Lahir</label>
                <input name="tanggal_lahir" type="text" placeholder="Bulan/tanggal/tahun" class="form-control">
            </div>
            <div class="form-group">
                <label for="inputTempatLahir">Asal Sekolah</label>
                <input name="asal_sekolah" type="text" placeholder="Asal Sekolah" class="form-control">
            </div> 
            <div class="form-group">
              <label for="inputAddress">Alamat</label>
              <input name="alamat" type="text" class="form-control" id="inputAddress" placeholder="Alamat">
            </div>                                  
            <div class="form-row">
              <div class="form-group col-md-4">
                <label for="inputCity">Provinsi</label>                
                <select name="prov" id="inputState" class="form-control">
                  <option>Choose...</option>
                  <%
                  try{
                    TheConnection konek = new TheConnection();
                    ResultSet rs;
                    String sql = "Select id_prov,nama FROM provinsi";
                    rs = konek.executeQuery(sql);
                    while(rs.next()){                 
                  %>                  
                  <option><%=rs.getString(2)%></option>
                  <%
                    }                    
                   }catch(Exception e){
                      
                  }
                  %>
                </select>
              </div>
              <div class="form-group col-md-4">
                <label for="inputState">Kabupaten</label>
                <select name="kab" id="inputState" class="form-control">
                  <option>Choose...</option>
                  <%
                  try{
                    TheConnection konek = new TheConnection();
                    ResultSet rs;
                    String sql = "Select id_kab,id_prov,nama FROM kabupaten";
                    rs = konek.executeQuery(sql);
                    while(rs.next()){                 
                  %>                  
                  <option><%=rs.getString(3)%></option>
                  <%
                    }
                   }catch(Exception e){
                      
                  }
                  %>
                </select>
              </div>
              <div class="form-group col-md-4">
                <label for="inputState">Kecamatan</label>
                <select name="kec" id="inputState" class="form-control">
                  <option>Choose...</option>
                  <%
                  try{
                    TheConnection konek = new TheConnection();
                    ResultSet rs;
                    String sql = "Select id_kab,id_kec,nama FROM kecamatan";
                    rs = konek.executeQuery(sql);
                    while(rs.next()){                 
                  %>                  
                  <option><%=rs.getString(3)%></option>
                  <%
                    }
                   }catch(Exception e){
                      
                  }
                  %>
                </select>
              </div>
            </div>
             <div class="form-row">
              <div class="form-group col-md-4">
              <label for="inputMiddleName">Nomor HP</label>
              <input name="no_hp" type="text" class="form-control" id="inputAddress" placeholder="Nama Tengah">
              </div>
              <div class="form-group col-md-4">
                <label for="inputEmail4">Email</label>
                <input name="email" type="email" class="form-control" id="inputEmail4" placeholder="Email">
              </div>
              <div class="form-group col-md-4">
                <label for="inputPassword4">Password</label>
                <input name="password" type="password" class="form-control" id="inputPassword4" placeholder="Password">
              </div>
            </div> 
            <div class="form-group">
              <div class="form-check">
                <label class="form-check-label">
                  <input name="term" class="form-check-input" type="checkbox"> Agree the Term
                </label>
              </div>
            </div>
            <button type="submit" class="btn btn-primary">Daftar</button>
            </form>
        </div>
    </body>
</html>
<script type="text/javascript">
    var idElement = document.getElementById("prov");
    var selectedValue = idElement.options[idElement.selectedIndex].value;
</script>