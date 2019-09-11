
<%@ include file="connect.jsp" %>

<%
   
    try
	{
	
				String serverid=request.getParameter("serverid");      
         		String Password=request.getParameter("pass");
			
			application.setAttribute("server",serverid);
			
			String sql="SELECT * FROM server where name='"+serverid+"' and pass='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				response.sendRedirect("ServerMain.jsp");
			}
			else
			{
					response.sendRedirect("ServerRe-Login.jsp");
				
			}
	
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>