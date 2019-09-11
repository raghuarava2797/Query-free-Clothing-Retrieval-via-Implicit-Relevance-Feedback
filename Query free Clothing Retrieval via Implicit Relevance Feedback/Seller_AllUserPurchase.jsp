<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Purchased Cloths Page</title>
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
.style4 {color: #660033;
		font-weight: bold;}
.style5 {color:#006633}
.style7 {color:#CC9900}		
.style81 { color:#006666}
.style82 { color:#CC0066}
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
          <h2 class="style2" style="color:#CC6600">All User Purchased Cloths..</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <p>&nbsp;</p>
            	<table width="600" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="42"  valign="middle" height="34" style="color: #660033;"><div align="center" class="style13 style4"><b>Si No. </b></div></td>
					  <td  width="94" valign="middle" style="color: #660033;"><div align="center" class="style13 style4"><b>Purchased User</b></div></td>
					  <td  width="94" valign="middle" style="color: #660033;"><div align="center" class="style13 style4"><b>User Account No</b></div></td>
					  <td  width="118"  valign="middle" height="34" style="color: #660033;"><div align="center" class="style13 style4"><b>Cloth Image</b></div></td>
                      <td  width="113" valign="middle" style="color: #660033;"><div align="center" class="style13 style4"><b>Image Category</b></div></td>
                      <td  width="118" valign="middle" style="color: #660033;"><div align="center" class="style13 style4"><b>Image Name</b></div></td>
					  
					  
                      <td  width="94" valign="middle" style="color: #660033;"><div align="center" class="style13 style4"><b>Cloth Price</b></div></td>
					  
					  
					  
                      <td  width="101" valign="middle" style="color: #660033;"><div align="center" class="style13 style4"><b>Purchase Date</b></div></td>
                    </tr>
                    
                    <%
					  
						String s1,s2,s3,s4,s5,s6,s7,s8,s9;
						int i=0,j=1,total1=0;
						try 
						{
					
							String sname=(String)application.getAttribute("sname");
						   	String query="select *  from purchase where sname='"+sname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
									
									s2=rs.getString(6);
									s3=rs.getString(5);
									s4=rs.getString(8);
									s5=rs.getString(7);
									s6=rs.getString(3);
									s7=rs.getString(2);
									i=rs.getInt(4);
										
											
											String icat=new String(Base64.decode(s2.getBytes()));
									
											
												%>
                    <tr>
                      <td height="172" align="center"  valign="middle"><div align="center" class="style1"><b>
                          <%out.println(j);%>
                      </b></div></td>
					  <td align="center"  valign="middle"><div align="center" class="style5">
                         <a href="Seller_UProfile.jsp?type=<%="Seller_UserPurchases"%>&uname=<%=s6%>" style="color:#006633"> <b><%out.println(s6);%></b> </a>
                      </div></td>
					  <td align="center"  valign="middle"><div align="center" class="style7">
                          <b><%out.println(s7);%></b>
                      </div></td>
                      <td><div align="center">
                        <input  name="image" type="image" src="images.jsp?id=<%=i%>" width="100" height="100" alt="Submit">
    					  </input></div></td>
                      <td align="center"  valign="middle"><div align="center" class="style81">
					  
                        <b><%out.println(icat);%></b>
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style82">
                        <a href="Seller_ClothDetails.jsp?iname=<%=s3%>&id=<%=i%>" style="color:#CC0033"><b><%out.println(s3);%></b></a>
                      </div></td>
					  
                      <td align="center"  valign="middle"><div align="center" class="style1">
                        <b><%out.println(s4);%></b>Rs/-
                      </div></td>					  
					  
                      <td align="center"  valign="middle"><div align="center" class="style1">
                          <%out.println(s5);%>
                      </div></td>
                    </tr>
                    <%
												j+=1;	
						 int total=Integer.parseInt(s4);
						   total1=total1+total;
						 
						
							}
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
			      
			      <div align="left" class="style4">
			        <p>&nbsp;</p>
			        <p>
			          <%out.println("Total Bill: "+total1+" "+" Rs");%>
		            </p>
			        <p align="center">&nbsp;</p>
			        <p align="center"><strong><a href="SellerMain.jsp">Back</a></strong></p>
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
            <li><a href="SellerMain.jsp">&raquo; Home</a></li>
			<li><a href="SellerLogin.jsp">&raquo; Logout</a></li>
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