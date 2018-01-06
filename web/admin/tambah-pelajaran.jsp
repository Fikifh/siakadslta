<%-- 
    Document   : tambah-pelajaran
    Created on : Dec 31, 2017, 12:35:09 AM
    Author     : syah
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.TheConnection"%>
<%@include file="navbar.jsp" %>
<body>   
    <form action="/Siakadslta/tambahMatpel" class="container-fluid col-sm-6">
      <div class="form-group">
        <label for="exampleInputPassword1">Nama Mata Pelajaran</label>
        <select name="namaMatpel" class="form-control">
            <option>Pendidikan Agama X</option>
            <option>Pendidikan Agama XI</option>
            <option>Pendidikan Agama XII</option>
            <option>Pendidikan Pancasila dan Kewarganegaraan X</option>
            <option>Pendidikan Pancasila dan Kewarganegaraan XI</option>
            <option>Pendidikan Pancasila dan Kewarganegaraan XII</option>
            <option>Matematika X</option>
            <option>Matematika XI</option>
            <option>Matematika XII</option>
            <option>Sejarah Indonesia X</option>
            <option>Sejarah Indonesia XI</option>
            <option>Sejarah Indonesia XII</option>
            <option>Bahasa Indonesia X</option>
            <option>Bahasa Indonesia XI</option>
            <option>Bahasa Indonesia XII</option>
            <option>Bahasa Inggris X</option>
            <option>Bahasa Inggris XI</option>
            <option>Bahasa Inggris XII</option>
            <option>Seni Budaya X</option>
            <option>Seni Budaya XI</option>
            <option>Seni Budaya XII</option>
            <option>Prakarya X</option>
            <option>Prakarya XI</option>
            <option>Prakarya XII</option>
            <option>Pendidikan Jasmani, Olahraga dan Kesehatan X</option>
            <option>Pendidikan Jasmani, Olahraga dan Kesehatan XI</option>
            <option>Pendidikan Jasmani, Olahraga dan Kesehatan XII</option>
            <option>Biologi X</option>
            <option>Biologi XI</option>
            <option>Biologi XII</option>
            <option>Fisika X</option>
            <option>Fisika XI</option>
            <option>Fisika XII</option>
            <option>Kimia X</option>
            <option>Kimia XI</option>
            <option>Kimia XII</option>
            <option>Geografi X</option>
            <option>Geografi XI</option>
            <option>Geografi XII</option>
            <option>Sejarah X</option>
            <option>Sejarah XI</option>
            <option>Sejarah XII</option>
            <option>Sosiologi dan Anthropologi X</option>
            <option>Sosiologi dan Anthropologi XI</option>
            <option>Sosiologi dan Anthropologi XII</option>
            <option>Ekonomi X</option>
            <option>Ekonomi XI</option>
            <option>Ekonomi XII</option>
            <option></option>
        </select>                
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Kode Mata Pelajaran</label>
        <input type="text" name="kodematpel" class="form-control" id="exampleInputPassword1" placeholder="Kode Mata Pelajaran">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Jumlah Pertemuan</label>
        <input type="text" name="jumlahpertemuan" class="form-control" id="exampleInputPassword1" placeholder="Jumlah Pertemuan">
      </div>
      <div class="form-group">
          <select name="gurupengampu" class="form-control">
            <option>Silahkan Pilih Guru</option> 
            <%
            try{
            String sql = "SELECT id_guru,CONCAT(nama_depan,' ',nama_tengah,' ',nama_belakang) from guru";
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
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</body>
</html>