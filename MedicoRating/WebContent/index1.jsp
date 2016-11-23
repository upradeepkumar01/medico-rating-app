<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
 <link rel="stylesheet" type="text/css" href="css/style.css" />
 <script type="text/javascript" src="JS/jquery-1.4.2.min.js"></script>
 <script src="JS/jquery.autocomplete.js"></script> 
</head>
<body>
 <div style="width: 300px; margin: 50px auto;">
  <form action="SearchByZip.jsp">
  <b>Zipcode</b>   : <input type="text" id="country" name="country" class="input_text"/>
  
 <input type="submit" value="search">
 
 </form>
 </div>
 
</body>
<script>
 jQuery(function(){
  $("#country").autocomplete("list.jsp");
 });
</script>
</html>