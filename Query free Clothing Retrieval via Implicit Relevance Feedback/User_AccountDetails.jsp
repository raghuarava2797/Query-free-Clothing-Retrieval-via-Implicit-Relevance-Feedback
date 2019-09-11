<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Account Details Page</title>
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
          <h2 class="style2" style="color:#CC6600">User <%=(String)application.getAttribute("uname")%>'s Account Details</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <p>&nbsp;</p>
           			<table width="405" border="2" align="center"  cellpadding="0" cellspacing="0"  >
                    <%
						
						String user=(String )application.getAttribute("uname");
						
						String i,s1,s2,s3,s4,s5;
						int s6=0;;
						 
						try 
						{
						   	String query="select * from account where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getString(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getInt(7);
								
								
					%>
                    <tr>
                      <td  width="176" bgcolor="#006600" valign="middle" height="40" style="color: #FFFFFF;"><div align="left" class="style3 style4 style14 style7 style15 style9 style41" style="margin-left:20px;"><b>Account Number </b></div></td>
                      <td  width="221" valign="middle" height="40" style="color:#FF0000;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                         <b> <%out.println(i);%></b>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" bgcolor="#006600" valign="middle" height="40" style="color: #FFFFFF;"><div align="left" class="style3 style4 style14 style7 style15 style9 style41" style="margin-left:20px;"><b>Account Holder Name </b></div></td>
                      <td  width="221" valign="middle" height="40" style="color: #CC0033;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                         <b> <%out.println(s1);%></b>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" bgcolor="#006600" align="left" valign="middle" height="40" style="color: #FFFFFF;"><div align="left" class="style3 style4 style14 style7 style15 style9 style41" style="margin-left:20px;"><b>Address</b></div></td>
                      <td  width="221" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s2);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" bgcolor="#006600" align="left" valign="middle" height="40" style="color: #FFFFFF;"><div align="left" class="style3 style4 style14 style7 style15 style9 style41" style="margin-left:20px;"><b>Email Id</b></div></td>
                      <td  width="221" align="left" valign="middle" height="40" style="color: #006666;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                        <b>  <%out.println(s3);%></b>
                      </div></td>
                    </tr>
                    <tr>
                      <td align="left" bgcolor="#006600" valign="middle" height="51" style="color: #FFFFFF;"><div align="left" class="style3 style4 style14 style7 style15 style9 style41" style="margin-left:20px;"><b>Mobile Number</b></div></td>
                      <td align="left" valign="middle" height="51" style="color: #000000;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s4);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td align="left" bgcolor="#006600" valign="middle" height="51" style="color: #FFFFFF;"><div align="left" class="style3 style4 style14 style7 style15 style9 style41" style="margin-left:20px;"><b>Bank Name</b></div></td>
                      <td align="left" valign="middle" height="51" style="color: #660033;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                        <b>  <%out.println(s5);%>  </b>
                      </div></td>
                    </tr>
                    <tr>
                      <td   width="176" bgcolor="#006600" align="left" valign="middle" height="51" style="color: #FFFFFF;"><div align="left" class="style3 style4 style14 style7 style15 style9 style41" style="margin-left:20px;"><b>Account Balance</b></div></td>
                      <td  width="221" align="left" valign="middle" height="51" style="color: #000000;"><div align="left">
                          <div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                            <%out.println(s6);%>Rs/-
                      </div></td>
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