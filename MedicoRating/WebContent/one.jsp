<%@ pageimport="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%
 
    //username for abc@gmail.com will be "abc"
    String username = "inform204@gmail.com";
    String password = "angrybird_akash";
    String result = null;
 
    try {
         
        Properties props = System.getProperties();
        props.setProperty("mail.transport.protocol", "smtp");
        props.setProperty("mail.host", "smtp.gmail.com");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");
        props.put("mail.debug", "true");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.fallback", "false");
 
        Session emailSession = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("inform204","angrybird_akash");
                }
        });
 
        emailSession.setDebug(true);
        Message message = new MimeMessage(emailSession);
        message.setFrom(new InternetAddress("inform204@gmail.com"));
        message.setRecipients(Message.RecipientType.TO,
                InternetAddress.parse("java.akashsharma@gmail.com"));
        message.setSubject("Test mail from Java");
        message.setText("Hello. this is a test");
 
        Transport transport = emailSession.getTransport("smtps");
        transport.connect("smtp.gmail.com", username, password);
        transport.sendMessage(message, message.getAllRecipients());
 
        result = "Successfully sent email";
 
       } catch (MessagingException e) {
        result = "Unable to send email"+e;
    }
%>
<html>
<head>
<title>Send Email using JSP</title>
</head>
<body>
    <center>
        <h1>Send Email using JSP</h1>
    </center>
    <p align="center">
        <%
            out.println("Result: " + result + "\n");
        %>
    </p>
</body>
</html>