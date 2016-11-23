<%@page import="java.util.StringTokenizer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="five.Mailme" %>
        <%@ include file="getcon.jsp"%> <!-- to connect a database-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="css/text.css"/>

<link rel="stylesheet" href="css/960_12_col.css"/>

<link rel="stylesheet" href="css/table.css"/>

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
<!--Fancy box-->
<link rel="stylesheet" type="text/css" href="jquery_fancybox/jquery.fancybox.css" media="screen" />
<script type="text/javascript" src="jquery_fancybox/jquery.fancybox.js"></script>
<script type="text/javascript">
var scrollheight = $("#textup").height();

function scrolltextup(dur){
  $("#textup").animate({"top":"-=20"},{
    duration: dur,
    easing: "linear",
    complete:function(){
      $("#textup").children(":last").after("<div style='line-height:20px;'>"+
          $("#textup").children(":first").html()+"</div>");
      if($("#textup").children(":first").height() <=
           (parseInt($("#textup").css("top"))*-1)){
        $("#textup").children(":first").remove();
        $("#textup").css({"top":0});
      }
      setTimeout("scrolltextup(3000)", 500);
    }
  });
}
</script>
<script type="text/javascript">
		$(document).ready(function() {
			
			$('.fancybox').fancybox();
			
			$("#fancybox-manual-b").click(function() {
				$.fancybox.open({
			
				});
			});
			});
</script>

<!--Fancy box-->


<body bgcolor="#FFFCFC">


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
<h1> Docters List</h1>
</div>
<div id="content" class="grid_9">

 <br></br>

<jsp:useBean id="link" scope="application" class = "five.Mailme" />
<%
try
{
	

	ps=cn.prepareStatement("select * from register where user=? ");
	ps.setString(1, "docter");

	rs=ps.executeQuery();
	while(rs.next())
	{
		String send=rs.getString("email");
%>
<table align="center"  width="900" height="251" border="1" >
  <tr>
    <td bgcolor="#CCCCCC" width="118"><b>Name</b></td>
    <td width="114"><%=rs.getString("fname") %></td>
    <td width="149" rowspan="3"><img src="Example/image-folder/<%=rs.getString("photo") %>" width=140 height=150></img></td>
   <td  bgcolor="#FFEBEB" width="256" colspan="2" rowspan="5"><div style='overflow:scroll;overflow-x: hidden; height:210px;'>
<b>Comments:</b>   <br> 
<%
Mailme g=new Mailme();
System.out.println("==== "+g.test12(send));
String s=g.test12(send);
int kk=s.indexOf('*');
if(s!="")
{
StringTokenizer st=new StringTokenizer(s,"*");
int m=st.countTokens();
while(st.hasMoreElements())
{

	String sk=st.nextToken();
	System.out.println("my token"+sk);
	String r=sk.substring(0,1);
	//String r=""+rr;
	System.out.println("f "+r);
	StringBuffer sb=new StringBuffer(sk);
	sb.delete(0,1);
	sk=sb.toString();
	if(r.equals("5"))
	{
		%><img src="akas/stars.png"><img src="akas/stars.png"><img src="akas/stars.png"><img src="akas/stars.png"><img src="akas/stars.png">
		<%
	}
	if(r.equals("4"))
	{
		%><img src="akas/stars.png"><img src="akas/stars.png"><img src="akas/stars.png"><img src="akas/stars.png">
		<%
	}
	if(r.equals("3"))
	{
		%><img src="akas/stars.png"><img src="akas/stars.png"><img src="akas/stars.png">
		<%
	}
	if(r.equals("2"))
	{
		%><img src="akas/stars.png"><img src="akas/stars.png">
		<%
	}
	if(r.equals("1"))
	{
		%><img src="akas/stars.png">
		<%
	}
	out.println(sk);

	%><hr><%
	}

%>
<a class="fancybox fancybox.iframe" href="CommentBox.jsp?a=<%=rs.getString("email")%>"><i class="icon-leaf icon-white"></i>Click here to Comment</a>
	<%}
else
{
	out.println("No comments for this docter.To comment click on link.");

	%>
	<br>
	
	<a href="CommentBox.jsp?a=<%=rs.getString("email")%>" target="_blank">Click here to Comment</a>
			
<%}%>

    </div>
  
    </td>
  </tr>
  <tr>
    <td height="42"><b>Mobile</b></td>
    <td><%=rs.getString("mobile") %></td>
  </tr>
  <tr>
    <td bgcolor="#CCCCCC"  height="43"><b>Email</b></td>
    <td><%=rs.getString("email") %></td>
  </tr>
  <tr>
   <td  height="45"><b>City</b></td>
    <td><%=rs.getString("city") %></td>
    <td><b>Zipcode</b> <%=rs.getString("zipcode") %></td>
  </tr>
  <tr>
    <td bgcolor="#CCCCCC" height="23"><b>Address</b></td>
    <td><%=rs.getString("address1") %></td>
    <td></td>
  </tr>
 
</table>
<hr></hr>
<%
} }
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
%></div>
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