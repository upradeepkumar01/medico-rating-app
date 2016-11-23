<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="getcon.jsp"%> <!-- to connect a database-->

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


<li><a href="ViewDocterProfile.jsp">Update Profile</a></li>

<li><a href="UpdatePassword.jsp">Update Password</a></li>
<li><a href="PatientsComments.jsp">Patients Comments</a></li>

<li><a href="Logout.jsp">Logout</a></li>
</ul>
</div>
</div> 
</div> 
</div> 
<div class="container_12 clearfix">
<div id="content_wrapper" style="margin-bottom:-30px !important">
<div class="grid_12 page_title">
<h1> Welcome Doctor: Please edit your Profile</h1>
</div>
<div id="content" class="grid_9">

<%
try
{
	String email=(String)session.getAttribute("email");

	   System.out.println("----dd>"+email);
	ps=cn.prepareStatement("select * from docter where email=?" );
	   System.out.println("---->ss");
	ps.setString(1, email);
	
	   System.out.println("---->aa");
	rs=ps.executeQuery();

    
	while(rs.next())
	{
%>
  <form action="DocterUpdateProfile.jsp">

<h1 align="center"><em><strong>Doctor's Profile</strong></em></h1><br></br>
<div align="center">
  <table width="369" border="0">
   

    <tr>
      <th width="162" scope="row"><div align="left">Specialities</div></th>
      <td width="197"><select name="spl">
            <option value="0">------select a spciality-----</option>
      <option value="Orthopedist">Orthopedist</option>
       <option value="Psychiatrist">Psychiatrist</option>
        <option value="Ear, Nose & Throat Doctor (ENT)">Ear, Nose & Throat Doctor (ENT)</option>
         <option value="Dentist">Dentist</option>
          <option value="Dermatologist">Dermatologist</option>
           <option value="OB-GYN (Obstetrician-Gynecologist)">OB-GYN (Obstetrician-Gynecologist)</option>
            <option value="Primary Care Doctor">Primary Care Doctor</option>
              <option value="Urologist">Urologist</option>
                <option value="Orthopedist">Orthopedist</option>
                  <option value="Therapist / Counselor">Therapist / Counselor</option>
                    <option value="Sports Medicine Specialist">Sports Medicine Specialist</option>
                      <option value="Sleep Medicine Specialist">Sleep Medicine Specialist</option>
                        <option value="Rheumatologist">Rheumatologist</option>
                          <option value="Pulmonologist (Lung Doctor">Pulmonologist (Lung Doctor</option>  
                          <option value="Physical Therapist">Physical Therapist</option>
                            <option value="Pediatrician">Pediatrician</option>
                            
      </select></td>
      </tr>
    <tr>

	<tr>
      <th width="162" scope="row"><div align="left">Designation</div></th>
      <td width="197"><textarea rows="3" cols="20" name="des" ><%=rs.getString("designation")%></textarea></td>
      </tr>
    <tr>

     
    <tr>
      <th scope="row"><div align="left">Comments</div></th>
      <td><textarea rows="3" cols="20" name="com" ><%=rs.getString("comments")%></textarea></td>
      </tr>

	  <tr>
      <th width="162" scope="row"><div align="left">Affiliations</div></th>
      <td width="197"><textarea rows="3" cols="20" name="aff"><%=rs.getString("affiliations")%></textarea></td>
      </tr>

      </table>
</div>
<p align="center">&nbsp;</p>
  <div align="center">
    <table width="383" border="0">
      <tr>
        <th width="158" scope="row"><input type="submit" value="Update" /></th>
       <th width="158" scope="row"><input type="reset" value="Reset" /></th>
       
      </tr>
    </table>
  </div>
  <p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
</form>
<%
	}
}
catch(Exception el)
{
out.println("Inserting error"+el);
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
<h4>Edit</h4>

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