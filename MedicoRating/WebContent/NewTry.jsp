
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
<li><a href="#">Contact us</a></li>
<li><a href="#">Our company</a></li>
<li><a href="#">Site map</a></li>
</ul>
</div>
<div class="top_navigation_social">
<p>Follow us</p>
<ul>
<li class="social_facebook">
<a href="#">Facebook</a>
</li>
<li class="social_twitter">
<a href="#">Twitter</a>
</li>
<li class="social_dribbble">
<a href="#">Dribbble</a>
</li>
<li class="social_linkedin">
<a href="#">Linkedin</a>
</li>
<li class="social_pinterest">
<a href="#">Pinterest</a>
</li>
</ul>
</div>
</div>
<div id="header"> 
<div class="container_12 clearfix"> 
<div class="grid_12">
<div class="logo"><a href="index-2.html"><img src="images/logo.png" width="254" height="69" alt="Logo"/></a></div>
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
</ul>
</div>
</div> 
</div> 
</div> 
<div class="container_12 clearfix">
<div id="content_wrapper" style="margin-bottom:-30px !important">
<div class="grid_12 page_title">
<h1> Login Here</h1>
</div>
<div id="content" class="grid_9">





<h1 align="center"><em><strong></strong></em></h1>
<div align="center">
<h1>Welcome Admin</h1>
</div>
<%
try
{
	
	ps=cn.prepareStatement("select * from register");
	
	rs=ps.executeQuery();
	while(rs.next())
	{
%>
<table  width="900" height="251" border="1" >
  <tr>
    <td width="118">Name</td>
    <td width="114"><%=rs.getString("fname") %></td>
    <td width="149" rowspan="3"><img src="Example/image-folder/<%=rs.getString("photo") %>" width=140 height=150></img></td>
    <td width="256" colspan="2" rowspan="5"><div style='overflow:scroll;overflow-x: hidden; width:250px;height:210px;'>here is some textsa
    sa
    assa
    sa
    sa
    sa
    as
    as
    as
    as
    assasaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    saaaaaaaaaaa
    saaaaaaaaaa
       sa
    as
    as
    as
    as
    as
    assasaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    saaaaaaaaaaa
    saaaaaaaaaa
       sa
    as
    as
    as
    as
    as
    assasaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    saaaaaaaaaaa
    saaaaaaaaaa
       sa
    as
    as
    as
    as
    as
    assasaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    saaaaaaaaaaa
    saaaaaaaaaa   sa
    as
    as
    as
    as
    as
    assasaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    saaaaaaaaaaa
    saaaaaaaaaa
       sa
    as
    as
    as
    as
    as
    assasaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    saaaaaaaaaaa
    saaaaaaaaaa
    
    sa
    as</div>
  
    </td>
  </tr>
  <tr>
    <td height="42">Mobile</td>
    <td><%=rs.getString("mobile") %></td>
  </tr>
  <tr>
    <td height="43">Email</td>
    <td><%=rs.getString("email") %></td>
  </tr>
  <tr>
    <td height="45">City</td>
    <td><%=rs.getString("city") %></td>
    <td>Zipcode <%=rs.getString("zipcode") %></td>
  </tr>
  <tr>
    <td height="23">Address</td>
    <td><%=rs.getString("address1") %></td>
    <td>State <%=rs.getString("state") %></td>
  </tr>
</table>
<hr></hr>
<%} }
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