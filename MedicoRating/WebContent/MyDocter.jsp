<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <%@ page import="java.util.*, java.io.*" %>
    <%@ include file="getcon.jsp"%> <!-- to connect a database-->


<body>
<%
try
{
	String email=(String)session.getAttribute("email");
	   System.out.println("----dd>"+email);
	ps=cn.prepareStatement("select * from subscribe where user=? and status=?");
	   System.out.println("---->ss");
	ps.setString(1, email);
	ps.setString(2, "yes");
	System.out.println("---->aa");
	rs=ps.executeQuery();
  if(rs.next())
	{String docter=rs.getString("docter");
		%>
		<jsp:forward page="DisplayMyDocter.jsp"> 
<jsp:param name="user" value="<%=email %>" />  
<jsp:param name="docter" value="<%=docter %>" /> 
</jsp:forward> 
		<%
	
	}
	else{
%>
	<script>
	 alert("No doctors subscribed,please subscribe a doctor");
	window.location="UserSearchDocters.jsp";
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