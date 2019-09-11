<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*" %>

<style type="text/css">
<!--
.style2 {color: #CC6600}
.style4 { color:#FFFFFF;
		font-size: 14px;
		font-weight:bold}
-->
</style>

		   <p>&nbsp;</p>
            		<%
    
    
    String icat=request.getParameter("icat");
	String id=request.getParameter("id");
    String iname=request.getParameter("iname");	
	String cprice=request.getParameter("cprice");
	String cmfg=request.getParameter("cmfg");
	String cdesc=request.getParameter("cdesc");
	String color=request.getParameter("color");
	String btnshape=request.getParameter("btnshape");
	String wseason=request.getParameter("wseason");
	String stl=request.getParameter("stl");
	String gender=request.getParameter("gender");
	
	
   
    
    %>
    
<p align="center" > <input  name="image" type="image" src="images.jsp?id=<%=id%>" style="width:170px; height:170px;" /> </p>

<form name="s" action="Seller_EditUpdate.jsp?id=<%=id%>" method="post" >
<p>
<%
	
      	
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		
      		 
           
           String query="select imgcategory from img_category where imgcategory!='"+icat+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString(1));
		
	   }
	   
		
		
%>
</p>
<table width="489" height="259" bgcolor="#CC6600" border="1" align="center">

	
	<tr>
		<td><span class="style4">Image Category : </span></td>
		<td><select id="s1" name="icat" style="width:330px">
                            <option><%=icat%></option>
							
                            <% 
							for(int i=0;i<a1.size();i++)
							{
							 
								 %>
								<option><%= a1.get(i)%></option>
								<%
							}
							%>
                          </select></td>
	</tr>
	
	<tr>
		<td width="195"><span class="style4">Cloth Image Name  : </span></td>
		<td width="264"><input name="iname" type="text" id="iname" size="50" value="<%=iname%> " width="150" /></td>
	</tr>
	
	<tr>
		<td width="195"><span class="style4">Cloth Price  : </span></td>
		<td width="264"><input name="cprice" type="text" id="cprice" size="50" value="<%=cprice%> " width="150" /></td>
	</tr>
	
	<tr>
		<td width="195"><span class="style4">Cloth Manufacturer  : </span></td>
		<td width="264"><input name="cmfg" type="text" id="cmfg" size="50" value="<%=cmfg%> " width="150" /></td>
	</tr>
	
	<tr>
		<td width="195"><span class="style4">Cloth Description  : </span></td>
		<td width="264"><textarea name="cdesc" cols="38" rows="2" id="cdesc"><%=cdesc%></textarea></td>
	</tr>
	
	<tr>
		<td width="195"><span class="style4">Color  : </span></td>
		<td width="264"><input name="color" type="text" id="color" size="50" value="<%=color%> " width="150" /></td>
	</tr>
	
	<tr>
		<td width="195"><span class="style4">Button Shape  : </span></td>
		<td width="264"><input name="btnshape" type="text" id="btnshape" size="50" value="<%=btnshape%> " width="150" /></td>
	</tr>

	<tr>
		<td width="195"><span class="style4">Wearing Season  : </span></td>
		<td width="264"><input name="wseason" type="text" id="wseason" size="50" value="<%=wseason%> " width="150" /></td>
	</tr>
	
	<tr>
		<td width="195"><span class="style4">Style  : </span></td>
		<td width="264"><input name="stl" type="text" id="stl" size="50" value="<%=stl%> " width="150" /></td>
	</tr>
	
	<tr>
		<td width="195"><span class="style4">Gender For  : </span></td>
		<td width="264"><input name="gender" type="text" id="gender" size="50" value="<%=gender%> " width="150" /></td>
	</tr>
	
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	
	<tr>
		<td>
		<div align="right"></div>
		</td>
		<td><input type="submit" name="Submit2" value="Update Content" /></td>
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
  
  
  <p>&nbsp;</p>
  <div align="center">
		          <p><a href="Seller_ViewAllImages.jsp" class="style14">Back</a></p>
  </div>
		  
		  
		  
		  
		  
		  
		  
</html>