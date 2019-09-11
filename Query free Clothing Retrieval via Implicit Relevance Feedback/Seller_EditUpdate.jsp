
<%@ include file="connect.jsp"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="org.bouncycastle.util.encoders.Base64" %>

<style type="text/css">
<!--
.style2 {color: #CC6600}
.style5 {
	color: #000000;
	font-size: 14px;
}
-->
</style>

		   <p>&nbsp;</p>
            	<%
					String sname=(String)application.getAttribute("sname");
					
					String icat=request.getParameter("icat");
					String one=request.getParameter("id");
   					String iname=request.getParameter("iname");	
					String cprice=request.getParameter("cprice");
					String cmfg=request.getParameter("cmfg");
					String cdesc=request.getParameter("cdesc");
					String color=request.getParameter("color");
					String btnshape=request.getParameter("btnshape");
					String wseason=request.getParameter("wseason");
					String stl=request.getParameter("stl");
					String gender=request.getParameter("gender");
	
				try
				{
					
					int id= Integer.parseInt(one);
					
					String icat1=new String(Base64.encode(icat.getBytes()));
					String cprice1=new String(Base64.encode(cprice.getBytes()));
					String cmfg1=new String(Base64.encode(cmfg.getBytes()));
					String cdesc1=new String(Base64.encode(cdesc.getBytes()));
					String color1=new String(Base64.encode(color.getBytes()));
					String btnshape1=new String(Base64.encode(btnshape.getBytes()));
					String wseason1=new String(Base64.encode(wseason.getBytes()));
					String stl1=new String(Base64.encode(stl.getBytes()));
					String gender1=new String(Base64.encode(gender.getBytes()));
					
										
					String query="Update images set icat='"+icat1+"',iname='"+iname+"',cprice='"+cprice1+"',cmfg='"+cmfg1+"',cdesc='"+cdesc1+"',color='"+color1+"',btnshape='"+btnshape1+"',wseason='"+wseason1+"',style='"+stl1+"',gender='"+gender1+"' where id="+id+" and sname='"+sname+"' ";
					Statement st= connection.createStatement();
					st.executeUpdate (query);
					
					%>
					<br/><span class="style5">Update Successfully Done..</span><br/>
					<p align="left"><br/><a href="Seller_ViewAllImages.jsp">Back</a></p>
					<%
					
					}
					catch(Exception e)
					{
					out.println(e);
					}
					
					
				%>
		  
		  
		  
		  
		  
		  
		 
