<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>

<style type="text/css">
<!--
.style2 {color: #CC6600}
.style4 {color: #000000}
-->
</style>

            		<%
				String iname =  request.getParameter("iname");
				String icat=  request.getParameter("icat");
				String one= request.getParameter("id");
	
  	try
	{            
			
					int id= Integer.parseInt(one);
    	
					Statement st12=connection.createStatement();
					String strQuery12 = "delete from images where (iname='"+iname+"' and icat='"+icat+"') and id="+id+" ";
					st12.executeUpdate(strQuery12);
     	 
					
					
							
				
				  				  %><br/><p class="style46 style5 style4">Image Deleted Successfully..</p>
								  <p class="style17"><br/>
							      <a href="Seller_ViewAllImages.jsp">Back</a></p>
									<%
								
				
  	}
	
  	catch (Exception e)
	{
    	e.printStackTrace();
  	}
%>
		  
		  
		  
		  
		  
		  
		  
</html>