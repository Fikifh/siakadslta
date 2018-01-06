<%-- 
    Document   : berita
    Created on : Dec 11, 2017, 8:45:08 AM
    Author     : syah
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.TheConnection"%>
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
        <title>berita</title>
        <style type="text/css">
            .artikel{
                
            }  
            .isi{
                height: 500px;
            }
            .berita{
                border: 1px solid blanchedalmond;
            }
            .jdul{
                border-bottom: 1px solid darkkhaki; 
            }
        </style>
    </head>
    <body>       
        <%@include file="navbar.jsp"%>
        <%            
            try {
                String judul = request.getParameter("judul");
                String sql = "SELECT judul_berita,isi_berita,tanggal_dibuat FROM berita WHERE judul_berita='"+judul+"'";                
                TheConnection konek = new TheConnection();                
                ResultSet rs = konek.executeQuery(sql);
                while(rs.next()){
                %>
                <div class="row">
                    <div class="col-sm-2 panel-info">
                       
                    </div>
                    <div class="col-sm-8 berita">
                        <div class="site-header jdul">
                            <h1><%=rs.getString(1)%></h1>
                        </div>
                        <div class="col-md-10 col-sm-2 isi">
                            <p>
                              <%=rs.getString(2)%>  
                            </p>
                        </div>
                    </div>
                </div>
                    
                <%
                }
            }catch(Exception e){
               out.print("ada kesalahan pada "+e); 
            }
        %>  
        <%@include file="footer.jsp"%>       
    </body>
</html>
