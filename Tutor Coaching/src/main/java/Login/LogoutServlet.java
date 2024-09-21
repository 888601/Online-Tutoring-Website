package Login;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    private static final Logger logger = Logger.getLogger(LogoutServlet.class.getName());

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        // Get the current session associated with the request, if it exists
        HttpSession session = request.getSession(false);

        if (session != null) {
            // Invalidate (i.e., destroy) the session
            session.invalidate();
            
            // Log a message to the console indicating that the session has been destroyed
            logger.log(Level.INFO, "Session has been destroyed.");
        } else {
            // Log a message if no session was found
            logger.log(Level.WARNING, "No session found to destroy.");
        }

        // Redirect the user to a login or home page after logout
        response.sendRedirect(request.getContextPath() + "/JSP/beforelogin.jsp");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    
}
