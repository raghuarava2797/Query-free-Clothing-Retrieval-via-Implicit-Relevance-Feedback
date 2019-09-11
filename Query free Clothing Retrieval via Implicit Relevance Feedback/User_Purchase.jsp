<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Purchase Page</title>
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
.style3 {color: #FFFFFF}
.style4 {color: #FFFFFF; font-weight: bold; }
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
          <h2 class="style2" style="color:#CC6600">Purchase..</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <p>&nbsp;</p>
           
		  		<%
				
				String icat=request.getParameter("icat");
				String iname=request.getParameter("iname");
				String sc= request.getParameter("score");
		    	String one=request.getParameter("id");
				String imgid=request.getParameter("imgid");				
				String sname=request.getParameter("sname");
				String cprice=request.getParameter("cprice");
				
		  	String user=(String)application.getAttribute("uname");
			String account="";
		    String sql="SELECT account_no FROM account where user='"+user+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()==true)
			{
			
			
					account=rs.getString(1);
					
			}
		  
		  
		  
		  %>
                  
		   
		   <form name="s" action="User_PurchaseStatus.jsp?icat=<%=icat%>&iname=<%=iname%>&id=<%=imgid%>&sname=<%=sname%>" method="post">

<table width="318" height="170" bgcolor="#FF9900" border="1" align="left">

	
	
	<tr>
		<td width="155" class="style4">Account Number   : </td>
		<td width="147"><input type="text"  name="accno" value="<%=account%>" readonly/></td>
	</tr>	
	<tr>
		<td width="155"><span class="style4">Purchase Amount   : </span></td>
		<td width="147"><input type="text"  name="amount" value="<%=cprice%>" readonly/></td>
	</tr>


	<tr>
		<td>
		<div align="right"></div>		</td>
		<td><input type="submit" name="Submit" value="Purchase" /></td>
	</tr>
</table>
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
              <td width="468"><div align="right"><a href="User_ClothImageDetails.jsp?iname=<%=iname%>&score=<%=sc%>&id=<%=one%>" class="style14">Back</a></div></td>
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