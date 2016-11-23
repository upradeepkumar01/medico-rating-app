<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
 <link rel="stylesheet" type="text/css" href="css/style.css" />
 <script type="text/javascript" src="JS/jquery-1.4.2.min.js"></script>
 <script src="JS/jquery.autocomplete.js"></script> 
</head>
<body>
<hr>
Search by Zipcode
<hr>

  <div style="width: 300px; margin: 50px auto;">
  <form action="UserSearchByZip1.jsp">
  <b>Zipcode</b>   : <input type="text" id="con1" name="con1" class="input_text"/><br> <br>
<br>
 <input type="submit" value="search">
 </form>

 </div><br>
 <hr>
Search by Speciality
<hr><br>
   <div style="width: 300px; margin: 50px auto;">
  <form action="UserSearchByZip2.jsp">
 
 <b>   Speciality  </b>:<select name="spl">
       <option value="0">------select a spciality-----</option>
      <option value="Orthopedist">Orthopedist</option>
       <option value="Psychiatrist">Psychiatrist</option>
        <option value="ENT">Ear, Nose & Throat Doctor (ENT)</option>
         <option value="Dentist">Dentist</option>
          <option value="Dermatologist">Dermatologist</option>
           <option value="OB-GYN (Obstetrician-Gynecologist)">OB-GYN (Obstetrician-Gynecologist)</option>
            <option value="cardiology">cardiaology</option>
              <option value="oncology">oncology</option>
                
      </select><br> <br>
 <input type="submit" value="search">
 </form>

 </div>
 <br>
 <hr>
Search by Zipcode & Speciality
<hr><br>
  <div style="width: 300px; margin: 50px auto;">
  <form action="UserSearchByZip.jsp">
  <b>Zipcode</b>   : <input type="text" id="country" name="country" class="input_text"/><br> <br>
 <b>   Speciality  </b>:<select name="spl">
       <option value="0">------select a spciality-----</option>
      <option value="Orthopedist">Orthopedist</option>
       <option value="Psychiatrist">Psychiatrist</option>
        <option value="Ear, Nose & Throat Doctor (ENT)">Ear, Nose & Throat Doctor (ENT)</option>
         <option value="Dentist">Dentist</option>
          <option value="Dermatologist">Dermatologist</option>
           <option value="OB-GYN (Obstetrician-Gynecologist)">OB-GYN (Obstetrician-Gynecologist)</option>
            <option value="Primary Care Doctor">Primary Care Doctor</option>
              <option value="Urologist">Urologist</option>
                
      </select><br> <br>
 <input type="submit" value="search">
 </form>

 </div>
</body>
<script>
 jQuery(function(){
  $("#con1").autocomplete("list.jsp");
 });
</script>
<script>
 jQuery(function(){
  $("#country").autocomplete("list.jsp");
 });
</script>
</html>