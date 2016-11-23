<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="getcon.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1=request.getParameter("email");
String s2=request.getParameter("name");
String s3=request.getParameter("comments");
String s4=request.getParameter("rating");
System.out.println(s1);

System.out.println(s2);
System.out.println(s3);
PreparedStatement ps=cn.prepareStatement("insert into comments(commenter,docter,comments,star) values(?,?,?,?)");
ps.setString(1,s2);
ps.setString(2, s1);
ps.setString(3, s3);
ps.setString(4, s4);


int i=ps.executeUpdate();
System.out.println("i "+i);
out.print("Thank you,Your comment posted successfully.Please close the page and refresh to see your comment.");


%>
</body>
</html>