<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Transactions Page</title>
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
.style4 {color:#000000}
.style5 {color:#CC0033}
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
          <h2 class="style2" style="color:#CC6600">All Search Transactions.....</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <p>&nbsp;</p>
           
		  		<table width="400" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
              <tr>
                <td  width="43" valign="middle" height="34" style="color: #660033;"><div align="center" class="style47 style50"><b>Si No</b>.</div></td>
                <td  width="167" valign="middle" height="34" style="color: #660033;"><div align="center" class="style52"><b>Searched Keyword</b></div></td>
                <td  width="146" valign="middle" height="34" style="color: #660033;"><div align="center" class="style52"><b>Date & Time</b></div></td>
              </tr>
              
              <%
					  
						
						try 
						{
						    String user = (String)application.getAttribute("uname");
							
							String keyword="",date="";
							int i=0;
						    
						   	String query="select * from search where user='"+user+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
																
								keyword=rs.getString(3);
								date=rs.getString(4);
								
								i++;
								
								
								
					%>
              <tr>
                <td height="46" align="center"  valign="middle"><div align="center" class="style4">
                    <div align="center">
                      <b><%out.println(i);%></b>                    </div>
                </div></td>
                <td height="46" align="center"  valign="middle"><div align="center" class="style5"><b>
                    <%out.println(keyword);%>
                </b></div></td>
                <td height="46" align="center"  valign="middle"><div align="center" class="style4">
                    <%out.println(date);%>
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
						<form id="form1" method="post" action="User_ViewKeywordScore.jsp">
                          
                          <p>&nbsp;</p>
                          <p>&nbsp;</p>
                          <p>&nbsp;</p>
                          <p>&nbsp;</p>
						  <p>&nbsp;</p>
						  <p>&nbsp;</p>
                          <p>
                            <input type="submit" name="Submit" value="View Keyword Searched Times" style="background-color:#CC0033; color:#FFFFFF; />
                      	</form>
					   
			<p>&nbsp;</p>
			        <p align="left" class="style14">
  &nbsp; </p>
                          </p>
<table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="right"><a href="UserMain.jsp" class="style14">Back</a></div></td>
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