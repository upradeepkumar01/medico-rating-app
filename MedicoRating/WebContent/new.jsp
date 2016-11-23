<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <%@ page import="java.util.*, java.io.*" %>
    <%@ include file="getcon.jsp"%> <!-- to connect a database-->
<%
try
{
	String m=request.getParameter("m");
	ps=cn.prepareStatement("select * from register where mobile=?");
	ps.setString(1, m);
	rs=ps.executeQuery();
	while(rs.next())
	{
		
%>
	
<table width="475" border="2" align="center" >
  <tr>
    <td width="157" >Name</td>
    <td width="124"><%=rs.getString("fname") %></td>
    <td width="172" rowspan="6"> <div align="center"><img src="Example/image-folder/<%=rs.getString("photo") %>"  width="115" height="128"></img></div></td>
  
  </tr>
  <tr>
    <td bgcolor="#CCCCCC">Mobile</td>
    <td><%=rs.getString("mobile")%></td>
    </tr>
  <tr>
    <td bgcolor="">Address</td>
    <td><%=rs.getString("address1")%></td>
    </tr>
  <tr>
    <td bgcolor="#CCCCCC">Address2</td>
    <td><%=rs.getString("address2")%></td>
    </tr>
  <tr>
    <td bgcolor="">City</td>
    <td><%=rs.getString("city")%></td>
    </tr>
  <tr>
    <td bgcolor="#CCCCCC">State</td>
    <td><%=rs.getString("state")%></td>
    </tr>
</table>
<table width="475" border="1" align="center" ><tr><td width="157"><a href="delete.jsp?p=<%=rs.getString("email")%>">Click to delete </a> </td>



 
</table>
<%}}
catch(Exception el)
{
out.println("Inserting error"+el.getMessage());
}
finally
{
	try
	{
		rs.close();
	ps.close();
	cn.close();
	
}catch(Exception el)
{
out.println("In finally "+el.getMessage());
}
}
%>