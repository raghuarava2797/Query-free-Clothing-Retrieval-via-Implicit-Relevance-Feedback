<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Related Cloth Images Page</title>
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
.style1 {color: #000000}
.style2 {color: #CC6600}
.style4 {font-size: 14px}
.style7 {font-weight: bold}
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
          <h2 class="style2" style="color:#CC6600">Similar Cloth Images..</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <p>&nbsp;</p>
           			<p><%
				 
				 			String user=(String)application.getAttribute("uname");
							
							
								String	icat= request.getParameter("icat");
								String	iname= request.getParameter("iname");	
								String keyword= request.getParameter("keyword");	
								String icat1 = icat.toLowerCase();
								String iname1 = iname.toLowerCase();
	  					
	 				 try
						{
							
								String inm="",ict="",idesc="",s50="",s60="";
								String strDate="",strTime="",dt="";
								int rank=0,score=0,scoreup=0,i=0,trank=0;
								double found=0,total=0,ratio=0;
								
							    
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

								Date now = new Date();
						
								strDate = sdfDate.format(now);
								strTime = sdfTime.format(now);
								dt = strDate + "   " + strTime;
								
																 
								
								String sql8="select * from images where icat='"+icat1+"' and iname='"+iname1+"' ";
								Statement st8=connection.createStatement();
								ResultSet rs8=st8.executeQuery(sql8);
								while(rs8.next())
										{
									i=rs8.getInt(1);
									ict =rs8.getString(2);
								    inm = rs8.getString(3); // image Name
									idesc = rs8.getString(6); // Description
									
									found++;
									
					
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					
					
					String descr = new String(Base64.decode(idesc.getBytes())).toLowerCase();
									
									
									 score = rs8.getInt(13); // Score
								      
									  
									  scoreup= score+1;

									   String inm1=inm.toLowerCase();
					
														
						
						
									
									
									
									%>
          </P>
 
              <td width="86">
			<div align="center" class="style7" style="margin:10px 13px 10px 13px;" ><a href="User_ClothImageDetails.jsp?iname=<%=inm%>&id=<%=i%>&score=<%=scoreup%>" title="Click to View Image Details" style="color:#006633">
			 <input  name="image" type="image" src="images.jsp?id=<%=i%>" style="width:100px; height:70px;"  />
			 </a></div>	</td>
             <p class="style4" align="center"> <b><span class="style8" style="color:#006633"><%=inm%></span> </b>            </p>  

                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
				
				
				
						  	}
						 
					if(found==0){out.print("No Related Image Found");}
					%>
			
			<p>&nbsp;</p>
						
				<div align="center">
				  <%	}
					
					catch(Exception e)
					{						  
						e.printStackTrace();
					}
					%>	  
				  
	                     
				  
				          <a href="User_SearchClothImages.jsp">Back</a> </div>
		  
		  
		  
		  
		  
		  
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