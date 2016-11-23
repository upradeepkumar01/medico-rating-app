package five;
import java.util.Properties;


import javax.mail.*;
import javax.mail.internet.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class Mailme {
	String pwd;
	String outp="";
	 public void test(String email,String password) {

 String to=email;//change accordingly
 String pwd=password;

//Get the session object
  Properties props = new Properties();
  props.put("mail.smtp.host", "smtp.gmail.com");
  props.put("mail.smtp.socketFactory.port","587");
  props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
  props.put("mail.smtp.auth", "true");
  props.put("mail.smtp.port", "587");
 
  Session session = Session.getDefaultInstance(props,
   new javax.mail.Authenticator() {
   protected PasswordAuthentication getPasswordAuthentication() {
   return new PasswordAuthentication("medicorating@gmail.com","Pradeep@123");//change accordingly
   }
  });
 
//compose message
  try {
   MimeMessage message = new MimeMessage(session);
   message.setFrom(new InternetAddress("medicorating@gmail.com"));//change accordingly
   message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
   message.setSubject("Hello");
   message.setText("Your password is "+pwd+" \nRegards,\nMedicoRating.");
   
   //send message
   Transport.send(message);

   System.out.println("message sent successfully");
 
  } catch (MessagingException e) {throw new RuntimeException(e);}
 
 }
 public void test1(String email) {

 String to=email;//change accordingly

//Get the session object
  Properties props = new Properties();
  props.put("mail.smtp.host", "smtp.gmail.com");
  props.put("mail.smtp.socketFactory.port", "587");
  props.put("mail.smtp.socketFactory.class",
        	"javax.net.ssl.SSLSocketFactory");
  props.put("mail.smtp.auth", "true");
  props.put("mail.smtp.port", "587");
 
  Session session = Session.getDefaultInstance(props,
   new javax.mail.Authenticator() {
   protected PasswordAuthentication getPasswordAuthentication() {
   return new PasswordAuthentication("medicorating@gmail.com","Pradeep@123");//change accordingly
   }
  });
 
//compose message
  try {
   MimeMessage message = new MimeMessage(session);
   message.setFrom(new InternetAddress("medicorating@gmail.com"));//change accordingly
   message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
   message.setSubject("Hello");
   message.setText("Thanks for registration.\nClick on below link to complete your registration.\nhttp://localhost:8080/MedicoRating/registeruser.jsp \nRegards,\nMedicoRating.");
   
   //send message
   Transport.send(message);

   System.out.println("message sent successfully");
 
  } catch (MessagingException e) {throw new RuntimeException(e);}
 
 }

 public String test12(String email)
	{
		try{
			
		String s=email;
	 Class.forName("com.mysql.jdbc.Driver");
	 java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medico", "root","root");
	PreparedStatement ps=con.prepareStatement("select * from comments where  docter=?");
	ps.setString(1,s);
	ResultSet rs=ps.executeQuery();
	System.out.println("one");
	outp="";
	while(rs.next())
	{
		String comm=rs.getString("commenter");
		String mes=rs.getString("comments");
		String star=rs.getString("star");
		String last=star+comm+":  "+mes+"*";
		System.out.println("inside---"+last);
	
		outp=outp+last;
		System.out.println("outp----"+outp);
	}
	
		}

	catch(Exception e)
	{
		System.out.println("prob  "+e);
		}
		return outp;
}
 public String test123(String user,String docter )
	{
		try{
			
		String s=user;
		String s1=docter;
		
	 Class.forName("com.mysql.jdbc.Driver");
	 java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medico", "root","root");
	PreparedStatement ps=con.prepareStatement("select * from comments where  docter=? and commenter=?");
	ps.setString(1,s1);
	ps.setString(2,s);
	ResultSet rs=ps.executeQuery();
	System.out.println("one");
	outp="";
	while(rs.next())
	{
		String comm=rs.getString("commenter");
		String mes=rs.getString("comments");
		String star=rs.getString("star");
		String last=star+comm+":  "+mes+"*";
		System.out.println("inside---"+last);
	
		outp=outp+last;
		System.out.println("outp----"+outp);
	}
	
		}

	catch(Exception e)
	{
		System.out.println("prob  "+e);
		}
		return outp;
}
}