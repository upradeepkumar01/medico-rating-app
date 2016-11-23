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
<li><a href="DocterHome.jsp">Home</a>

</li>
<li><a href="PatientsComments.jsp">My Patients </a></li>
<li><a href="ViewDocterProfile.jsp">Update Profile</a></li>

<li><a href="UpdatePassword.jsp">Update Password</a></li>


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
<%
try
{
	String email=(String)session.getAttribute("email");
	   System.out.println("----dd>"+email);
	//ps=cn.prepareStatement("select * from subscribe where docter=? and status=?");
	ps=cn.prepareStatement("select register.fname,subscribe.user from register INNER JOIN subscribe ON register.email=subscribe.user  where  subscribe.docter=? and subscribe.status=?");
	   System.out.println("---->ss");
	ps.setString(1, email);
	ps.setString(2, "yes");
	System.out.println("---->aa");
	rs=ps.executeQuery();
	%>
	<h2>Please click on the patient id to view details</h2>
	
	<table bgcolor="D7CBCB" border="1" width=400 height=200><%int i=0;
	
  while(rs.next())
	{ i++;
	  String user=rs.getString("user");
	  String name=rs.getString("fname");
	  
	%>
	<tr bgcolor="F3F5D0">
	<td >    <a href="ViewPatientComments.jsp?a=<%=user%>"><b>   <%=i %>.<%=name %></a></b></td>
	</tr>
	
	<%		
	
	}%>
	</table>

	<%
	

	
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
</div>

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