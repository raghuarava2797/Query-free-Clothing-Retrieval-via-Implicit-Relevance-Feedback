<title></title>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%

		Connection connection = null;
		try{
		
		
				Class.forName("com.mysql.jdbc.Driver");
				connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/clothing_retrieval","root","root");
		
		
			}
			catch(Exception e)
			{
			System.out.println(e);
			}
%>
