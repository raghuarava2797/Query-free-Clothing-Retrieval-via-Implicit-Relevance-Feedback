<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*,java.text.SimpleDateFormat,java.util.Date,org.bouncycastle.util.encoders.Base64" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Request Secret Key Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {color: #CC6600}
.style4 {color: #000000}
.style5 {font-size: 14px}
.style22 {color:#006633;
	font-size: 22px;}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Query-free Clothing <br />
        Retrieval<span></span></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="ServerLogin.jsp"><span>Web Image Server</span></a></li>
          <li><a href="SellerLogin.jsp"><span>Online Seller</span></a></li>
          <li><a href="UserLogin.jsp"><span>User</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="293" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style2" style="color:#CC6600">Request Secret Key to Search Images and View Secret Key</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <p>&nbsp;</p>
           			<form action="User_ReqScKey.jsp" method="post">
			<div align="center">
			  <input type="hidden" value=<%="reqkey"%> name="reqkey"/>
			  <input type="submit" name="Submit" value="Request Secret Key" style="width:150px; height:35px; background-color:#CC9900; color:#FFFFFF;"/>
				  
			      </div>
            </form>
            <div align="center">
              <p class="style51">&nbsp;</p>
               
			    <%
						String user=(String )application.getAttribute("uname");
												

						
						try 
						{
							
							String reqkey=request.getParameter("reqkey");
							String s1="",s2,s3,s4,s5;
						
						if(reqkey.equalsIgnoreCase("reqkey"))
						{
										String query="select sckey from sckey_req where uname='"+user+"' "; 
										Statement st=connection.createStatement();
										ResultSet rs=st.executeQuery(query);
										if ( rs.next()==true )
										{
										
											s1=rs.getString(1);
										}
										if (s1.equalsIgnoreCase(""))
										{
																				
													SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
													SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
													Date now = new Date();
		
													String strDate = sdfDate.format(now);
													String strTime = sdfTime.format(now);
													String dt = strDate + "   " + strTime;
													
													
											String status = "waiting";
					  
								   PreparedStatement ps=connection.prepareStatement("insert into sckey_req(uname,sckey,reqdt) values(?,?,?)");
												  ps.setString(1,user);
												  ps.setString(2,status);
												  ps.setString(3,dt);	
												 												 												
												  ps.executeUpdate();
										
											%><p><span class="style57 style10 style4">Secret Key Requested Successfully.. </span></p>
<%
										}
										else if (s1.equalsIgnoreCase("waiting"))
										{
										
											%><p><span class="style57 style10 style4">Secret Key is Not Generated for You!!.. </span></p>
<%
										}
										else 
										{
										
											%><p><span class="style54 style12 style4 style5">Your Secret Key is : </span><span class="style22"><%=s1%></span></p>
<%
										}
						}
							
					
					
						connection.close();
					}
					catch(Exception e)
					{
						e.printStackTrace();
					}
					%>
            </div>
            <p align="center"><a href="UserMain.jsp" class="style55">Back</a></p>
		  
		  
		  
		  
		  
		  
		  </div>
          <div class="clr"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="UserMain.jsp">&raquo; Home</a></li>
			<li><a href="UserLogin.jsp">&raquo; Logout</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></a></div>
</body>
</html>