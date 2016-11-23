<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <%@ page import="java.util.*, java.io.*" %>
    <%@ include file="getcon.jsp"%> <!-- to connect a database-->


<body>
<%
try
{
	String doctor=request.getParameter("doctor");
String user=(String)session.getAttribute("email");
	
	   System.out.println("----dd>");

	 
	PreparedStatement pss=cn.prepareStatement("update subscribe set docter=?,status=? where user=?");
pss.setString(1, doctor);
pss.setString(3, user);
pss.setString(2, "no");
int j=pss.executeUpdate();
if(j>0)
{
	 %>
		<script>
		 alert("You have successfully unsubscribed,Please select another docter");
		window.location="UserSearchDocters.jsp";
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
	
}catch(Exception el)
{
out.println("In finally "+el.getMessage());
}
}
%>

</body>
</html>