<%-- 
    Document   : tambah-pelajaran
    Created on : Dec 31, 2017, 12:35:09 AM
    Author     : syah
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.TheConnection"%>
<%@include file="navbar.jsp" %>
<body>   
    <form action="/Siakadslta/tambahKbm" class="container-fluid col-sm-6" style="margin-top: 15px;">    
    <div class="form-group">
          <select name="kelas" class="form-control">
            <option>Pilih Kelas</option> 
            <%
            try{
            String sql = "SELECT id_kelas,nama_kelas from kelas";
            TheConnection konek = new TheConnection();
            ResultSet rs =konek.executeQuery(sql);
            while (rs.next()){                
              String id = rs.getString(1); 
              String nama = rs.getString(2);
            %>
            <option value="<%out.print(id);%>"><%out.print(nama);%></option> 
            <%}
            }catch(Exception e){
                out.print("ada kesalahan!");
            }   
            %>
        </select>
      </div>
      <div class="form-group">
          <select name="matpel" class="form-control">
            <option>Pilih Mata Pelajaran</option> 
            <%
            try{
            String sql = "SELECT id_matpel, nama_matpel from mata_pelajaran";
            TheConnection konek = new TheConnection();
            ResultSet rs =konek.executeQuery(sql);
            while (rs.next()){                
              String id = rs.getString(1); 
              String nama = rs.getString(2);
            %>
            <option value="<%out.print(id);%>"><%out.print(nama);%></option> 
            <%}
            }catch(Exception e){
                out.print("ada kesalahan!");
            }   
            %>
        </select>
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Tanggal/Jam Mulai</label>
        <input type="text" name="jamMulai" class="form-control" id="exampleInputPassword1" placeholder="Jam:menit:detik">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Tanggal/Jam Berakhir</label>
        <input type="text" name="jamSelesai" class="form-control" id="exampleInputPassword1" placeholder="Jam:menit:detik">
      </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Hari</label>
            <select name="hari" class="form-control">
                <option>Senin</option>
                <option>Selasa</option>
                <option>Rabu</option>
                <option>Kamis</option>
                <option>Jumat</option>
                <option>Sabtu</option>
            </select>
        </div> 
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</body>
</html>