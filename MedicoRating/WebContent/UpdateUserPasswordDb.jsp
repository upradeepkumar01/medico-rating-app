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
	
	String oldp=request.getParameter("oldp");
	String newp=request.getParameter("newp");
	System.out.println("----dd>"+email);
	   System.out.println("----dd>"+oldp);
	   System.out.println("----dd>"+newp);
	ps=cn.prepareStatement("select * from register where email=? and password=?");
	   System.out.println("---->ss");
	ps.setString(1, email);
	ps.setString(2, oldp);
	
	   System.out.println("---->aa");
	rs=ps.executeQuery();

    
	if(rs.next())
	{
		PreparedStatement ps1=cn.prepareStatement("update register set password=? where email=?");
		ps1.setString(1, newp);
		ps1.setString(2, email);
		int k=ps1.executeUpdate();
		if(k>0)
		{%>
			<%@ include file="UpdateUserPassword.jsp"%>
			<p style="font-size:14px; color:#538b01; font-weight:bold; font-style:italic;">
	Password successfully Updated
	  

	</p>
		<%}
	}
	else
		{%>
		 <%@ include file="UpdateUserPassword.jsp"%>
		<p style="font-size:14px; color:#538b01; font-weight:bold; font-style:italic;">
  No matching records exist,
  <span style="color: #ff0000">Please enter your old password correctly.</span>

</p>
		
<%}}
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