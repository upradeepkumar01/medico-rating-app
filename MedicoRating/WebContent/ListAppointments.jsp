<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
   <%@ include file="getcon.jsp"%> <!-- to connect a database-->
   
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

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
<div id="wrapper" class="boxed">
<div class="top_navigation_container">
<div class="top_navigation">
<ul>
<li><a href="contact.jsp">Contact  </a></li>
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
<div class="logo"><a href="index.html"><img src="images/logo.png" width="254" height="69" alt="Logo"/></a></div>
<div class="search_wrapper">
<form id="searchform" action="#" method="get">
<div id="search-text">
<input id="s" type="text" name="s"/>
</div>
<input id="searchsubmit" type="submit" value="search"/>
<br class="clear"/>
</form>
</div>
</div>
</div> 
<div class="container_12 clearfix"> 
<div class="grid_12"> 
<div id="topnav" class="jqueryslidemenu">
<ul>
<li><a href="AdminHome.jsp">Home</a>

</li>

<li><a href="listDocters.jsp">List Docters</a></li>
<li><a href="DocterSearch.jsp">Search Docter</a></li>
<li><a href="UsersList.jsp">List Patients</a></li>
<li><a href="ListAppointments.jsp">List Appointments</a></li>
<li><a href="Logout.jsp">Logout</a></li>
</ul>
</div>
</div> 
</div> 
</div> 
<div class="container_12 clearfix">
<div id="content_wrapper" style="margin-bottom:-30px !important">
<div class="grid_12 page_title">

</div>
<div id="content" class="grid_9">





<h1 align="center"><em><strong></strong></em></h1>
<div align="center">
<h1>All Appointments</h1>
</div>
<%
try
{
	
	ps=cn.prepareStatement("select * from appointments ");
	
	
	rs=ps.executeQuery();
	
%>
	<div>
	<table align="center" >
		<tr> 
			<td width="157" bgcolor="FFEBCD">
				Docter Email Id
			</td>
		<td width="157" bgcolor="FFEBCD">
				Patient Email Id
			</td>
			<td width="157" bgcolor="FFEBCD">
				Patient Mobile No
			</td>
			<td width="157" bgcolor="FFEBCD">
				Date Of Visit
			</td>
		<td width="157" bgcolor="FFEBCD">
				Time
			</td>
		</tr>
	
		<% while(rs.next())
		{
			%>
			<tr>
			<td bgcolor="#CCCCCC"><%=rs.getString("docterid")%></td>
			
     <td bgcolor="#CCCCCC"><%=rs.getString("name")%></td>

   	
     <td bgcolor="#CCCCCC"><%=rs.getString("mobile")%></td>

    
     <td bgcolor="#CCCCCC"><%=rs.getString("date")%></td>
  
     		
     <td bgcolor="#CCCCCC"><%=rs.getString("timing")%></td>
 
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
  <p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>



</div>
<div id="sidebar" class="grid_3">
<div class="sidebar_wrapper">
<div class="sidebar_widget">


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