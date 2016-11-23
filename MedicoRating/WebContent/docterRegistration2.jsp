<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*, java.io.*" %>
    <%@ include file="getcon.jsp"%> <!-- to connect a database-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
String email="";
email=(String)session.getAttribute("email");
String spl=request.getParameter("spl"); 
String des=request.getParameter("des");
String com=request.getParameter("com");
String aff=request.getParameter("aff");
ps=cn.prepareStatement("insert into docter(email,specialities,designation,comments,affiliations) values(?,?,?,?,?)");
ps.setString(1, email);
ps.setString(2, spl);
ps.setString(3, des);
ps.setString(4, com);
ps.setString(5, aff);
int h=ps.executeUpdate();
if(h>0)
	response.sendRedirect("DocterHome.jsp");
	 else

	out.println("Problem");
}
catch(Exception el)
{
out.println("Inserting error"+el.getMessage());
}
finally
{
	try
	{
	ps.close();
	cn.close();
}catch(Exception el)
{
out.println("In finally "+el.getMessage());
}
}
%>
</body>
</html>