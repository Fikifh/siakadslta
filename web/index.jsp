<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.TheConnection"%>
<%@page import="Controller.Login"%>
</html>
<%-- 
    Document   : BiodataF
    Created on : Dec 1, 2017, 10:03:25 PM
    Author     : syah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="style/css/bootstrap.css">         
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <style type="text/css">
            
            a .c{
                color: black !important;
            }
            .btr{
                color: white;
            }
            .clear{
                clear: both;
            }
            .as{height: 140px;
                width: 140px;
                margin: 10px;
                float: left;                
                border-radius: 4px;
                background-color: #1c7430;
            }
            .as:hover{height: 140px;                
                background-color: #66afe9;
            }
            .untukBody{
                color: #000 !important;
            }
            .untukBody:hover{
                color: #66afe9 !important;
            }
            #logo{
                height: 40px;
                width: 40px;
                margin-right: 50px;
                margin-left: 28px;
            }
            .navigasi{
                border-bottom: 4px solid #007bff;
            }
            .sidebar-kiri{
                padding: 15px 25px;
                border: 1px solid #0033ff;
                border-radius: 4px;
                margin-top : 10px;
            }
            .cours{
                height: 90%;
                width: 100%;
            }
            #footer{
	width: 100%;
	height: 300px;
	background-color: #222;
	margin: 0px;
	border: none;
	border: 1px solid black;
}
#footer #bungkus-sosial{
	margin: 30px auto;
	width: 600px;
	padding-left: 90px;
	height: 100px;
	text-align: center;
}
#footer #bungkus-sosial .sosial{
	float: left;
	margin: 30px 50px;
	color:red;
}
#footer #bungkus-sosial .sosial a{
	color:black;
}
#footer #copy{
	margin: 50px auto;
	text-align: center;
	color: white;
}
        </style> 
        <title>Siakadslta</title>
    </head>             
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-dark navigasi">
            <img src="images/logo-sma_1.png" id="logo">
            <a class="navbar-brand" href="#" style="color:#ffffff">Home</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link" href="profil.jsp" style="color:#ffffff">Profil<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a id="galeri" class="nav-link" href="gallery.jsp" style="color:#ffffff">Gallery</a>
              </li>
              <li class="nav-item dropdown">
                <a style="color:#ffffff" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Akademik
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a style="color:black;" class="dropdown-item c" href="kurikulum.jsp">Kurikulum</a>
                  <a style="color:black;" class="dropdown-item c" href="guru.jsp">Guru</a>
                  <div class="dropdown-divider"></div>
                  <a style="color:black;" class="dropdown-item c" href="eskul.jsp">Ekstra Kurikuler</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.jsp" style="color:#ffffff">Contact</a>
              </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
                <%
                
                %>        
                <%if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
                %>
                <form action="FormLogin.jsp" style=" margin-top: 0px; padding-top: 15px; ">
                    <button style="margin:0px 15px; border: 1px solid white;" type="submit" class="btn btn-info" aria-label="Left Align">
                       <span class="glyphicon glyphicon-align-left" aria-hidden="true">login</span>                         
                    </button>
                </form>
                <%
                }else{
                %>
                <a href="logout.jsp" >Logout</a>
                <%
                    }
                %>
              </form>
          </div>
        </nav>                       
              <div class="col-sm-12"style="padding: 0px;">
                <div id="carouselExampleControls" style="margin: 0px;" class="carousel slide cours" data-ride="carousel">
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                          <img class="d-block w-100 cours" src="images/slide1_1.jpg" alt="First slide" height="400px" width="60%">
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100 cours" src="images/slide2_1.jpg" alt="Second slide" height="400px" width="60%">
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100 cours" src="images/slide3_1.jpg" alt="Third slide" height="400px" width="60%">
                      </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="sr-only">Next</span>
                    </a>
                </div>
                <script>$('.carousel').carousel();</script>
            </div>                   
            <div class="container">
                <div class="form-group container col-sm-11" >
                <h3 title="berita terbaru">Berita Terbaru</h3>                                    
                    <%
                    try{
                        TheConnection konek = new TheConnection();
                        String sql = "SELECT judul_berita FROM berita ORDER BY tanggal_dibuat ASC";                        
                        ResultSet rs;
                        rs=konek.executeQuery(sql);
                        while(rs.next()){                                            
                    %>                      
                    <a style="text-align: center;" class="untukBody" href="berita.jsp?judul=<%=rs.getString(1)%>" name="judul">
                    <figure class="figure as col-sm-2">                                                
                        <p class="btr"><%=rs.getString(1)%></p>                                	                                        			                                                                    
                    </figure>
                    </a>
                    <%}
                    }catch(Exception e){
                        out.println("ada kesalahan !");
                    }
                    %> 
                    <div class="clear"></div>
                </div>
        </div>          
        <%@include file="footer.jsp"%>
    </body>
</html>