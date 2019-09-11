<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloth Details Page</title>
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
.style7 {color:#660000}
.style8 {color: #000000}
.style9 {color: #006666}
.style12 {color:#D64F14}
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
          <h2 class="style2" style="color:#CC6600">Cloth Details..</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <p>&nbsp;</p>
            		<%
          	
		 
		  		  	
		    String iname=request.getParameter("iname");
		    String one=request.getParameter("id");
		  
           String s0="",s1="",Keyword="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",sname="";
	       int i=0,k=0,r=0,rank1=0;
  try 
	{	
	
	
	
	int id = Integer.parseInt(one);
	
	 	
	
 	 String str="select * from images where iname='"+iname+"' and id='"+id+"' "; 
 	 Statement st=connection.createStatement();
  	 ResultSet rs=st.executeQuery(str);
   	   
	if ( rs.next() )
	   {
		i=rs.getInt(1);
		s0=rs.getString(2);
		s1=rs.getString(3);
		s2=rs.getString(4);
		s3=rs.getString(5);
		s4=rs.getString(6);
		s5=rs.getString(7);
		s6=rs.getString(8);
		s7=rs.getString(9);
		s8=rs.getString(10);
		s9=rs.getString(11);
		s10=rs.getString(14);
		sname=rs.getString(15);
		r=rs.getInt(13);
								
								String cprice=new String(Base64.decode(s2.getBytes()));
								String icat=new String(Base64.decode(s0.getBytes()));								
								String cmfg=new String(Base64.decode(s3.getBytes()));
								String cdesc=new String(Base64.decode(s4.getBytes()));
								String color=new String(Base64.decode(s5.getBytes()));
								String btnshape=new String(Base64.decode(s6.getBytes()));
								String wseason=new String(Base64.decode(s7.getBytes()));
								String stl=new String(Base64.decode(s8.getBytes()));
								String gender=new String(Base64.decode(s9.getBytes()));
		
		
		
									
	
%>
          <p align="center" > <input  name="image" type="image" src="images.jsp?id=<%=i%>" style="width:150px; height:150px;" /> </p>
          
 <table border="1" align="center" cellpadding="0" cellspacing="0"  width="443" >
				 				<tr >
								    <td width="161" height="27" bgcolor="#FFFFFF" >
								  <div align="center" class="style7"><b>Image Category </b></div></td>
							      <td width="293" bgcolor="#FFFFFF"><div align="center" class="style8" style="color:#006633"><b><%= icat%></b></div></td>
		  						
								<tr>
									<td width="161" height="27" bgcolor="#FFFFFF" >
								  <div align="center" class="style7"><b>Image Name </b></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style12"><b><%= s1%></b></div></td>
				    			</tr>
								<tr>
									<td width="161" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><b>Cloth Price  </b></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style8"><b><%= cprice%> Rs</b></div></td>
				    			</tr>			    
				    			<tr>
									<td width="161" height="27" bgcolor="#FFFFFF">
						  		  <div align="center" class="style7"><b>Cloth Manufacturer </b></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style8" style="color:#996600"><b><%= cmfg%></b></div></td>
								</tr>
								
								<tr>
										<td width="161" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><b>Cloth Description </b></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8"><b><%= cdesc%></b></div></td>
								</tr>
																
								<tr>
										<td width="161" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><b>Color</b></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8"><b><%= color%></b></div></td>
								</tr>
								
								<tr>
										<td width="161" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><b>Button Shape</b></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8"><b><%= btnshape%></b></div></td>
								</tr>
								
								<tr>
										<td width="161" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><b>Wearing Season</b></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8"><b><%= wseason%></b></div></td>
								</tr>
								
								<tr>
										<td width="161" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><b>Style</b></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8"><b><%= stl%></b></div></td>
								</tr>
								
								<tr>
										<td width="161" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><b>Gender For</b></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8" style="color:#CC3333"><b><%= gender%></b></div></td>
								</tr>
								
								<tr>
										<td width="161" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><b>Image Score</b></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8"><b><%= r%></b></div></td>
								</tr>
								
								
						<%
						}
						
						
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
		</table> 
 
                     
			
				<p>&nbsp;</p>
	         <div align="right" class="style22"><a href="Seller_AllUserPurchase.jsp" class="style4">Back</a></div>
		  
		  
		  
		  
		  
		  
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
            <li><a href="SellerMain.jsp">&raquo; Home</a></li>
			<li><a href="SellerLogin.jsp">&raquo; Logout</a></li>
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