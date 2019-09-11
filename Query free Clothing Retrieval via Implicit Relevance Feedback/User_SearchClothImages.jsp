<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Cloth Images Page</title>
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
.style4 {font-size: 14px}
.style5 {color: #660033}
.style7 {font-weight: bold}
.style10 {font-weight: bold}
.style11 {
	color: #FF0000;
	font-weight: bold;
}
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
          <h2 class="style2" style="color:#CC6600">Enter Secret Key to Search Cloth Images by Keyword</h2>
          <div class="clr"></div>
          <div class="post_content">
		   <p>&nbsp;</p>
           			<form id="form1" method="post" action="User_SearchClothImages.jsp">
              <table width="392" border="0" align="center" cellpadding="2" cellspacing="2">
                <tr>
                  <td width="148" class="style49 style4 style5"><b>Enter Secret Key :</b></td>
                  <td width="230"><input type="text" name="sckey" /></td>
                </tr>
				<tr>
                  <td width="148"><span class="style5 style10 style4 style49"><b>Enter Keyword :</b></span></td>
                  <td width="230"><input type="text" name="keyword" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><input type="submit" value="Search" style="width:80px; height:30px; background-color:#660000; color:#FFFFFF;"/></td>
                </tr>
              </table>
              <p align="center">&nbsp;</p>
              <p align="center"><a href="UserMain.jsp" class="style75">Back</a></p>
            </form>
            </div>
          <div class="clr"></div>
        </div>
        <div class="post_content">
          <h2><span class="style35 style11">Search  Results Found from Data Sets!! </span></h2>
          <div>
            <p>
              <%
  		String s0="",s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",mfg="",s00="";
			int i=0,j=0,rank=0,tscore=0,tscore1=0,found=0;

try
{	
			
		String keyword=request.getParameter("keyword");
		String sckey=request.getParameter("sckey");
		String keyword1=keyword.toLowerCase();
		String user=(String )application.getAttribute("uname");
		
		String query12="select * from sckey_req where sckey='"+sckey+"' and uname='"+user+"'"; 
		Statement st12=connection.createStatement();
		ResultSet rs12=st12.executeQuery(query12);
		if ( rs12.next()==true )
		{
		
			s1=rs12.getString(3);
		}
		if(sckey.equals(""))
		{
		
			out.print("Please Enter Your Secret Key");
		}
		else if(keyword1.equals(""))
		{
			out.print("Please Enter Keyword");
		}
		else if(s1.equals(sckey))
		{
		
		
			SimpleDateFormat sdfDate = new SimpleDateFormat(
					"dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
			tscore+=1;
					
						PreparedStatement psmnt2 = connection.prepareStatement("insert into search(user,keyword,date) values(?,?,?)");
						psmnt2.setString(1, user);
						psmnt2.setString(2, keyword1);
						psmnt2.setString(3, dt);
													
						psmnt2.executeUpdate();
									
						String query21="select * from ukeywordscore where keyword='"+keyword1+"' and user='"+user+"'"; 
						Statement st21=connection.createStatement();
						ResultSet rs21=st21.executeQuery(query21);
									
						if( rs21.next()==true )
						{
						int keyrank=rs21.getInt(3);
						int newkeyrank=keyrank+1;
						String qq="Update ukeywordscore set score='"+newkeyrank+"' where keyword='"+keyword1+"' and user='"+user+"'"; 
						Statement sts=connection.createStatement();
						sts.executeUpdate(qq);
						}	
						else
						{
						PreparedStatement psmnt22 = connection.prepareStatement("insert into ukeywordscore(keyword,score,date,user) values(?,?,?,?)");				
					
						psmnt22.setString(1, keyword1);
						psmnt22.setInt(2, tscore);
						psmnt22.setString(3, dt);
						psmnt22.setString(4, user);
						psmnt22.executeUpdate();
												
										
						}
						
				tscore1+=1;
																		
						String query24="select * from keywordscore where keyword='"+keyword1+"' "; 
						Statement st24=connection.createStatement();
						ResultSet rs24=st24.executeQuery(query24);
									
						if( rs24.next()==true )
						{
						int score=rs24.getInt(3);
						int newscore=score+1;
						String qs="Update keywordscore set score='"+newscore+"' where keyword='"+keyword1+"' "; 
						Statement qsts=connection.createStatement();
						qsts.executeUpdate(qs);
						}	
						else
						{
						PreparedStatement psmnt25 = connection.prepareStatement("insert into keywordscore(keyword,score,date) values(?,?,?)");				
					
						psmnt25.setString(1, keyword1);
						psmnt25.setInt(2, tscore1);
						psmnt25.setString(3, dt);
						
						psmnt25.executeUpdate();
												
										
						}

						String sql8="select *, (select distinct iname) from images GROUP BY iname  " ;
								Statement st8=connection.createStatement();
								ResultSet rs8=st8.executeQuery(sql8);
								while(rs8.next())
										{
									
									i=rs8.getInt(1);
									s0 =rs8.getString(2);
									s1 =rs8.getString(3);
								    s2 = rs8.getString(6);
									s3 = rs8.getString(7);
									s4 = rs8.getString(8);
									s5 = rs8.getString(9);
									s6 = rs8.getString(10);
									s7 = rs8.getString(11);		
									mfg = rs8.getString(5);
								    
									
									
					
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					
					String cat = new String(Base64.decode(s0.getBytes())).toLowerCase();
					String cdesc = new String(Base64.decode(s2.getBytes())).toLowerCase();
					String color = new String(Base64.decode(s3.getBytes())).toLowerCase();
					String btnshape = new String(Base64.decode(s4.getBytes())).toLowerCase();
					String wseason = new String(Base64.decode(s5.getBytes())).toLowerCase();
					String stl = new String(Base64.decode(s6.getBytes())).toLowerCase();
					String gender = new String(Base64.decode(s7.getBytes())).toLowerCase();
					String cmfg = new String(Base64.decode(mfg.getBytes())).toLowerCase();
									
									rank=rs8.getInt(13);
									
									int newrank=rank+1;
									
								
					
					if ( (cat.contains(keyword1)) || (cmfg.contains(keyword1)) || (color.contains(keyword1)) || (cdesc.contains(keyword1)) || (btnshape.contains(keyword1)) || (wseason.contains(keyword1)) || (stl.contains(keyword1)) || (gender.contains(keyword1)) || (s00.contains(keyword1)) )
									{
									
										
										found++ ;
				
					String sql1="update images set rank='"+newrank+"' where id='"+i+"' ";
					Statement stmt1 = connection.createStatement();
					stmt1.executeUpdate(sql1);
				
					
						
						
				
									%>
          </P>

              <td width="86">
			<div align="center" class="style7" style="margin:10px 13px 10px 13px;" ><a href="User_SearchClothImages1.jsp?icat=<%=s0%>&iname=<%=s1%>">
			 <input  name="image" type="image" src="images.jsp?id=<%=i%>" style="width:50px; height:50px;"  />
			 </a></div>	</td>
              <p class="style4" align="center"><b><span class="style8" style="color:#006633"><%=s1%></span> </b>            </p>
                
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
								
						  	
							}
						 }
					if(found==0){out.print("No Cloth Images Found For Keyword "+keyword);}
           			%>
		   
		   
            <p class="style48">
            <%  

		}	
	
		else
		{
			%>
            </p>
            <h3 align="center" class="style66 style72 style48">Please Enter Correct Key !!</h3>
            <%
		}
		
		
		%>
            </p>
            <h2 align="center" class="style66 style72 style48 style11">Data Retrieved From FeedBack !!</h2>
            <%
		
						String sql81="select *, (select distinct iname) from  feedbacks " ;
								Statement st81=connection.createStatement();
								ResultSet rs81=st81.executeQuery(sql81);
								
									while(rs81.next())
										{
									
										s00 =rs81.getString(5).toLowerCase();
										
										if ( (s00.contains(keyword1))  )
									{
									
										
										found++ ;
				
						
				
									%>
          </P>

              <td width="86">
			<div align="center" class="style7" style="margin:10px 13px 10px 13px;" ><a href="User_SearchClothImages1.jsp?icat=<%=s0%>&iname=<%=s1%>">
			 <input  name="image" type="image" src="images.jsp?id=<%=i%>" style="width:50px; height:50px;"  />
			 </a></div>	</td>
              <p class="style4" align="center"><b><span class="style8" style="color:#006633"><%=s1%></span> </b>            </p>
                
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
								
								}			
						}
	
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
            </p>
		  
		  
		  
		  
		  
		  
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