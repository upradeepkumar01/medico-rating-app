<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*, java.io.*" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="getcon.jsp"%> <!-- to connect a database-->
 
<%
try
{
String ImageFile="";
String itemName = "";
String user = "";
String fname = "";
String lname = "";
String gender = "";
String mobile = "";
String addr1 = "";
String addr2 = "";
String city = "";
String state = "";
String zip = "";
boolean isMultipart = ServletFileUpload.isMultipartContent(request);
if (!isMultipart)
{
}
else
{
FileItemFactory factory = new DiskFileItemFactory();
ServletFileUpload upload = new ServletFileUpload(factory);
List items = null;
try
{
items = upload.parseRequest(request);
}
catch (FileUploadException e)
{
e.getMessage();
}
 
Iterator itr = items.iterator();
while (itr.hasNext())
{
FileItem item = (FileItem) itr.next();

if (item.isFormField())
{
String name = item.getFieldName();
System.out.println("name"+name);
String value = item.getString();
System.out.println("value"+value);
if(name.equals("ImageFile"))
{
ImageFile=value;
}
if(name.equals("doc"))
{
user=value;
}
if(name.equals("fname"))
{
fname=value;
}
if(name.equals("lname"))
{
lname=value;
}
if(name.equals("gender"))
{
gender=value;
}
if(name.equals("mobile"))
{
mobile=value;
}
if(name.equals("city"))
{
city=value;
}
if(name.equals("state"))
{
state=value;
}
if(name.equals("zipcode"))
{
zip=value;
}
if(name.equals("address1"))
{
addr1=value;
}
if(name.equals("address2"))
{
addr2=value;
}

}
else
{
try
{
itemName = item.getName();

File savedFile = new File("D:/MedicoRating/WebContent/Example/image-folder/"+itemName);

item.write(savedFile);
}
catch (Exception e)
{
out.println("Error"+e.getMessage());
}
}
}
try
{
	String em=(String)session.getAttribute("email");
	System.out.println("my email"+em);

	 System.out.println("hii");
int g=st.executeUpdate("update register set fname='"+fname+"',lname='"+lname+"',mobile='"+mobile+"',photo='"+itemName+"',address1='"+addr1+"',address2='"+addr2+"',city='"+city+"',state='"+state+"',zipcode='"+zip+"' where email='"+em+"'");

System.out.println("after"); 
if(g>0)
 {

	 System.out.println("insdie");
	 %>
	 <script>
	 alert("Details Updated");
	 window.location.href="DocterHome.jsp";
	 </script><%	
 }
 else
 {
	 System.out.println("not fine");
	 %>
	 <script>
	 alert("Problem..please try again later");
	 window.location.href="DocterEdit.jsp";
	 </script><%	
 }
}
catch(Exception el)
{
out.println("Inserting error"+el.getMessage());
}
}
}
catch (Exception e){
out.println(e.getMessage());
}
%>