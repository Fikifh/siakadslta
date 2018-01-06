<%-- 
    Document   : tambah-kelas
    Created on : Dec 31, 2017, 12:14:01 AM
    Author     : syah
--%>
<html>
    <body>         
        <%@include file="navbar.jsp" %>    
            <form action="/Siakadslta/tambahKelas" class="container-fluid col-sm-6">
                <div class="form-group">
                  <label for="exampleInputPassword1">Kode Kelas</label>
                  <input type="text" name="kdkls" class="form-control" id="exampleInputPassword1" placeholder="Kode Kelas">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Nama Kelas</label>
                  <input type="text" name="nmkls" class="form-control" id="exampleInputPassword1" placeholder="Nama Kelas">
                </div>                
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
    </body>
</html>
