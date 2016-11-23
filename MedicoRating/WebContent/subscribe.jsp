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
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/medico", "root","root");
	ps=c1.prepareStatement("select * from subscribe where user=?");
	   System.out.println("---->ss");
	ps.setString(1, user);

	   System.out.println("---->aa");
	rs=ps.executeQuery();

    
	if(rs.next())
	{
		String sub=rs.getString("status");
		if(sub.equals("yes"))
		{
	    System.out.println("----> if if ");
	    %>
		<script>
		 alert("You have already subscribed to <%=rs.getString("docter")%>");
		window.location="UserSearchDocters.jsp";
		 </script>	
		  
		 <%}
		 String status=rs.getString("status");
		 if(status.equals("no"))
		 {
			 
		 PreparedStatement pss=c1.prepareStatement("update subscribe set docter=?,status=? where user=?");
		 pss.setString(1, doctor);
		 pss.setString(3, user);
		 pss.setString(2, "yes");
		 int j=pss.executeUpdate();
		 if(j>0)
		 { %>
			<script>
			 alert("Subscription updated..");
			window.location="UserSearchDocters.jsp";
			 </script>	
			  
			 <%
	
	}
	}}
	else{ System.out.println("----> if if ");
   
	 
	PreparedStatement pss=c1.prepareStatement("insert into subscribe(docter,user,status) values(?,?,?)");
pss.setString(1, doctor);
pss.setString(2, user);
pss.setString(3, "yes");
int j=pss.executeUpdate();
if(j>0)
{
	 %>
		<script>
		 alert("Subscription updated..");
		window.location="UserSearchDocters.jsp";
		 </script>	
		  
		 <%
}

	
	
	
	
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