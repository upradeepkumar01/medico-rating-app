<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <%@ page import="java.util.*, java.io.*" %>
    <%@ include file="getcon.jsp"%> <!-- to connect a database-->
<head>
<link href="stylesheet/stylesheet.css" rel="stylesheet"></head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<title>Comment Box</title>
<style type="text/css">
body {
	background-color: #CCF;
}
body,td,th {
	color: #600;
}
</style>
</head>


<body bgcolor="#FF9900"><center>
<h2>Comment Box</h2>
<h5>Post Your Comment</h5>
<h1></h1>
<body>
<%
String user=request.getParameter("user");
String docter=request.getParameter("docter");
%>
<form action="PostComment.jsp">
<table width="300" border="0" >
  <tr>
    <td>Doctor Email Id</td>
    <td><input type="text" name="email"  value="<%=session.getAttribute("email") %>"  readonly="readonly"  /></td>
  </tr>
    <tr>
    
    <td> Your Email: </td>
    <td><input type="text" name="name"  value="<%=docter %>"  readonly="readonly"/></td>
  </tr>
  <tr>
    <td>Comments</td>
    <td><textarea rows="5" cols="17" name="comments"></textarea></td>
  </tr>
 <tr>
 <tr>
 <% 
 String o=(String)session.getAttribute("email");
 try
 {
 
 	   System.out.println("----dd>");
 	ps=cn.prepareStatement("select user from register where email=?");
 	   System.out.println("---->ss");
 	ps.setString(1, o);
 	
 	   System.out.println("---->aa");
 	rs=ps.executeQuery();

     while(rs.next())
     {
 	String ssss=rs.getString("user");
 	
 	
 if(ssss.equals("patient"))
	 {
	 %>
 <td>patient Satisfaction</td><td> <div align="center">
  <p align="center">
</p>
      <!-- Star rating -->
      <div class="starRating">
  <div>
    <div>
      <div>
        <div>
          <input id="rating1" type="radio" name="rating" value="1">
          <label for="rating1"><span>1</span></label>
        </div>
        <input id="rating2" type="radio" name="rating" value="2">
        <label for="rating2"><span>2</span></label>
      </div>
      <input id="rating3" type="radio" name="rating" value="3">
      <label for="rating3"><span>3</span></label>
    </div>
    <input id="rating4" type="radio" name="rating" value="4">
    <label for="rating4"><span>4</span></label>
  </div>
  <input id="rating5" type="radio" name="rating" value="5">
  <label for="rating5"><span>5</span></label>
</div> 
      <!-- Star rating -->
</div></td></tr>
<%}
 else
 {
	%>
	 <input type="hidden" name="rating" value="  Reply From Doctor to:">
 <% }
 	}
     }
catch(Exception r)
{
	System.out.println("you have error in comment box.");

}%>

    <td><input type="submit" value="Post"  /></td>
    <td><input type="reset" value="Reset"  /></td>
  </tr>

</table><br />
</form>
</body>
</html>