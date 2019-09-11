<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>



<h2><span style="color:#CC6600"> <%=request.getParameter("uname")%>'s Profile..</span></h2>


<table width="500" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            
            
            <%			
						String type=request.getParameter("type");
						String user=request.getParameter("uname");
						String iname=request.getParameter("iname");
		    			String one=request.getParameter("id");						
						
						
						String s1,s2,s3,s4,s5,s6,s7,s8;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(9);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								
								
					%>
            <tr>
              <td width="195" rowspan="8" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:150px; height:150px;" />
              </a></strong></div></td>
            </tr>
            <tr>
              <td  width="105" height="37" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>E-Mail</b></div></td>
              <td  width="192" valign="middle" height="40" style="color:#006666;"><div align="left" class="style66" style="margin-left:20px;">
                          <b><%out.println(s2);%></b>
                </div></td>
            </tr>
            <tr>
              <td  width="105" height="40" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Mobile</b></div></td>
              <td  width="192" valign="middle" height="40" style="color: #000000;"><div align="left" class="style6" style="margin-left:20px;">
                          <%out.println(s3);%>
                </div></td>
            </tr>
            <tr>
              <td height="43" align="left" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Address</b></div></td>
              <td  width="192" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style6" style="margin-left:20px;">
                          <%out.println(s4);%>
                </div></td>
            </tr>
            <tr>
              <td  width="105" height="43" align="left" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Date of Birth</b></div></td>
              <td  width="192" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style6" style="margin-left:20px;">
                          <%out.println(s5);%>
                </div></td>
            </tr>
            <tr>
              <td  width="105" height="40" align="left" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Gender</b></div></td>
              <td  width="192" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style6" style="margin-left:20px;">
                          <%out.println(s6);%>
                </div></td>
            </tr>
			
			
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
</table>
	
				  
				  <h2 align="right">&nbsp;</h2>
			<% 
			if(type.equalsIgnoreCase("Seller_ViewFeedbacks")){%>
            <h3 align="center"><a href="Seller_ViewFeedbacks.jsp?iname=<%=iname%>&id=<%=one%>" class="style4">Back</a></h3>
			<%}
			else if(type.equalsIgnoreCase("Seller_View")){%>
            <h3 align="center"><a href="Seller_View.jsp" class="style4">Back</a></h3>
			<%}	
						

			%>
			
			
			
			
			
			
			
			
</html>