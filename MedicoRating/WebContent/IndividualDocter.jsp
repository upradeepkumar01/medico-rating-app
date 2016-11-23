<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <%@ page import="java.util.*, java.io.*" %>
    <%@ include file="getcon.jsp"%> <!-- to connect a database-->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<title>Medico Rating</title>
<link rel="stylesheet" href="css/reset.css"/>
<link rel="stylesheet" href="css/text.css"/>
<link rel="stylesheet" href="css/960_12_col.css"/>
<link rel="stylesheet" href="css/skin1.css"/>
<link rel="stylesheet" href="css/nivo-slider.css"/>
<link rel="stylesheet" href="css/jqueryslidemenu.css"/>
<link rel="stylesheet" href="css/table.css" type="text/css"/>	
<!--[if IE]>
	<link rel="stylesheet" type="text/css" media="all" href="css/ie.css"/>
    <script type="text/javascript" src="javascript/media-queries-ie.js"></script>
<![endif]-->
<script type="text/javascript" src="javascript/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="javascript/jqueryslidemenu.js"></script>
<script type="text/javascript" src="javascript/jquery.nivo.slider.js"></script>
<script type="text/javascript" src="javascript/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="javascript/jquery.elastislide.js"></script>
<script type="text/javascript" src="javascript/custom.js"></script>
<script type="text/javascript" src="javascript/scrolltop.js"></script>
</head>
<body>

<div id="wrapper" class="box"  >
<div class="top_navigation_container">
<div class="top_navigation">
<ul>
<li><a href="contact.jsp">Contact us</a></li>
<li><a href="about.jsp">Our company</a></li>

</ul>
</div>
<div class="top_navigation_social">
<p>Follow us</p>
<ul>
<li class="social_facebook">
<a href="https://www.facebook.com/" target="_blank">Facebook</a>
</li>
<li class="social_twitter">
<a href="https://twitter.com/?lang=en" target="_blank">Twitter</a>
</li>


</ul>
</div>
</div>
<div id="header"> 
<div class="container_12 clearfix"> 
<div class="grid_12">
<div class="logo"><a href=""><img src="images/logo.png" width="254" height="69" alt="Logo"/></a></div>

</div>
</div> 
<div class="container_12 clearfix"> 
<div class="grid_12"> 
<div id="topnav" class="jqueryslidemenu">
<ul>
<li><a href="index.html">Home</a>

</li>

<li><a href="">About Us</a></li>
<li><a href="">Contact us</a></li>
</ul>
</div>
</div> 
</div> 
</div> 
<div class="container_12 clearfix">
<div id="content_wrapper" style="margin-bottom:-30px !important">
<div class="grid_12 page_title">
<h1> Docters List</h1>
</div>
<div id="content" class="grid_9">


<%
try
{
	ps=cn.prepareStatement("select * from register where user=?");
	ps.setString(1, "docter");
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
<table width="475" border="1" align="center" ><tr><td width="157">Rating </td>


<!--  <%
String r=rs.getString("satisfaction");
System.out.println("r "+r);
if(r.equals("5"))
{
	%><td><img src="akas/stars.png"><img src="akas/stars.png"><img src="akas/stars.png"><img src="akas/stars.png"><img src="akas/stars.png"></td>
	<%
}
if(r.equals("4"))
{
	%><td><img src="akas/stars.png"><img src="akas/stars.png"><img src="akas/stars.png"><img src="akas/stars.png"></td>
	<%
}
if(r.equals("3"))
{
	%><td><img src="akas/stars.png"><img src="akas/stars.png"><img src="akas/stars.png"></td>
	<%
}
if(r.equals("2"))
{
	%><td><img src="akas/stars.png"><img src="akas/stars.png"></td>
	<%
}
if(r.equals("1"))
{
	%><td><img src="akas/stars.png"></td>
	<%
}
%><td width=170><a href="Book.jsp?docterid=<%=rs.getString("docterid")%>">Book Appointment</a></td></tr></table>
<br><br>
<%
}
%>-->
 
</table>
<% }
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
</div>
<div id="sidebar" class="grid_3">
<div class="sidebar_wrapper">
<div class="sidebar_widget">
<h4><span>Click on picture </span></h4>

</div>
<div class="sidebar_widget">

</div>
</div>
</div>
</div>
</div>
<div id="footer_wrapper">
<div class="container_12 clearfix">
<div id="footer">
<div class="copyright_left">&reg; Copyright 2015 Medico Rating</div>

</div>
</div>
</div>
<div id="topcontrol" style="position: fixed; bottom: 0px; right: 0px; opacity: 1; cursor: pointer;" title="To the top! To the victory!">
</div>
</div>
<script type="text/javascript">
	$('#carousel').elastislide({
		imageW  : 135,
		margin : 20,
		minItems    : 4,
		border      : 1,
	});
</script>
</body>


</html>