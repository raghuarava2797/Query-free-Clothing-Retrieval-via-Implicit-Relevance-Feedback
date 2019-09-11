<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>

<h2><span style="color:#CC6600">Similar Images..</span></h2>



            <p><%
				 
				 				String user=(String)application.getAttribute("uname");
							
								String	one= request.getParameter("id");
								String	icat= request.getParameter("icat");
								String	iname= request.getParameter("iname");		
								String icat1 = icat.toLowerCase();
								String iname1 = iname.toLowerCase();
	  					
	 				 try
						{
								
								int id= Integer.parseInt(one);
								String inm="",ict="";
								int i=0,found=0;
								
								
																 
								
								String sql8="select * from images where icat='"+icat1+"' and iname='"+iname1+"' and id!="+id+" ";
								Statement st8=connection.createStatement();
								ResultSet rs8=st8.executeQuery(sql8);
								while(rs8.next())
										{
									i=rs8.getInt(1);
									ict =rs8.getString(2);
								    inm = rs8.getString(3); // image Name
									
									
									found++;
									
					
													
									
									
									%>
          </P>
 
              <td width="86">
			<div align="center" class="style7" style="margin:10px 13px 10px 13px;" >
			 <input  name="image" type="image" src="images.jsp?id=<%=i%>" style="width:120px; height:100px;"  />
			 </div>	</td>
               

                <p></p>
				<div>
				  <div align="center">_______________</div>
				</div>
				 <p></p>
				<%
				
				
				
						  	}
						 
					if(found==0){out.print("Similar Image not Found");}
					%>
			
			<p>&nbsp;</p>
						
				<div align="center">
				  <%	}
					
					catch(Exception e)
					{						  
						e.printStackTrace();
					}
					%>	  
				  
	                     
				  
				          <a href="Seller_ViewAllImages.jsp">Back</a> </div>
		  
		  
		  
		  
		  
		  
		  
</html>