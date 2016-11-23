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
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
<!--[if IE]>
	<link rel="stylesheet" type="text/css" media="all" href="css/ie.css"/>
    <script type="text/javascript" src="javascript/media-queries-ie.js"></script>
<![endif]-->


<script type="text/javascript" src="javascript/jquery.nivo.slider.js"></script>
<script type="text/javascript" src="javascript/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="javascript/jquery.elastislide.js"></script>
<script type="text/javascript" src="javascript/custom.js"></script>
<script type="text/javascript" src="javascript/scrolltop.js"></script>
<script>
$(function() {
$( "#datepicker" ).datepicker({
changeMonth: true,
changeYear: true
});
});
</script>

<style type="text/css">
#apDiv1 {
	position: absolute;
	left: 309px;
	top: 373px;
	width: 391px;
	height: 339px;
	border: groove;
	z-index: 1;
	
}
#apDiv2 {
	position: absolute;
	left: 712px;
	top: 373px;
	width: 398px;
	height: 340px;
	z-index: 2;
	border: groove;
	overflow: auto;
}
#apDiv3 {
	position: absolute;
	left: 549px;
	top: 452px;
	width: 138px;
	height: 153px;
	z-index: 3;
	border: groove;
	
}
</style>
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
<li><a href="UserHome.jsp">Home</a>

</li>

<li><a href="UserlistDocters.jsp">List Doctors</a></li>
<li><a href="UserSearchDocters.jsp">Search Doctors</a></li>
<li><a href="UserviewProfile.jsp">View Profile</a></li>
<li><a href="UpdateUserPassword.jsp">Update Password</a></li>
<li><a href="Logout.jsp">Logout</a></li>

</ul>
</div>
</div> 
</div> 
</div> 
<div class="container_12 clearfix">
<div id="content_wrapper" style="margin-bottom:-30px !important">
<div class="grid_12 page_title">
<h1> Appointment</h1>
</div>
<div id="content" class="grid_9">





<h1 align="center"><em><strong></strong></em></h1>
<div align="center">
<%
try
{
	String s=request.getParameter("email");
	ps=cn.prepareStatement("select * from register where email=?");
	ps.setString(1,s);
	rs=ps.executeQuery();
	while(rs.next())
	{
		
%>
<div id="apDiv1"><h3>Docter Details</h3><br />
<br></br>
  <table width="233" height="160" border="1">
    <tr>
      <td >Name</td>
      <td>sa</td>
    </tr>
    <tr>
      <td>Mobile No</td>
      <td><%=rs.getString("mobile")%></td>
    </tr>
    <tr>
      <td>Email</td>
      <td><%=rs.getString("email")%></td>
    </tr>
    <tr>
      <td>City</td>
      <td><%=rs.getString("city")%></td>
    </tr>
    <tr>
      <td>Zipcode</td>
      <td><%=rs.getString("zipcode")%></td>
    </tr>
  </table>
  <p>&nbsp;</p>
</div>
<div id="apDiv2">
<form id="form1" name="form1" method="post" action="bookdb.jsp">
    <h3> Book An Appointment    </h3>
    <table width="380" align="center" >
      <tr>
    <td width="185">Docter Email Id</td>
    <td width="179">
      <label for="textfield"></label>
      <input type="text" name="s1" id="textfield" value="<%=rs.getString("email")%>" readonly="readonly" />
    </td>
  </tr>
  <tr>
    <td>Patient Email Id</td>
    <td><input type="text" name="s2" id="textfield2" /></td>
  </tr>
  <tr>
    <td>Contact Number</td>
    <td><input type="text" name="s3" id="textfield3" /></td>
  </tr>
  <tr>
    <td>Date Of Visit</td>
    <td><input type="text" name="s4" id="datepicker" /></td>
  </tr>
  <tr>
    <td height="65">Time</td>
    <td><p>
      <input type="radio" name="radio" id="radio" value="morning" />
      <label for="radio"></label>
      Morning(10am to 12pm)</p>
      <p>
        <input type="radio" name="radio" id="radio" value="evening" />
        <label for="radio2"></label>
      Evening(1pm to 8pm)</p></td>
  </tr>
   <tr>
    <td><input type="submit" value="Book Appointment"/></td>
    <td><input type="reset" value="reset" /></td>
  </tr>
</table>
</form>
</div>
<div id="apDiv3"><img src="Example/image-folder/<%=rs.getString("photo") %>"  width="134" height="150"></img></div><% }
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