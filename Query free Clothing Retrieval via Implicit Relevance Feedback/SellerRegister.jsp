<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Seller Register Page</title>
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

var gnd=document.s.gender.value;
if(gnd=="--Select--")
{
alert("Please Select Gender");
document.s.gender.focus();
return false;
}


}
</script>
<style type="text/css">
<!--
.style1 {color:#000000}
.style2 {color: #CC6600}
.style5 {
	color: #FF0000;
	font-weight: bold;
}
.style11 {font-weight: bold}
.style14 {font-weight: bold}
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
          <h2 class="style2" style="color:#CC6600">Welcome To Seller Registration..</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <p><img src="images/Register.jpg" width="281" height="113" /></p>
            <form name="s" action="SellerRegisterStatus.jsp" enctype="multipart/form-data" method="post" onsubmit="return valid()"  >
			  <span class="style1">
	          <label for="gender"><span class="style5">Select Seller Name (required)</span></label>
              </span>
					 <p class="style5">
                      <select id="s2" name="sname" style="width:150px;" class="text">
                        <option>--Select--</option>
                        <option>Amazon</option>
					    <option>Myntra</option>
						<option>Flipkart</option>
                      </select>
                    </p>
                     <span class="style5">
                     <label for="name">
					
					User Name (required)</label>
                     </span>
                     <p class="style5">
                      <input id="name" name="userid" class="text" />
                    </p>
			         <span class="style5">
			         <label for="password">Password (required)</label>
                     </span>
			        <p class="style5">
                      <input type="password" id="password" name="pass" class="text" />
                    </p>
			        <span class="style5">
			        <label for="email">Email Address (required)</label>
                    </span>
			        <p class="style5">
                      <input id="email" name="email" class="text" />
                    </p>
			        <span class="style5">
			        <label for="mobile">Mobile Number (required)</label>
                    </span>
			        <p class="style5">
                      <input id="mobile" name="mobile" class="text" />
                    </p>
			        <span class="style5">
			        <label for="address">Your Address</label>
                    </span>
			        <p class="style5">
                      <textarea id="address" name="address" rows="3" cols="22"></textarea>
                    </p>
			        <span class="style5">
			        <label for="dob">Date of Birth (required)<br />
                    </label>
                    </span>
			        <p class="style5">
                      <input id="dob" name="dob" class="text" />
                    </p>
			        <span class="style5">
			        <label for="gender">Select Gender (required)</label>
                    </span>
			        <p class="style5">
                      <select id="s1" name="gender" style="width:150px;" class="text">
                        <option>--Select--</option>
                        <option>MALE</option>
                        <option>FEMALE</option>
                      </select>
                    </p>	
					<span class="style5">
			        <label for="pic">Select Profile Picture (required)</label>
                    </span>
			        <p class="style1">
                      <input type="file" id="pic" name="pic" class="text" />
                    </p>				
			       <br />
                      <input name="submit" type="submit" value="REGISTER" />
                    </p>
                    <p>&nbsp;</p>
			        <p align="left" class="style14"><a href="SellerLogin.jsp" class="style11">Back</a></p>
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