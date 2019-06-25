/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package algorithm;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
/*import javax.mail.internet.InternetAddress;*/
import javax.mail.internet.MimeMessage;


public class UserMail2 {

    public static boolean secretMail2(String downloadkey,String email) {
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");
       
        Session session = Session.getDefaultInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                 
                    	return new PasswordAuthentication("cloudminds19@gmail.com", "cloudserver19");
                    }
                });
        System.out.println("Message   " + downloadkey);
      
        try {
      	  System.out.println("Message");
          Message message = new MimeMessage(session);
          message.setFrom(new InternetAddress("cloudminds19@gmail.com"));
          System.out.println("Message1");
          message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
         
         
          System.out.println("Message2");
          message.setSubject("downloadkey");
        
  
          message.setText("download Key : "+downloadkey);
          Transport.send(message);

        System.out.println("Done");
          return true;

      } catch (MessagingException e) {
          System.out.println(e);
          e.printStackTrace();
          return false;
        
      }
  }
}



	
