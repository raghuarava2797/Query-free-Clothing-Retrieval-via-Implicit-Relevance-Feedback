				
<%@ include file="connect.jsp"%>
<%@ page import="org.bouncycastle.util.encoders.Base64" %>


<%

String kword="";
int i=0,count=0,rank=0;
try
{
			


%><html>
<head>
<title>Keyword Rank In Chart..</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	
String query1="select * from keywordscore "; 
Statement st1=connection.createStatement();
ResultSet rs1=st1.executeQuery(query1);
while ( rs1.next() )
{
	
	kword=rs1.getString(2);
	rank=rs1.getInt(3);
	
	%>
	
	myData["<%=i%>"]=["<%= kword%>",<%= rank%>];
        
	<%

	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#006633');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#000000');
	myChart.draw();
	
</script>

</body>
</html>
<%

}
catch(Exception e)
{
e.printStackTrace();
}
%>




