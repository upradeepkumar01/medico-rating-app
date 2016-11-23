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
<jsp:useBean id="link" scope="application" class = "five.Mailme" />
<%
try
{
	
	ps=cn.prepareStatement("select * from register");
	
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
	
	<a class="fancybox fancybox.iframe" href="CommentBox.jsp?a=<%=rs.getString("email")%>"><i class="icon-leaf icon-white"></i>Click here to Comment</a>
			
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
    <td><a href="Book.jsp?email=<%=rs.getString("email") %>"><b>Book Appointment</b></a></td>
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
%>
</body>
</html>