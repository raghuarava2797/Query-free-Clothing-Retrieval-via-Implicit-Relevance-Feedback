<%@ page import="java.sql.*,java.util.Random,java.security.KeyPairGenerator,javax.crypto.Cipher,java.security.Key,java.security.KeyPair,java.util.*,java.util.Date,java.text.SimpleDateFormat     "%>
<%@ include file="connect.jsp" %>
<html><style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
-->
</style>
<body>
<center>&nbsp;</center>
<br><br><br>
  <%
  		   int id = Integer.parseInt(request.getParameter("id"));
		   
		  											
		  
   try {
	   
	   
	   
	   Key prKey;
		Key pubKey;
	   
	   Cipher encoder = null;
	   
	   KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
		encoder = Cipher.getInstance("RSA");
		KeyPair kp = kg.generateKeyPair();
		prKey = kp.getPrivate();

		pubKey = kp.getPublic();
		byte[] pub = pubKey.getEncoded();
		byte[] priv = prKey.getEncoded();
	   
	   
	   
     
       Statement st1 = connection.createStatement();
       String query1 ="update sckey_req set sckey='"+String.valueOf(priv)+"' where id="+id+" ";
	   st1.executeUpdate (query1);
	  
           
	   connection.close();


          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());

          }
   
   
   response.sendRedirect("Server_ViewScKeyReq.jsp");
		 
		  
		  
%>



</body></html>