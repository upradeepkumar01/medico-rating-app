<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ include file="getcon.jsp"%>


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
<li><a href="UserHome.jsp">Home</a>

</li>

<li><a href="UserlistDocters.jsp">List Docters</a></li>
<li><a href="UserSearchDocters.jsp">Search Docters</a></li>
<li><a href="UserviewProfile.jsp">view Profile</a></li>
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
<h1>Booking Successful</h1>
</div>
<%
String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");
String s4=request.getParameter("s4");
String s5=request.getParameter("radio");

PreparedStatement ps=cn.prepareStatement("insert into appointments(docterid,name,mobile,date,timing) values(?,?,?,?,?)");
ps.setString(1,s1);
ps.setString(2, s2);
ps.setString(3, s3);
ps.setString(4, s4);
ps.setString(5, s5);
int i=ps.executeUpdate();
System.out.println("i "+i);
out.print("Booking made successfully.Thanks for choosing Medico Rating.");

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