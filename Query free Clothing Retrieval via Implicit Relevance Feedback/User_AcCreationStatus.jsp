<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
    <%@ page import="java.io.*" %>
    <%@ page import="java.util.*" %>
    <%@ page import="com.oreilly.servlet.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Account Creation Status Page</title>
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
          <h2 class="style2" style="color:#CC6600">Account Creation Status..</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <p>&nbsp;</p>
           			<p>
		   <%
			       
					String uname=(String)application.getAttribute("uname");
				    ArrayList list = new ArrayList();
					ServletContext context = getServletContext();

					String dirName =context.getRealPath("Gallery/");
					
										
								
					String paramname=null,bank=null,email=null,addr=null ,accno=null,mno=null,amount=null;
					 //int initialamount=0;
					
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							
							paramname =  (String)params.nextElement();
							
							if(paramname.equalsIgnoreCase("accno"))
							{
								accno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("bank"))
							{
								bank=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("amount"))
							{
								amount=multi.getParameter(paramname);
							}
							
						
							
						}
									
								String query121="select * from account  where user='"+uname+"' "; 
								Statement st121=connection.createStatement();
								ResultSet rs121=st121.executeQuery(query121);
									
								if ( rs121.next() )
							   {
							   
												   %>
  </p>
  
  <p>&nbsp;</p>
  <p class="style46 style1">You Have an Account Already, Make Use of It.. </p>
  <br/>
  <p> <a href="User_Account.jsp" class="style16">Back</a></p>
  <%
							   }
							   else{
				
						
									String query1="select * from account  where account_no='"+accno+"' "; 
									Statement st1=connection.createStatement();
									ResultSet rs1=st1.executeQuery(query1);
									
										
								if ( rs1.next() )
								   {
										%>
  
  
  <p>&nbsp;</p>
  <p class="style46 style1"> Account Number Already Exist.. </p>
  <p> </p>
  <p> <a href="User_CreateAccount.jsp" class="style16">Back</a>
      <%
							
								   }
								   else
								   {
								   
								
			PreparedStatement ps=connection.prepareStatement("insert into account(account_no,user,address,email,mobile,bank,amount) values(?,?,?,?,?,?,?)");
									ps.setString(1,accno);
									ps.setString(2,uname);
									ps.setString(3,addr);
									ps.setString(4,email);	
									ps.setString(5,mno);
									ps.setString(6,bank);
									ps.setString(7,amount);
								
									
								   
									
														
									
									int x=ps.executeUpdate();
									if(x>0)
									{
									%>
  </p>
  <p class="style46 style1">Account Created Successfully.. </p>
  <p>
    <%	
										
						%>
  </p>
  <p align="left"><a href="User_Account.jsp" class="style16">Back</a></p>
  <%
						
								}}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
		  
		  
		  
		  
		  
		  
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