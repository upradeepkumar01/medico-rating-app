<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <%@ page import="java.util.*, java.io.*" %>
    <%@ include file="getcon.jsp"%> <!-- to connect a database-->


<body>
<%
try
{
	String email=request.getParameter("email");
	session.setAttribute("email",email);
	String password=request.getParameter("password");
	   System.out.println("----dd>");
	ps=cn.prepareStatement("select * from register where email=? and password=?");
	   System.out.println("---->ss");
	ps.setString(1, email);
	ps.setString(2, password);
	   System.out.println("---->aa");
	rs=ps.executeQuery();

    
	if(rs.next())
	{
		String u=rs.getString("user");
		
	    System.out.println("---->"+u);
	if(u.equalsIgnoreCase("docter"))
	response.sendRedirect("DocterHome.jsp");
	if(u.equalsIgnoreCase("patient"))
	response.sendRedirect("UserHome.jsp");	
	if(u.equalsIgnoreCase("admin"))
		response.sendRedirect("AdminHome.jsp");	
	}
	else{
%>
	
	
	
	
	<script>
	 alert("Invalid..!! Please enter valid credentials");
	 window.location.href="Login.jsp";
	 </script>	
	  
	 <%}
}
catch(Exception el)
{
out.println("Inserting error"+el);
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

</body>
</html>