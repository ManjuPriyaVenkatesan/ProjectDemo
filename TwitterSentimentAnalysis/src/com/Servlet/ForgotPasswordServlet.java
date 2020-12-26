package com.Servlet;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.CheckEmailidBean;
import com.Bean.ForgotPasswordBean;
import com.Bean.UserLoginBean;
import com.Implementation.SentiDiffImplementation;
import com.Interface.SentiDiffInterface;

import javax.mail.*;    
import javax.mail.internet.*;  


/**
 * Servlet implementation class ForgotPasswordServlet
 */
@WebServlet("/ForgotPasswordServlet")
public class ForgotPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
			
		String emailid = request.getParameter("emailid");
		
		// check whether emailid matches with db mail ids
		
		CheckEmailidBean CEB = new CheckEmailidBean();
		CEB.setEmailid(emailid);
		
		SentiDiffInterface SDI1 = new SentiDiffImplementation();
		int i1 = SDI1.CheckEmailid(emailid);
		
		if(i1==1)
		{
			HttpSession session1 = request.getSession();
			session1.setAttribute("emailid", emailid);
			
			String password = request.getParameter("password");
			String confirmpassword = request.getParameter("confirmpassword");
			System.out.println(emailid); 
			System.out.println(password);
			System.out.println(confirmpassword);
			
			if(emailid !=null && !emailid.isEmpty()  && password != null && !password.isEmpty() && confirmpassword!=null && !confirmpassword.isEmpty())
			{
				if(password.equals(confirmpassword))
				{
					System.out.println("password");
					ForgotPasswordBean FPB = new ForgotPasswordBean();
					FPB.setEmailid(emailid);
					FPB.setPassword(password);
					FPB.setConfirmpassword(confirmpassword);
					
					SentiDiffInterface SDI = new SentiDiffImplementation();
					int i = SDI.ForgotPassword(FPB);
					System.out.println("Forgot Password"+ i);
					if(i==1)
					{
						response.sendRedirect("UserLogin.jsp");
					}
					else
					{
						response.sendRedirect("error.jsp");
					}
				}
				else
				{
					response.sendRedirect("error.jsp");
				}
		
			}
			else
			{
				Properties props = new Properties();    
		        props.put("mail.smtp.host", "smtp.gmail.com");    
		        props.put("mail.smtp.socketFactory.port", "465");    
		        props.put("mail.smtp.socketFactory.class",    
		                  "javax.net.ssl.SSLSocketFactory");    
		        props.put("mail.smtp.auth", "true");    
		        props.put("mail.smtp.port", "465");    
		        //get Session   
		        Session session = Session.getDefaultInstance(props,    
		         new javax.mail.Authenticator() {    
		         protected PasswordAuthentication getPasswordAuthentication() {    
		         return new PasswordAuthentication("Original Mail Id","Original Mail Id Password");  
		         }    
		        });    
		        //compose message    
		        try {    
		         MimeMessage message = new MimeMessage(session);    
		         message.addRecipient(Message.RecipientType.TO,new InternetAddress(emailid));    
		         message.setSubject("Reset Password Using the Link ");    
		         message.setText("http://localhost:8080/TwitterSentimentAnalysis/ForgotPasswordUpdate.jsp");    
		         //send message  
		         Transport.send(message);    
		         System.out.println("message sent successfully");    
		         response.sendRedirect("https://accounts.google.com/signin/v2/identifier?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin");
		        } catch (MessagingException e) {throw new RuntimeException(e);
		        }    
		           
			}
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		
		
	}

}
