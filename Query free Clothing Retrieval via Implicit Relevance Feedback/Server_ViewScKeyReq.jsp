<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Secret Key Requests Page</title>
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
.style3 {color: #006666}
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
          <h2 class="style2" style="color:#CC6600">View Secret Key Requests.. </h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
		  
		  		<table width="504" align="center" border="1.5"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="45"  valign="middle" height="31" style="color: #660033;"><div align="center" class="style5 style56 style57"><b>ID</b></div></td>
              <td  width="127" valign="middle" height="31" style="color: #660033;"><div align="center" class="style5 style56 style57"><b>User Name</b></div></td>
              <td  width="128" valign="middle" height="31" style="color: #660033;"><div align="center" class="style5 style56 style57"><b>Requested Date</b></div></td>
              <td  width="165"  valign="middle" height="31" style="color: #660033;"><div align="center" class="style5 style56 style57"><b>Secret Key Status</b> </div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
					  String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from sckey_req"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(3);
								
								
					%>
            <tr>
              <td height="23" align="center"  valign="middle"><div align="center" class="style1">
                <%out.println(i);%>
              </div></td>
              <td height="23" align="center"  valign="middle"><div align="center" class="style7">
                <a href="Server_UserProfile.jsp?type=<%="Server_ViewScKeyReq"%>&uname=<%=s1%>" style="color:#CC0033"><b><%out.println(s1);%></b></a>
              </div></td>
              <td height="23" align="center"  valign="middle"><div align="center" class="style1">
                <%out.println(s2);%>
              </div></td>
              <%
						if(s3.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td valign="middle" height="23" style="color:#000000;"align="center"><div align="center" class="style98">
                  <div align="center" class="style20 style37 style46"><a href="Server_GenerateScKey.jsp?id=<%=i%>" class="style9 style2"><b>Generate</b></a></div>
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="27" height="23" align="center"  valign="middle"><div align="center" class="style3">
                  <b><%out.println(s3);%></b>
              </div></td>
			 		 <%}
					%>
            </tr>
            <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="right"><a href="ServerMain.jsp" class="style11"></a></p>
          <table width="610" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="654"><div align="right"><a href="ServerMain.jsp" class="style95">Back</a></div></td>
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
            <li><a href="ServerMain.jsp">&raquo; Home</a></li>
			<li><a href="ServerLogin.jsp">&raquo; Logout</a></li>
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