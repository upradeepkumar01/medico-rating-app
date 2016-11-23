<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <%@ page import="java.util.*, java.io.*" %>
    <%@ include file="getcon.jsp"%> <!-- to connect a database-->
<head>
<link href="stylesheet/stylesheet.css" rel="stylesheet"></head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<title>Comment Box</title>
<style type="text/css">
body {
	background-color: #CCF;
}
body,td,th {
	color: #600;
}
</style>
</head>


<body bgcolor="#FF9900"><center>

<h1></h1>
<%
try
{
	String from=request.getParameter("a");
String user=(String)session.getAttribute("email");
	
	   System.out.println("----dd>");
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/medico","root","root");
	ps=c1.prepareStatement("select * from subscribe where user=? and docter=?");
	   System.out.println("---->ss  "+user);
	ps.setString(1, user);
	ps.setString(2, from);
	   System.out.println("---->aasasasasa");
	rs=ps.executeQuery();

    
	if(rs.next())
	{
		String sub=rs.getString("status");
		String doc=request.getParameter("a");
		if(sub.equals("yes") && doc.equals(from))
		{
			System.out.println("in comment box");
%>
<jsp:forward page="Comment.jsp"> 
<jsp:param name="user" value="<%=user %>" />  
<jsp:param name="docter" value="<%=from %>" /> 
</jsp:forward> 
<%}
		else
		{
			%>
			<h1>User cannot comment on this Doctor.Please comment on subscribed doctor</h1>
			<%
		}
}
	else{
	%>
	<h1>User cannot comment on this Doctor.Please comment on subscribed doctor</h1>
	<%}
}
catch(Exception el)
{
out.println("last error"+el);
}
finally
{
	try
	{
	cn.close();
}catch(Exception el)
{
out.println("In finally "+el.getMessage());
}
}
%></center>
</body>
</html>
