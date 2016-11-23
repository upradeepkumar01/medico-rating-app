<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


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
<script type="text/javascript">
function myFunction() {
    var pass1 = document.getElementById("pass").value;
    var pass2 = document.getElementById("confPass").value;
    var ok = true;
    if (pass1 != pass2) {
        //alert("Passwords Do not match");
        document.getElementById("pass").style.borderColor = "#E34234";
        document.getElementById("confPass").style.borderColor = "#E34234";
        ok = false;
    }
    else {
        alert("Passwords Match!!!");
    }
    return ok;
}
</script>
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
<h1> Registration</h1>
</div>
<div id="content" class="grid_9">



<form id="form" action="hh.jsp" onsubmit="return myFunction()" method="post">

<h1 align="center"><em><strong></strong></em></h1>
<div align="center">
  <table width="369" border="0">
    <tr>
      <th width="162" scope="row"><div align="left">Email Id</div></th>
      <td width="197"><input type="text" name="email" id="textfield4" required></td>
      </tr>
    <tr>
      
    <tr>
      <th width="162" scope="row"><div align="left">Password</div></th>
      <td width="197"><input type="password" name="password" id="pass" size=23 required/></td>
      </tr>
    <tr>
      <th width="162" scope="row"><div align="left">Confirm Password</div></th>
      <td width="197"><input type="password" name="cpassowrd" id="confPass" size=23 required/></td>
      </tr>
        
  </table>
</div>
<p align="center">&nbsp;</p>
  <div align="center">
    <table width="383" border="0">
      <tr>
        <th width="158" scope="row"><input type="submit" name="submit" value ="Send Email" /></th>
     
        <th width="158" scope="row"><input type="reset" value ="Reset" size=10/></th>
       
      </tr>
  
	  
    </table>
  </div>
  <p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
</form>



</div>
<div id="sidebar" class="grid_3">
<div class="sidebar_wrapper">
<div class="sidebar_widget">
<h4><span>Register</span></h4>

</div>
<div class="sidebar_widget">
<p><img src="images/register.png"></p>
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