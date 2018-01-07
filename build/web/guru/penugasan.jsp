<%-- 
    Document   : penugasan
    Created on : Jan 7, 2018, 10:23:33 AM
    Author     : syah
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.TheConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="navbar-guru.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tambahkan Guru</title>
    </head>
    <body>       
       <form action="/Siakadslta/tambahTugas" class="container-fluid col-sm-6">
                <h2>Menambahkan Tugas</h2>
                <div class="form-group">
                    <select name="id_kelas" class="form-control">
                    <option>Pilih Kelas</option> 
                    <%                
                    try{
                    String sql = "select a.id_matpel,k.id_kelas,nama_kelas,a.jam_mulai,a.hari from kelas k join kbm a on k.id_kelas=a.id_kelas join mata_pelajaran m on a.id_matpel=m.id_matpel WHERE m.guru_pengampu=1200 and m.id_matpel=a.id_matpel";
                    TheConnection konek = new TheConnection();
                    ResultSet rs =konek.executeQuery(sql);
                    while (rs.next()){ 
                      String id_matpel = rs.getString(1);
                      String id_kelas = rs.getString(2); 
                      String kelas = rs.getString(3);
                      String jam = rs.getString(4);
                      String hari = rs.getString(5);
                    %>
                    <option value="<%out.print(id_kelas);%>"><%out.print(kelas+" Jam "+jam+" Hari "+hari);%></option> 
                    <%}
                    }catch(Exception e){
                        out.print("ada kesalahan!");
                    }   
                    %>
                    </select> 
                </div>
                <div class="form-group">
                    <select name="id_matpel" class="form-control">
                        <option>Pilih Mata Pelajaran</option> 
                        <%                
                        try{
                        String sql = "select a.id_matpel,m.nama_matpel,nama_kelas,a.jam_mulai,a.hari from kelas k join kbm a on k.id_kelas=a.id_kelas join mata_pelajaran m on a.id_matpel=m.id_matpel WHERE m.guru_pengampu=1200 and m.id_matpel=a.id_matpel";
                        TheConnection konek = new TheConnection();
                        ResultSet rs =konek.executeQuery(sql);
                        while (rs.next()){ 
                          String id_matapel = rs.getString(1);
                          String nama_matpel = rs.getString(2); 
                          String nama_kelas = rs.getString(3);
                          String jamm = rs.getString(4);
                          String harinya = rs.getString(5);
                        %>
                        <option value="<%out.print(id_matapel);%>"><%out.print(nama_matpel+" Kelas "+nama_kelas+" Hari "+harinya+" jam "+jamm);%></option> 
                        <%}
                        }catch(Exception e){
                            out.print("ada kesalahan!");
                        }   
                        %>
                    </select>
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Judul Tugas</label>
                  <input type="text" name="judul" class="form-control" id="exampleInputPassword1" placeholder="Judul Tugas">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Deskripsi Tugas</label>
                  <textarea type="textarea" name="des" class="form-control" id="exampleInputPassword1" placeholder="Deskripsi Tugas"></textarea>
                </div>                                                   
                    <input value="<%=session.getAttribute("username")%>" hidden="true" type="text" name="id_guru" class="form-control" id="exampleInputPassword1">                
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
    </body>
</html>
<%

%>