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
<li><a href="AdminHome.jsp">Home</a>

</li>

<li><a href="listDocters.jsp">List Doctors</a></li>
<li><a href="DocterSearch.jsp">Search Doctor</a></li>
<li><a href="UsersList.jsp">List Patients</a></li>

<li><a href="Logout.jsp">Logout</a></li>
</ul>
</div>
</div> 
</div> 
</div> 
<div class="container_12 clearfix">
<div id="content_wrapper" style="margin-bottom:-30px !important">
<div class="grid_12 page_title">
<h1> Patient List</h1>
</div>
<div id="content" class="grid_9">


<%
try
{
	ps=cn.prepareStatement("select * from register where user=?");
	ps.setString(1, "patient");
	rs=ps.executeQuery();
	
%>
	<div class="CSS_Table_Example" style="width:600px;height:150px;">
	<table >
		<tr> 
			<td>
				Name
			</td>
			<td >
				mobile
			</td>
			<td>
				Photo
			</td>
		</tr>
	
		<% while(rs.next())
		{
			String ph="D:\\MedicoRating\\WebContent\\Example\\image-folder\\";
					String ss=rs.getString("photo"); 
					String sss=ph+ss;
					System.out.println(sss);
		%>
				<tr><td >
				<%=rs.getString("fname") %>
			</td>
			<td>
			<%=rs.getString("mobile") %>
			</td>
			<td>
		
				
				<a href="newp.jsp?m=<%=rs.getString("mobile") %>" target="_blank"><img src="Example/image-folder/<%=rs.getString("photo") %>" width=50 height=50></img></a>
			</td>
		</tr>
		<% }%>
	</table>
</div>
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