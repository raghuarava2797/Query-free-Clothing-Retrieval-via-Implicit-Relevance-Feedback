				
<%@ include file="connect.jsp"%>
<%@ page import="org.bouncycastle.util.encoders.Base64" %>


<%

String iname="";
int i=0,count=0,rank=0;
try
{
			


%><html>
<head>
<title>Cloth Feedback Scores In Chart..</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	
String query1="select iname,count(iname), (select distinct imgid) from feedbacks GROUP BY imgid "; 
Statement st1=connection.createStatement();
ResultSet rs1=st1.executeQuery(query1);
while ( rs1.next() )
{
	
	iname=rs1.getString(1);
	rank=rs1.getInt(2);
	
	%>
	
	myData["<%=i%>"]=["<%= iname%>",<%= rank%>];
        
	<%

	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#FF9900');
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




