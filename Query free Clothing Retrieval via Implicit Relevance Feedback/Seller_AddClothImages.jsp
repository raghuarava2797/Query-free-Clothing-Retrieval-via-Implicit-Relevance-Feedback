<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Cloth Images Page</title>
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
.style4 {color: #000000}
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
          <h2 class="style1" style="color:#CC6600">Add Cloth Images..</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <p>&nbsp;</p>
            	<form action="Seller_AddClothImages1.jsp" method="post" enctype="multipart/form-data" id="s" ">
			        
                    <%
	
      	
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		
      		 
           
           String query="select imgcategory from img_category"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString(1));
		
	   }
	   
		
		
%>

                    <table width="575" border="0" align="left">
                      <tr>
                        <td width="141" height="33"><div align="justify"><span class="style1">Select Image Category :</span></div></td>
                        <td width="424"><label>
                          <select id="s1" name="icategory" style="width:150px">
                            <option>--Select--</option>
							
                            <% 
							for(int i=0;i<a1.size();i++)
							{
							 
								 %>
								<option><%= a1.get(i)%></option>
								<%
							}
							%>
                          </select>
                        </label></td>
                      </tr>
                      <tr>
                        <td height="36"><div align="justify"><span class="style1">Cloth Image Name :</span> </div></td>
                        <td><label>
                          <input type="text" id="iname" name="iname" />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="35"><div align="justify"><span class="style1">Cloth Price :</span></div></td>
                        <td><label>
                          <input type="text" id="price" name="cprice" />
                        </label></td>
                      </tr>
					  <tr>
                        <td height="35"><div align="justify"><span class="style1">Cloth Manufacturer :</span></div></td>
                        <td><label>
                          <input type="text" id="mfg" name="cmfg" />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="53"><div align="justify"><span class="style1">Cloth Description :</span></div></td>
                        <td><label>
                          <textarea name="cdesc" cols="16" rows="2" id="textarea"></textarea>
                        </label></td>
                      </tr>
                      <tr>
                        <td height="51"><div align="justify"><span class="style1"> Color :</span></div></td>
                        <td><label>
						  <input type="text" id="color" name="color" />	
                        </label></td>
                      </tr>
					  <tr>
                        <td height="51"><div align="justify"><span class="style1"> Button Shape :</span></div></td>
                        <td><label>
                          <input type="text" id="btnshape" name="btnshape" />
                        </label></td>
                      </tr>
					  <tr>
                        <td height="51"><div align="justify"><span class="style1"> Wearing Season :</span></div></td>
                        <td><label>
                          <input type="text" id="wseason" name="wseason" />
                        </label></td>
                      </tr>
					  <tr>
                        <td height="51"><div align="justify"><span class="style1"> Style :</span></div></td>
                        <td><label>
                          <input type="text" id="stl" name="stl" />
                        </label></td>
                      </tr>
					  <tr>
                        <td width="141" height="33"><div align="justify"><span class="style1">Select Gender For :</span></div></td>
                        <td width="424"><label>
                          <select id="s1" name="gender" style="width:150px">
                            <option>--Select--</option>
							<option>Gents</option>
							<option>Ladies</option>                            
                          </select>
                        </label></td>
                      </tr>
                      <tr>
                        <td height="38"><div align="justify"><span class="style1"> Add Cloth Image :</span></div></td>
                        <td><input type="file" id="image" name="image" style="width:100%" /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="26">&nbsp;</td>
                        <td>
                          
                          <div align="left">
                            <input type="submit" name="Submit" value="Add Image" />
                          </div></td>
                      </tr>
                  </table>
		            <p>
		              <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		            </p>
</form>
			      <p>&nbsp;</p>
		
					<div align="right">
					  <p>&nbsp;</p>
					  <p>&nbsp;</p>
					  <p>&nbsp;</p>
					  <p>&nbsp;</p>
					  <p>&nbsp;</p>
					  <p>&nbsp;</p>
					  <p>&nbsp;</p>
					  <p>&nbsp;</p>
					  <p>&nbsp;</p>
					  <p>&nbsp;</p>
					  <p align="center">&nbsp;</p>
					  <p align="center"><a href="SellerMain.jsp" class="style11">Back</a></p>
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