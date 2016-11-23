<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <%@ page import="java.util.*, java.io.*" %>
    <%@ include file="getcon.jsp"%> <!-- to connect a database-->


<body>
<%
try
{
	String email=request.getParameter("p");
	
	
	   System.out.println("----in admin delete");
	ps=cn.prepareStatement("delete from  register where email=?");
	ps.setString(1, email);
	   System.out.println("---->ss");
	int  k=ps.executeUpdate();
if(k>0)
{
	%>

<script>
 alert("The account successfully deleted ");
 window.location.href="AdminHome.jsp";
 </script>	
  
 <%
}
 else
 {%>

<script>
 alert("deletion error");
 window.location.href="AdminHome.jsp";
 </script>	
  
 <%
	 
 }
    
	
}
catch(Exception el)
{
out.println("Inserting error"+el);
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
%>

</body>
</html>