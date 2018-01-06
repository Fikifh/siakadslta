<%-- 
    Document   : semua-kelas
    Created on : Jan 6, 2018, 3:28:34 PM
    Author     : syah
--%>

<%@page import="Controller.TheConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>         
        <%@include file="navbar.jsp" %>           
        <table class="table table-bordered table-dark" style="margin-top: 10px;">
            <thead class="thead-dark">
              <tr>
                <th scope="col"> No </th>
                <th scope="col">Kode Kelas</th>
                <th scope="col">Nama Kelas</th>                
                <th scope="col" colspan="2" style="text-align:center;">Action</th>
              </tr>
            </thead>
            <tr> 
            <%  
            int a =0;            
            try{
                String sql = "SELECT * from kelas";
                TheConnection konek = new TheConnection();
                ResultSet rs =konek.executeQuery(sql);
                while (rs.next()){                
                String id_kelas = rs.getString(1); 
                String kode_kelas = rs.getString(2);
                String nama_kelas = rs.getString(3);
                a++;
            %>
                <th scope="row"><%out.print(a);%></th>
                <td ><%=kode_kelas%></td>
                <td><%=nama_kelas%></td>                                              
                <td><form action="admin-edit-kelas.jsp" method="post">
                        <input style="width:0px; height: 0px;" type="hidden" name="dipilih" value="<%=id_kelas%>">
                        <button class="btn btn-primary">Edit</button>
                    </form>                    
                </td>
                <td>
                    <script type="text/javascript" language="JavaScript">
                    function konfirmasi()
                    {
                    tanya = confirm("Anda Yakin Akan Menghapus Data ?");
                    if (tanya == true) return true;
                    else return false;
                    }</script>
                    <form action="/Siakadslta/hapusKelas" method="post" style="margin-left:3px;">
                        <input style="width:0px; height: 0px;" type="hidden" name="dipilih" value="<%=id_kelas%>">
                        <button class="btn btn-info" onclick="return konfirmasi()">Hapus</button>
                    </form>
                </td>
              </tr>
              <%}
                }catch(Exception e){
                    out.println("ada kesalahan!");
                }
              
              %>
        </table>
                        
    </body>
</html>
