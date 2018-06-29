package com.njit.edu.util;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
	
	//用户基本信息
	private static String host = "smtp.163.com"; 
	private static String from =  "202070204@163.com"; 
	private static String UserName = "202070204"; 
	private static String Password = "86715650"; 
//	private static String host = "smtp.sina.com.cn"; 
//	private static String from =  "lhb3278@sina.com"; 
//	private static String UserName = "lhb3278"; 
//	private static String Password = "19890627"; 
    
	/**
	 * 发送邮件
	 * @param mailname
	 * 用户提交的邮箱名
	 * @param username
	 * 用户名
	 * @param password
	 * 密码
	 * @return
	 * 是否发送成功的标识
	 */
	public boolean sendMail(String mailname, String username, String password){

        // Get system properties 
        // Properties props = System.getProperties(); 很多例子中是这样的，其实下面这句更好，可以用在applet中 
        Properties props = new Properties(); 

        // Setup mail server 
        props.put("mail.smtp.host", host); 
        props.put("mail.smtp.auth", "true"); //这样才能通过验证 

        // Get session 
        Session session = Session.getDefaultInstance(props); 

        // watch the mail commands go by to the mail server 
        session.setDebug(true); 

        // Define message 
        MimeMessage message = new MimeMessage(session); 
        Transport transport;
        try {
			message.setFrom(new InternetAddress(from));
			message.addRecipient(Message.RecipientType.TO, 
					new InternetAddress(mailname));
			message.setSubject("《计算机导论》学习网站-用户找回密码");
			message.setText("用户"+username+"的密码为："+password+"!"); 
			message.saveChanges(); 
		
			// Send message 
			transport = session.getTransport("smtp");
			transport.connect(host, UserName, Password); 
			transport.sendMessage(message, message.getAllRecipients()); 
			transport.close(); 
			System.out.println("--------------------success----------------");
			return true;
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		} catch(Exception e){
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
}
