<%-- 
    Document   : tambah-guru
    Created on : Dec 30, 2017, 8:41:36 AM
    Author     : syah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tambahkan Guru</title>
    </head>
    <body>
       <%@include file="navbar.jsp"%>
       <form action="/Siakadslta/tambahkanGuru" class="container" id="needs-validation" novalidate>
        <h3 align="center">Menambahkan Guru</h3>                    
        <div class="row">                            
          <div class="col-md-6 mb-3">
            <label for="validationCustom02">Nama Depan</label>
            <input type="text" name="nama_depan" class="form-control" id="validationCustom02">
          </div>
          <div class="col-md-6 mb-3">
            <label for="validationCustom01">Nama Tengah</label>
            <input type="text" name="nama_tengah" class="form-control" id="validationCustom01">
          </div>
        </div>
        <div class="row">          
          <div class="col-md-6 mb-3">
            <label for="validationCustom03">Nama Belakang</label>
            <input type="text" name="nama_belakang" class="form-control" id="validationCustom03">                     
          </div>
          <div class="col-md-6 mb-3">
              <label for="validationCustom07">Jenis Kelamin</label><br>                      
              <input type="radio" aria-label="Radio button" name="jk" value="Laki-Laki" checked="true"> 
              <label for="validationCustom05" style="margin-left: 20px;">Laki-Laki</label>                              
              <input type="radio" aria-label="Radio button" name="jk" value="Perempuan" style="margin-left: 20px;">
              <label for="validationCustom06" style="margin-left: 20px;">Perempuan</label>                                                            
          </div>
        </div>  
        <div class="row">          
          <div class="col-md-6 mb-3">
            <label for="validationCustom08">Alamat</label>
            <input type="text" name="alamat" class="form-control" id="validationCustom05">                      
          </div>
          <div class="col-md-6 mb-3">
            <label for="validationCustom08">Detail</label>
            <input type="text" name="detail" class="form-control" id="validationCustom05"  >                      
          </div>
        </div>
          <div class="row">                                 
            <div class="col-md-6 mb-3">
              <label for="exampleInputEmail1">Email address</label>
              <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
              <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div> 
            <div class="col-md-6 mb-3">
                  <label for="exampleinputhandphonenumber">Nomor Hand phone</label>
                  <input type="handphonenumber" name="no_hp" class="form-control" id="exampleinputhandphonenumber" aria-describedby="phonenumberHelp">
                  <small id="phonenumberHelp" class="form-text text-muted">We'll never share your phone number with anyone else.</small>
            </div>
          </div>
          <div class="row">              
              <div class="col-md-6 mb-3">
                  <label for="exampleinputhandphonenumber">Password</label>
                  <input type="password" name="pswd" class="form-control" id="exampleinputhandphonenumber" aria-describedby="password">
                  <small id="phonenumberHelp" class="form-text text-muted">We'll never share your password with anyone else.</small>
              </div> 
          </div>
        <button class="btn btn-primary" type="submit">Simpan</button>
      </form>
    </body>
</html>
