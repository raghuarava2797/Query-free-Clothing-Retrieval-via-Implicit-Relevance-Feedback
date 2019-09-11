<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Create Account Page</title>
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
.style4 { color:#660033;
		font-size: 14px;
		font-weight:bold}
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
          <h2 class="style2" style="color:#CC6600">Bank Account Creation..</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <%
		   
		   String user=(String )application.getAttribute("uname");
						
						String s1,s2,s3,s4,s5;
		   
		   %>
		   
		   
		   <form name="s" action="User_AcCreationStatus.jsp" method="post" enctype="multipart/form-data" >
<p>
<%
	
      	
	

      	try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								
								
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
	   
		
		
%>
</p>
<table width="414" height="259" bgcolor="#FFCC00" border="1" align="left">

	
	
	<tr>
		<td width="230"><span class="style4">Account Number (required)  : </span></td>
		<td width="168"><input id="name" name="accno" type="text" size="28" class="text" /></td>
	</tr>
	
	<tr>
		<td width="230"><span class="style4">Bank Name (required)  : </span></td>
		<td width="168"><input type="text" id="bank" name="bank" size="28" class="text" /></td>
	</tr>
	
	<tr>
		<td width="230"><span class="style4">Email Id  : </span></td>
		<td width="168"><input id="email" name="email"value="<%=s1%>" size="28" readonly /></td>
	</tr>
	
	<tr>
		<td width="230"><span class="style4">Mobile Number  : </span></td>
		<td width="168"><input id="mobile" name="mobile" value="<%=s2%>" size="28" readonly /></td>
	</tr>
	
	<tr>
		<td width="230"><span class="style4">Address  : </span></td>
		<td width="168"><input id="address" name="address" value="<%=s3%>" size="28" readonly /></td>
	</tr>
	<tr>
		<td width="230"><span class="style4">Amount (required)  : </span></td>
		<td width="168"><input id="amount" name="amount" class="text" size="28" /></td>
	</tr>

	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	
	<tr>
		<td>
		<div align="right"></div>
		</td>
		<td><input type="submit" name="Submit" value="Create Account" /></td>
	</tr>
	
</table>
<p>
		              <%

	   
			}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
              </p>
</form>
           			 
		  <p>&nbsp;</p>
 		  <p>&nbsp;</p>
 		  <p>&nbsp;</p>
 		  <p>&nbsp;</p>
 		  <p>&nbsp;</p>
 		  <p>&nbsp;</p>
 		  <p align="left" class="style14">&nbsp;</p>
					<table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="right"><a href="User_Account.jsp" class="style14">Back</a></div></td>
            </tr>
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