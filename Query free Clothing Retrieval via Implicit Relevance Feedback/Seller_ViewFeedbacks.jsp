<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>

            
		  		<%
					String iname=request.getParameter("iname");
					String one= request.getParameter("id");
			
			%>
			
			<p align="center" > <input  name="image" type="image" src="images.jsp?id=<%=one%>" style="width:150px; height:150px;" /> </p>
			
			<p><table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr bgcolor="#FFFFFF"><td width="80" height="44" valign="middle" style="color: #660033;">
			<div align="left" class="style7" style="margin-left:20px;"><b> Feedback By</b></div></td>
			<td width="80" height="44" valign="middle" style="color: #660033;">
			<div align="left" class="style7" style="margin-left:20px;"><b> Feedbacks </b></div></td>
			<td width="80" height="44" valign="middle" style="color: #660033;">
			<div align="left" class="style7" style="margin-left:20px;"><b> Feedback Date </b></div></td>
			</tr>
			

					<%
					
													
						int count=0;
						try 
						{   
						
							int id = Integer.parseInt(one);
							   
						   	String query="select * from feedbacks where iname='"+iname+"' and imgid="+id+" "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query);
					   		while ( rs1.next() )
					   		{
								int j=rs1.getInt(1);
								
								String r_user=rs1.getString(4);
								String dt=rs1.getString(6);
							    String feedback=rs1.getString("feedbacks");
								
								count++;
						
					%>
		<tr>
			<td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em><a href="Seller_UserProfile.jsp?type=<%="Seller_ViewFeedbacks"%>&uname=<%=r_user%>&iname=<%=iname%>&id=<%=one%>" style="color:#FF0033"> <%out.println(r_user);%> 
		    </a></em></strong></div></td>
						
			
			    <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
				<div align="left" class="style8" style="margin-left:20px;"><b><em>
		        <%out.println(feedback);%>
			</em></b></div></td>
				 <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
				<div align="left" class="style8" style="margin-left:20px;"><b><em>
		        <%out.println(dt);%>
			</em></b></div></td>
</tr>
<%					
					}
					
						if(count==0){
										out.print("No User Has Given Feedback");
								}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>


			</table>
			
					<p>&nbsp;</p>
	         <div align="right" class="style22"><a href="Seller_ViewAllImages.jsp" class="style4">Back</a></div>
		  
		  
		  
		  
		  
		  
</html>