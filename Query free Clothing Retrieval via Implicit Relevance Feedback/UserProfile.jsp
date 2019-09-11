<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main Page</title>
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
          <h2 class="style2" style="color:#CC6600">User <%= (String)application.getAttribute("uname")%>'s Profile</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <p>&nbsp;</p>
           <table width="500" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            
            
            <%
						String user=(String )application.getAttribute("uname");						
						
						
						String s1,s2,s3,s4,s5,s6,s7,s8;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(9);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								
								
					%>
            <tr>
              <td width="195" rowspan="8" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:150px; height:150px;" />
              </a></strong></div></td>
            </tr>
            <tr>
              <td  width="105" height="37" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>E-Mail</b></div></td>
              <td  width="192" valign="middle" height="40" style="color:#006666;"><div align="left" class="style66" style="margin-left:20px;">
                          <b><%out.println(s2);%></b>
                </div></td>
            </tr>
            <tr>
              <td  width="105" height="40" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Mobile</b></div></td>
              <td  width="192" valign="middle" height="40" style="color: #000000;"><div align="left" class="style6" style="margin-left:20px;">
                          <%out.println(s3);%>
                </div></td>
            </tr>
            <tr>
              <td height="43" align="left" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Address</b></div></td>
              <td  width="192" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style6" style="margin-left:20px;">
                          <%out.println(s4);%>
                </div></td>
            </tr>
            <tr>
              <td  width="105" height="43" align="left" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Date of Birth</b></div></td>
              <td  width="192" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style6" style="margin-left:20px;">
                          <%out.println(s5);%>
                </div></td>
            </tr>
            <tr>
              <td  width="105" height="40" align="left" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Gender</b></div></td>
              <td  width="192" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style6" style="margin-left:20px;">
                          <%out.println(s6);%>
                </div></td>
            </tr>
			
			
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
          </table>
	
				  
				  <p>&nbsp;</p>
				  <p align="right" class="style14"><a href="UserMain.jsp" class="style13">Back</a></p>
		  
		  
		  
		  
		  
		  
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