
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="getcon.jsp"%> <!-- to connect a database-->

<%@ page import="five.Mailme" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="link" scope="application" class = "five.Mailme" />   
<%
try
{
	String email=request.getParameter("email");
	String mobile=request.getParameter("mobile");
	ps=cn.prepareStatement("select * from register where email=? and mobile=?");
	ps.setString(1, email);
	ps.setString(2, mobile);
	
	rs=ps.executeQuery();
	if(rs.next())
	{	
		String password=rs.getString("password");
	   Mailme t=new Mailme();
	  t.test(email,password);

	  out.println("We have sent your password to "+email+".\nPlease check your mail");
	}
	else
	
		out.println("Incorrect email id and Mobile number,Please try again");
	
		}
catch(Exception el)
{
out.println("Inserting error"+el.getMessage());
}
finally
{
	try
	{
	
}catch(Exception el)
{
out.println("In finally "+el.getMessage());
}
}
%>
 
  <%
  String email=request.getParameter("email");
  String mobile=request.getParameter("mobile");
  
  


%>

</body>
</html>