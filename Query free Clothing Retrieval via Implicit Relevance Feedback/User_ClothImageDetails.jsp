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
<title>Cloth Image Details Page</title>
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
          <h2 class="style2" style="color:#CC6600">Cloth Image Details..</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <p>&nbsp;</p>
           		<%
          	String uname=(String)application.getAttribute("uname");
		 
		  		  	
		    String iname=request.getParameter("iname");
			String sc= request.getParameter("score");
		    String one=request.getParameter("id");
		  
           String s0="",s1="",Keyword="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",cprice="",sname="";
	       int i=0,k=0,r=0,rank1=0;
  try 
	{	
	
	
	int score = Integer.parseInt(sc);
	int id = Integer.parseInt(one);
	
	 String sql1="update images set rank="+score+" where id='"+id+"' ";
	 Statement stmt1 = connection.createStatement();
	 stmt1.executeUpdate(sql1);
	
	
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
								
									 cprice=new String(Base64.decode(s2.getBytes()));
								String icat=new String(Base64.decode(s0.getBytes()));								
								String cmfg=new String(Base64.decode(s3.getBytes()));
								String cdesc=new String(Base64.decode(s4.getBytes()));
								String color=new String(Base64.decode(s5.getBytes()));
								String btnshape=new String(Base64.decode(s6.getBytes()));
								String wseason=new String(Base64.decode(s7.getBytes()));
								String stl=new String(Base64.decode(s8.getBytes()));
								String gender=new String(Base64.decode(s9.getBytes()));
		
		
		
									
	
%>
          
          
 <table border="1" align="center" cellpadding="0" cellspacing="0"  width="600" >
				 				<tr >
								    <td width="148" rowspan="12" bgcolor="#FFFFFF" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > 
									    <div align="center"><a class="#" id="img1" href="#" >
		                        <input  name="image" type="image" src="images.jsp?id=<%=i%>" style="width:120px; height:120px;"  />
								                                  </a> </div>
								  </div></td>
								  	<td width="128" height="27" bgcolor="#FFFFFF" >
								  <div align="center" class="style7"><b>Image Category </b></div></td>
							      <td width="316" bgcolor="#FFFFFF"><div align="center" class="style8" style="color:#006633"><b><%= icat%></b></div></td>
		  						<tr/>
								<tr>
									<td width="128" height="27" bgcolor="#FFFFFF" >
								  <div align="center" class="style7"><b>Image Name </b></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style12"><b><%= s1%></b></div></td>
				    			</tr>
								<tr>
									<td width="128" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><b>Cloth Price  </b></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style8"><b><%= cprice%> Rs</b></div></td>
				    			</tr>			    
				    			<tr>
									<td width="128" height="27" bgcolor="#FFFFFF">
						  		  <div align="center" class="style7"><b>Cloth Manufacturer </b></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style8" style="color:#996600"><b><%= cmfg%></b></div></td>
								</tr>
								
								<tr>
										<td width="128" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><b>Cloth Description </b></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8"><b><%= cdesc%></b></div></td>
								</tr>
																
								<tr>
										<td width="128" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><b>Color</b></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8"><b><%= color%></b></div></td>
								</tr>
								
								<tr>
										<td width="128" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><b>Button Shape</b></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8"><b><%= btnshape%></b></div></td>
								</tr>
								
								<tr>
										<td width="128" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><b>Wearing Season</b></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8"><b><%= wseason%></b></div></td>
								</tr>
								
								<tr>
										<td width="128" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><b>Style</b></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8"><b><%= stl%></b></div></td>
								</tr>
								
								<tr>
										<td width="128" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><b>Gender For</b></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8" style="color:#CC3333"><b><%= gender%></b></div></td>
								</tr>
								
								<tr>
										<td width="128" height="27" bgcolor="#FFFFFF">
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
		</table> <p align="center"><a href="User_Feedback.jsp?icat=<%=s0%>&iname=<%=s1%>&score=<%=sc%>&id=<%=one%>"><input name="feedback" type="button" value="Give Feedback" style=" height:30px; background-color:#006633; color:#FFFFFF" /></a>
				 <a href="User_Purchase.jsp?icat=<%=s0%>&iname=<%=s1%>&score=<%=sc%>&id=<%=one%>&imgid=<%=i%>&sname=<%=sname%>&cprice=<%=cprice%>"><input name="purchase" type="button" value="Purchase" style=" height:30px; background-color:#FF3300; color:#FFFFFF" /></a></p>	
 
                     
			
				<p>&nbsp;</p>
	         <div align="right" class="style22"><a href="UserMain.jsp" class="style4">Back</a></div>
			 
			 
		  <p>&nbsp;</p>
		  		<p><table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr bgcolor="#FFFFFF"><td width="66" height="44" valign="middle" style="color: #660033;">
			<div align="left" class="style7" style="margin-left:20px;"><b>Image</b></div></td>
			<td width="92" height="44" valign="middle" style="color: #660033;">
			<div align="left" class="style7" style="margin-left:20px;"><b> Feedback By</b></div></td>
			<td width="117" height="44" valign="middle" style="color: #660033;">
			<div align="left" class="style7" style="margin-left:20px;"><b> Feedbacks </b></div></td>
			<td width="88" height="44" valign="middle" style="color: #660033;">
			<div align="left" class="style7" style="margin-left:20px;"><b> Feedback Date </b></div></td>
			</tr>
			

					<%
					
													
						int count=0;
						try 
						{   
						
							int id = Integer.parseInt(one);
							   
						   	String query="select * from feedbacks where iname='"+iname+"' and imgid="+id+" "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query);
					   		while ( rs1.next() )
					   		{
								int j=rs1.getInt(1);
								
								String r_user=rs1.getString(4);
								String dt=rs1.getString(6);
							    String feedback=rs1.getString("feedbacks");
								
								count++;
						
					%>
		<tr>
			<td width="66" bgcolor="#FFFFFF">
			<div class="style8 style2" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="images.jsp?id=<%=id%>" style="width:40px; height:40px;"  />
		    </a></div>	</td>
			
			
			<%if(r_user.equalsIgnoreCase(uname)){%>
			   <td  width="92" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
			   <div align="left" class="style14" style="margin-left:20px;"><b> <%out.println(r_user);%> 
 		   </b></div></td>
			
			<%}else{%>
			
			 <td  width="117" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em><a href="User_UProfile.jsp?type=<%="User_ClothImageDetails"%>&uname=<%=r_user%>&iname=<%=iname%>&id=<%=one%>&score=<%=sc%>" style="color:#FF0033"> <%out.println(r_user);%> 
		    </a></em></strong></div></td>
			<%}%>
			
			
			    <td  width="88" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
				<div align="left" class="style8" style="margin-left:20px;"><b><em>
		        <%out.println(feedback);%>
			</em></b></div></td>
				 <td  width="172" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
				<div align="left" class="style8" style="margin-left:20px;"><b><em>
		        <%out.println(dt);%>
			</em></b></div></td>
</tr>
<%					
					}
					
						if(count==0){
										out.print("No User Has Given Feedback On This Cloth Image");
								}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>


			</table>
		  
		  
		  
		  
		  
		  
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