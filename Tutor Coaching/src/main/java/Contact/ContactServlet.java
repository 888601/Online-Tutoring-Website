package Contact;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data from request parameters
        String yourName = request.getParameter("your-name");
        String yourSurname = request.getParameter("your-surname");
        String yourEmail = request.getParameter("your-email");
        String yourSubject = request.getParameter("your-subject");
        String yourMessage = request.getParameter("your-message");

        // Set up JavaMail properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp-relay.brevo.com");
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        // Set up the session
        Session session = Session.getInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("", "");
            }
        });

        try {
            // Create a MimeMessage object
            Message message = new MimeMessage(session);

            // Set the sender and recipient addresses
            message.setFrom(new InternetAddress(""));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(""));

            // Set the email subject and content
            message.setSubject("New Form Submission");
            message.setText("Name: " + yourName + "\nSurname: " + yourSurname + "\nEmail: " + yourEmail
                    + "\nSubject: " + yourSubject + "\nMessage: " + yourMessage);

            // Send the message
            Transport.send(message);

            // Set response content type
            response.setContentType("text/html;charset=UTF-8");

         // Get a PrintWriter to send HTML response
         PrintWriter out = response.getWriter();

         // Write HTML response with CSS and message content
         out.println("<html>");
         out.println("<head>");
         out.println("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css\">");
         out.println(" <link href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\" rel=\"stylesheet\">");
         out.println("<title>Contact Form Submission</title>");
         out.println("<link rel='stylesheet' href='/Tutor_Coaching/styles/Contact.css'>"); // Link to external CSS file
         
         out.println("</head>");
         out.println("<body>");

         // Navbar
         out.println("<div class='header'>");
         out.println("<div class='logo-container'>");
         out.println("<img src= '/Tutor_Coaching/Images/Coaching.png' class='navbar-logo'>");
         out.println("</div>");
         out.println("<nav class='navbar'>");
         out.println("<ul class='menu'>");
         out.println("<li>");         
         out.println("<a href='/Tutor_Coaching/HTML/Index.html'>Home</a>");
         out.println("</li>"); 
         out.println("<li>");   
         out.println("<a href='#'>About Us</a>");
         out.println("</li>");
         out.println("<li>");   
         out.println("<a href='/Tutor_Coaching/HTML/contactus.html'>Contact Us</a>");
         out.println("</li>");   
         out.println("<li>"); 
         out.println("<a href='/Tutor_Coaching/JSP/beforelogin.jsp'>Sign in</a>");
         out.println("</li>"); 
         out.println("</ul>");
         out.println("</nav>"); 
         out.println("</div>");
         // Thank you message container with CSS styles
         out.println("<div class='message-container'>");
         out.println("<h2>Thank you for contacting us!</h2>");
         out.println("<p>We will get back to you as soon as possible.</p>");
         out.println("</div>");

         out.println("</body>");
         out.println("</html>");
        } catch (MessagingException e) {
            // Handle the exception, redirect to an error page, or display an error message
            e.printStackTrace();
            response.sendRedirect("error.html");
        }
    }
}

