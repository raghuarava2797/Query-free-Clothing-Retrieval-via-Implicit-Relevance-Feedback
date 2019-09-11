<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Feedback Page</title>
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
          <h2 class="style2" style="color:#CC6600">Give Your Feedback ..</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <p>&nbsp;</p>
           	<%
		   			String icat=request.getParameter("icat");
		 		    String iname=request.getParameter("iname");
					String sc= request.getParameter("score");
		   			String one=request.getParameter("id");
						
			%>
						
						
		<form name="s" action="User_Feedback1.jsp?icat=<%=icat%>&iname=<%=iname%>&score=<%=sc%>&id=<%=one%>" method="post"  onSubmit="return valid()"  ons target="_top">
    
	<table width="419" border="0" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr><td width="3"></td>
					<td width="3"></td>
					  <td   width="104" align="left" valign="middle" height="45" style="color: #660000;"><div align="right" class="style7"  style="margin-left:20px;">Give Feedback </div></td>

						<td  width="178" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left">
					  <div align="left" style="margin-left:20px;"><textarea name="feedback" rows="3" cols="23"></textarea></div></td>
					
					  <td width="131" height="45" colspan="2" align="center" id="learn_more"  style="color:#003399;"><span style="font-size: 18px">
				      <input type="submit" value="Submit" style="width:80px; height:35px; background-color:#006600; color:#FFFFFF;"/>
				      </span></td>
					</tr>
          </table>


	 </form>
	 
		<p>&nbsp;</p>
	    <div align="center" class="style22">
	      <p>&nbsp;</p>
	      <p>&nbsp;</p>
	      <p><a href="User_ClothImageDetails.jsp?iname=<%=iname%>&score=<%=sc%>&id=<%=one%>" class="style11">Back</a></p>
	    </div>
		  
		  
		  
		  
		  
		  
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