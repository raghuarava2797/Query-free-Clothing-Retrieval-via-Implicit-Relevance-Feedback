<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %>
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Adding Images Status Page</title>
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
          <h2 class="style1" style="color:#CC6600">Adding Cloth Images Status..</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <p>&nbsp;</p>
            	<%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String icategory=null,iname=null,cprice=null,cmfg=null,cdesc=null,color=null,btnshape=null,wseason=null,stl=null,gender=null,image=null,bin = "",uses=null, paramname=null;
					
					FileInputStream fs=null;
					
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("icategory"))
							{
								icategory=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("iname"))
							{
								iname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("cprice"))
							{
								cprice=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("cmfg"))
							{
								cmfg=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("cdesc"))
							{
								cdesc=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("color"))
							{
								color=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("btnshape"))
							{
								btnshape=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("wseason"))
							{
								wseason=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("stl"))
							{
								stl=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("gender"))
							{
								gender=multi.getParameter(paramname);
							}
														
							}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								
							}		
						}
						
					if(icategory.equals("--Select--"))
					{
					%>
                    </p>
					    <p class="style37 style49 style5 style4">Please Select Image Category..</p>	
                    <p class="style41"><a href="Seller_AddClothImages.jsp" class="style7 style46">Back</a></p>
                  <p class="style41">
                      <%
					}	
		
		             else
					   {
					   
					   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   	           SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			           Date now = new Date();

			           String strDate = sdfDate.format(now);
			           String strTime = sdfTime.format(now);
			           String dt = strDate + "   " + strTime;
			
					    int rank =0;
						
						String sname=(String)application.getAttribute("sname");
						
						String icategory1=new String(Base64.encode(icategory.getBytes()));
						String cprice1=new String(Base64.encode(cprice.getBytes()));
						String cmfg1=new String(Base64.encode(cmfg.getBytes()));
						String cdesc1=new String(Base64.encode(cdesc.getBytes()));
						String color1=new String(Base64.encode(color.getBytes()));
						String btnshape1=new String(Base64.encode(btnshape.getBytes()));
						String wseason1=new String(Base64.encode(wseason.getBytes()));
						String stl1=new String(Base64.encode(stl.getBytes()));
						String gender1=new String(Base64.encode(gender.getBytes()));
						
					PreparedStatement ps=connection.prepareStatement("insert into images(icat,iname,cprice,cmfg,cdesc,color,btnshape,wseason,style,gender,image,rank,dt,sname) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
						
						ps.setString(1,icategory1);
						ps.setString(2,iname);
						ps.setString(3,cprice1);	
						ps.setString(4,cmfg1);					        	
						ps.setString(5,cdesc1);
						ps.setString(6,color1);
						ps.setString(7,btnshape1);
						ps.setString(8,wseason1);
						ps.setString(9,stl1);
						ps.setString(10,gender1);
						ps.setBinaryStream(11, (InputStream)fs, (int)(file1.length()));
						ps.setInt(12,rank);
						ps.setString(13,dt);
						ps.setString(14,sname);
						ps.executeUpdate();
					   
						%>
                    </span>
		    <p class="style6"><span class="style6 style4">Cloth Image Uploaded Successfully..</span></p>	
                 
                    <span class="style41">
                    </p>
                    </span>
<p class="style41">&nbsp; </p>
                    <p class="style41"><a href="Seller_AddClothImages.jsp" class="style7 style46">Back</a><a href="Seller_AddClothImages.jsp" class="style7 style42"></a></p>
                    <span class="style41">
                    <%
			
					
					
					
					
						}
					}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
                    </p>
                    </span>
		  
		  
		  
		  
		  
		  
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