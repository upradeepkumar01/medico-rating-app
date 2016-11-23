<%@ page import="java.sql.*" %>
<%!Statement st=null;
Connection cn=null;
ResultSet rs=null;
PreparedStatement ps=null;
%>
<%
Class.forName("com.mysql.jdbc.Driver");
cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/medico", "root","root");

st=cn.createStatement();

%>