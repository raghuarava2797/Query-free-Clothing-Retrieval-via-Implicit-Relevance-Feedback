<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Seller Login Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.sname.value;
if(na3=="--Select--")

{
alert("Please Select Seller Name");
document.s.sname.focus();
return false;
}


}
</script>
<style type="text/css">
<!--
.style2 {color: #CC6600}
.style4 {color: #000000}
.style5 {color: #FFFF00}
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
          <h2 class="style2" style="color:#CC6600">Welcome To Seller Login</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <p><img src="../Combining Data Owner side and Cloud side Access Control for Encrypted Cloud Storage/images/Login.jpg" width="293" height="99" /></p>
            <form name="s" method="post" action="SellerAuthentication.jsp" onsubmit="return valid()" >
				    <table width="464" border="0" cellspacing="2" cellpadding="2">
                      <tr>
                        <td width="164" height="46" align="center" bgcolor="#FF0000"><span class="style34 style5">
                          <label for="name">Select Seller Name </label>
                        </span> </td>
					  <td width="286"><select id="s2" name="sname" style="width:145px;" class="text">
                        <option>--Select--</option>
                        <option>Amazon</option>
					    <option>Myntra</option>
						<option>Flipkart</option>                        						
                      </select></td>
                      </tr>
					  <tr>
                        <td width="164" height="46" align="center" bgcolor="#FF0000"><span class="style34 style5">
                          <label for="name">Username (required)</label>
                        </span> </td>
                        <td width="286"><input id="name" name="userid" class="text" /></td>
                      </tr>
                      <tr>
                        <td height="40" align="center" bgcolor="#FF0000"><span class="style34 style5">Password (required)</span></td>
                        <td><input type="password" id="pass" name="pass" class="text" /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><span class="style16">
                          <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
                          <span class="style4"><b> New User?</b></span></span><a href="SellerRegister.jsp" class="style2 style30"><b> Register </b></a></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
              </table>
		    </form>
		  
		  
		  
		  
		  
		  
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
            <li><a href="index.html">&raquo; Home</a></li>
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