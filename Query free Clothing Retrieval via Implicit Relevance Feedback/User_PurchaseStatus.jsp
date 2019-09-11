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
<title>Purchase Status Page</title>
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
          <h2 class="style2" style="color:#CC6600">Purchase Status..</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <p>&nbsp;</p>
           		<% 
				
				
				



try
{
				String cprice="";

				String icat=request.getParameter("icat");
				String iname=request.getParameter("iname");				
		    	int imgid=Integer.parseInt(request.getParameter("id"));								
				String sname=request.getParameter("sname");
				String accno=request.getParameter("accno");
				String price=request.getParameter("amount");		
				

				String user=(String)application.getAttribute("uname");
		


SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
Date now = new Date();

String strDate = sdfDate.format(now);
String strTime = sdfTime.format(now);
String date = strDate + "   " + strTime;



	
	int currentbalance=0;	
	
	String remain_bal="";
	String sql="SELECT amount FROM account where user='"+user+"' and account_no='"+accno+"' ";
	Statement stmt = connection.createStatement();
	ResultSet rs =stmt.executeQuery(sql);
	if(rs.next()==true)
	{
		 currentbalance=Integer.parseInt(rs.getString(1));
		 
		 
		    
						int cloth_price=Integer.parseInt(price);
						if(cloth_price<=currentbalance)
						{
	
			
							 remain_bal=String.valueOf(currentbalance-cloth_price);
							
							
							
							
							
							
						/* Updating the remaining balance into Bank Account */
														
							String rembl="UPDATE account SET amount="+remain_bal+" where account_no='"+accno+"'";
							Statement remb=connection.createStatement();
							remb.executeUpdate(rembl);
							
							/* Updation Query Ends */
							
							
											


						PreparedStatement ps1=connection.prepareStatement("insert into purchase(account_no,user,imgid,iname,icat,date,price,sname) values(?,?,?,?,?,?,?,?)");
														ps1.setString(1,accno);
														ps1.setString(2,user);
														ps1.setInt(3,imgid);
														ps1.setString(4,iname);
														ps1.setString(5,icat);
														ps1.setString(6,date);
														ps1.setString(7,price);
														ps1.setString(8,sname);
														
														int k1=ps1.executeUpdate();
						
			
									if(k1>0)
									{	
									
					
									
									%>
		  </div>
		 							 <br/><br/> <p align="left" class="style7">&nbsp;</p>
									 <p align="center" class="style7 style1">	Purchase Done Successfully..</p>
									 <div align="center"><br/>
									<br/>
									<a href="User_SearchClothImages.jsp">Back</a>
									<%
									}
									else
									{
									%>
		  </div>
									<br/><br/><p align="center" class="style7 style1">Transaction Failed !!..Please Try Again..</p>
									<div align="center"><br/>
									<br/>
									<a href="UserMain.jsp">Back</a>
									<%
									}
			
	
						}
						else
						{
				
										
						
						
						%>
						</div>
						<br/><br/> <p align="center" class="style7 style1">Insufficient Balance in Bank Account..Please try Again..</p>
						<div align="center"><br/>
						<br/>
						<a href="UserMain.jsp">Back</a>
						<%
						}
		
				
	}
	else
	{
	%>
	</div>
	<br/><br/> <p align="center" class="style7 style1">Account Number Not Found..Please Try Again..</p>
	<div align="center"><br/>
	<br/>
	<a href="UserMain.jsp">Back</a>
	<%
	}
	
	
	
	




connection.close();
}
catch(Exception e)
{
out.print(e);
}

%>
		  
		  
		  
		  
		  
		  
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