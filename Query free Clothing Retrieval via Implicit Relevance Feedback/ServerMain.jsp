<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Server Main Page</title>
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
          <h2 class="style2" style="color:#CC6600">Welcome To Web Image Server </h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p><img src="images/Admin.png" width="483" height="479" /></p>
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
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="ServerMain.jsp">&raquo; Home</a></strong></li>
			<li><strong><a href="Server_GiveUserAuthorization.jsp">&raquo; View Users and Give Authorization</a></strong></li>
			<li><strong><a href="Server_GiveSellerAuthorization.jsp">&raquo; View Sellers and Give Authorization</a></strong></li>
			<li><strong><a href="Server_ViewScKeyReq.jsp">&raquo; View User's Request and generate Secret Key using RSA</a></strong></li>
			<li><strong><a href="Server_AddImgCategory.jsp">&raquo; Add Image Category</a></strong></li>
			<li><strong><a href="Server_ViewAllClothImages.jsp">&raquo; View all Cloth Images with Rank and FeedBacks</a></strong></li>
			<li><strong><a href="Server_ViewAllUserPurchases.jsp">&raquo; View all User Purchased Cloths with All Details</a></strong></li>
			<li><strong><a href="Server_ViewClothImgRankInChart.jsp">&raquo; View All Cloth Images with Ranks in Chart</a></strong></li>
			<li><strong><a href="Server_ViewKeywordRankInChart.jsp">&raquo; View All Keyword  with Ranks in Chart</a></strong></li>
			<li><strong><a href="Server_ViewFeedbackRankInChart.jsp">&raquo; View All Number of Feedbacks per each cloth  with Scores in Chart</a></strong></li>
			<li><strong><a href="ServerLogin.jsp">&raquo; Logout</a></strong></li>
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