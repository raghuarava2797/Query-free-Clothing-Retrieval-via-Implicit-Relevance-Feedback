<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64" %>

<style type="text/css">
<!--
.style2 {color: #CC6600}
.style4 {color: #660033}
.style5 {color:#000000}
.style7 {color:#006633}
.style8 {
	font-size: 14px;
	font-weight: bold;
	color: #003366;
}
.style9 {color:#990000}
.style10 {color:#FF6600}
.style11 {font-size: 12px}
-->
</style>

            
		  		<table width="810" border="1" align="center"  cellpadding="0" cellspacing="0"  >
               <tr bgcolor="#FFFFFF">
                 <td  width="25" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b>SI NO</b></div></td>
				  <td  width="176" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b> Image Category </b></div></td>
				  <td  width="176" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b> Cloth Image Name </b></div></td>
                 <td  width="176" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b>  Image </b></div></td>
                 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b>Cloth Price</b></div></td>
				 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b>Cloth Manufacturer</b></div></td>
				 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b>Cloth Description</b></div></td>
				 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b>Color</b></div></td>
				 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b>Button Shape</b></div></td>
				 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b>Wearing Season</b></div></td>
				 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b>Style</b></div></td>
				 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b>Gender For</b></div></td>
                 <td  width="68" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b>Upload Date & Time </b></div></td>
				 <td  width="105" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b>Image Score</b></div></td>
				 <td  width="105" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b>Reviews</b></div></td>
				 <td  width="105" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b></b></div></td>
				 <td  width="105" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b></b></div></td>
               </tr>
         
		 
		   
            <%
					  
					  String sname= (String)application.getAttribute("sname");	
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="";
					  int i=1,j=0,count=0,r=0;
					
						try 
						{
							
						   	String query="select * from images where sname='"+sname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s0=rs.getString(2);
								s1=rs.getString(3);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								s7=rs.getString(9);
								s8=rs.getString(10);
								s9=rs.getString(11);
								s10=rs.getString(14);
								r=rs.getInt(13);
								
								String icat=new String(Base64.decode(s0.getBytes()));
								String cprice=new String(Base64.decode(s2.getBytes()));
								String cmfg=new String(Base64.decode(s3.getBytes()));
								String cdesc=new String(Base64.decode(s4.getBytes()));
								String color=new String(Base64.decode(s5.getBytes()));
								String btnshape=new String(Base64.decode(s6.getBytes()));
								String wseason=new String(Base64.decode(s7.getBytes()));
								String stl=new String(Base64.decode(s8.getBytes()));
								String gender=new String(Base64.decode(s9.getBytes()));
								
								
								count++;
					%>
            <tr>
              <td height="23"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                    <div align="center">
                    <%out.println(i);%>
                </div>
              </div></td>
			  <td height="23"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style9" >
                    <div align="center">
                    <b><%out.println(icat);%></b>                </div>
              </div></td>
			  <td height="23"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style7" >
                    <div align="center">
                    <b><%out.println(s1);%></b>                </div>
              </div></td>
			   
			    <td width="176" valign="middle" bgcolor="#FFFFFF"><div class="style9" title="Click to View Related Image" style="margin:10px 13px 10px 13px;" >
                  <a href="Seller_RelatedImage.jsp?id=<%=j%>&icat=<%=s0%>&iname=<%=s1%>"><input  name="image" type="image" src="images.jsp?id=<%=j%>" style="width:100px; height:100px;" /></a>
              </div></td>
			   
			   <td height="23"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5"  >
                    
   			    <b><%out.println(cprice);%> Rs</b>              </div></td>
			  <td height="23"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style10"  >
                    
       			   <b> <%out.println(cmfg);%>  </b>
              </div></td>
			  <td height="23"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5"  >
                    
       			    <%out.println(cdesc);%> 
              </div></td>
			  <td height="23"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5"  >
                    
   			    <%out.println(color);%> </div></td>
				<td height="23"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5"  >
                    
   			    <%out.println(btnshape);%>              </div></td>
				<td height="23"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5"  >
                    
   			    <%out.println(wseason);%>              </div></td>
				<td height="23"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5"  >
                    
   			    <b><%out.println(stl);%></b>              </div></td>
				<td height="23"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5"  >
                    
   			    <%out.println(gender);%>              </div></td>
			  
              <td height="23"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                 	 <%out.println(s10);%> 
              </div></td>
			  <td height="23"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
           	    <b><%out.println(r);%></b>              </div></td>
			 <td  width="105" align="left" valign="middle" height="23"><a href="Seller_ViewFeedbacks.jsp?iname=<%=s1%>&id=<%=j%>" class="style8 style11">View Feedbacks</a> </td>
			 <td  width="105" align="left" valign="middle" height="23"><a href="Seller_EditImageContent.jsp?icat=<%=icat%>&id=<%=j%>&iname=<%=s1%>&cprice=<%=cprice%>&cmfg=<%=cmfg%>&cdesc=<%=cdesc%>&color=<%=color%>&btnshape=<%=btnshape%>&wseason=<%=wseason%>&stl=<%=stl%>&gender=<%=gender%>"><input name="edit" type="button" value="Edit" style="background-color:#CC0033; color:#FFFFFF " /></a> </td>
			 <td  width="105" align="left" valign="middle" height="23"><a href="Seller_DeleteImage.jsp?icat=<%=s0%>&id=<%=j%>&iname=<%=s1%>"><input name="delete" type="button" value="Delete" style="background-color:#000000; color:#FFFFFF" /> </a></td>
            </tr>
            <%
					i=i+1;	
						
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0){out.print("");}
					
					%>
        </table>
		
			
		  
		  
		  
		  
		  
		  
</html>