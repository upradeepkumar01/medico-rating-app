<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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





<h1 align="center"><u><strong>Doctor's Profile</strong></u></h1><br></br>
<div align="center">
<%
try
{
	String s=(String)session.getAttribute("email");
	ps=cn.prepareStatement("select * from register where email=?");
	ps.setString(1, s);
	System.out.println("s  --"+s);
	rs=ps.executeQuery();
	while(rs.next())
	{
		System.out.println("here in while"+rs.getString("photo"));
%>
	
<table width="700"  align="center" >
  <tr>
    <td width="157" bgcolor="FFEBCD">Name</td>
    <td width="124" bgcolor="FFEBCD"><%=rs.getString("fname") %></td>
    <td width="172" rowspan="7" > <div align="center"><img src="Example/image-folder/<%=rs.getString("photo") %>"  width="200" height="190"></img></div></td>
  
  </tr>
  <tr>
    <td bgcolor="#CCCCCC">Mobile</td>
     <td bgcolor="#CCCCCC"><%=rs.getString("mobile")%></td>
    </tr>
  <tr>
    <td bgcolor="FFEBCD">Address</td>
    <td bgcolor="FFEBCD"><%=rs.getString("address1")%></td>
    </tr>
  <tr>
    <td bgcolor="#CCCCCC">Address2</td>
     <td bgcolor="#CCCCCC"><%=rs.getString("address2")%></td>
    </tr>
  <tr>
    <td bgcolor="FFEBCD">City</td>
    <td bgcolor="FFEBCD"><%=rs.getString("city")%></td>
    </tr>
  <tr>
    <td bgcolor="#CCCCCC">State</td>
   <td bgcolor="#CCCCCC"><%=rs.getString("state")%></td>
    </tr>
     <tr>
    <td bgcolor="FFEBCD">Email</td>
    <td bgcolor="FFEBCD"><%=rs.getString("email")%></td>
    </tr>
      <tr>
    <td bgcolor="#CCCCCC">Zipcode</td>
   <td bgcolor="#CCCCCC"><%=rs.getString("zipcode")%></td>
    </tr>
</table>
<table><tr bgcolor="EEE8AA"><td><h4><a href="DocterEdit.jsp"><u>Click here edit your profile</u></a></h4></td></tr></table>
<% }
}
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
<%
try
{
	String s=(String)session.getAttribute("email");
	PreparedStatement psw=cn.prepareStatement("select * from docter where email=?");
	psw.setString(1, s);
	System.out.println("s  --"+s);
	ResultSet rss=psw.executeQuery();
	while(rss.next())
	{
		System.out.println("here in while"+rss.getString("email"));
%>
	<h4>MEDICAL SPECIALTIES</h4>
<table width="700"  align="center" >

  <tr>
    <td bgcolor="#CCCCCC">Specialities</td>
     <td bgcolor="#CCCCCC"><%=rss.getString("specialities")%></td>
    </tr>
  <tr>
    <td bgcolor="FFEBCD">Designation</td>
    <td bgcolor="FFEBCD"><%=rss.getString("designation")%></td>
    </tr>
  <tr>
    <td bgcolor="#CCCCCC">Comments</td>
     <td bgcolor="#CCCCCC"><%=rss.getString("comments")%></td>
    </tr>
  <tr>
    <td bgcolor="FFEBCD">Affiliations</td>
    <td bgcolor="FFEBCD"><%=rss.getString("affiliations")%></td>
    </tr>
 
</table>
<table><tr bgcolor="EEE8AA"><td><h4><a href="DocterSplEdit.jsp"><u>Click here edit your MEDICAL SPECIALTIES</u></a></h4></td></tr></table>
<% }
}
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