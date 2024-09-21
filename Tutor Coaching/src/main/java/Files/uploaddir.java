package Files;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/FileUploadServlet")
@MultipartConfig
public class uploaddir extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the week number and course page from the request parameters
        String courseName = request.getParameter("courseName");
        String weekNumber = request.getParameter("weekNumber");

        // Validate weekNumber parameter
        if (weekNumber == null || weekNumber.isEmpty()) {
            throw new ServletException("Week number is required.");
        }

        // Determine the directory based on the week number and course page
        String directoryPath = "Uploads/" + courseName + "/week" + weekNumber;

        // Update the directory path
        String absolutePath = getServletContext().getRealPath(directoryPath);

        // Check if the directory exists; if not, create it
        File directory = new File(absolutePath);
        if (!directory.exists()) {
            directory.mkdirs(); // Create the directory and any necessary parent directories
        }

        // Part is from jakarta.servlet.http, so there's no ambiguity
        Part filePart = request.getPart("contentFile");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        String filePath = absolutePath + File.separator + fileName;
        filePart.write(filePath);

        // Message to display after successful upload
        String message = "File uploaded successfully.";

        // Set the message in the response output
        response.setContentType("text/html");
        response.getWriter().println("<html>");
        response.getWriter().println("<head>");
        response.getWriter().println("<title>File Upload Status</title>");
        response.getWriter().println("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">");
        response.getWriter().println("<link rel=\"stylesheet\" href=\"/Tutor_Coaching/styles/Contact.css\">");
        response.getWriter().println("<link rel=\"stylesheet\" href=\"/Tutor_Coaching/styles/NewFile.css\">");
        response.getWriter().println("</head>");
        response.getWriter().println("<body>");

        // Navbar section
        response.getWriter().println("<header class=\"bg-dark text-light py-3\">");
        response.getWriter().println("<div class=\"container d-flex justify-content-between align-items-center\">");
        response.getWriter().println("<h1 class=\"m-0\">Teacher Dashboard</h1>");
        response.getWriter().println("<div>");
        response.getWriter().println("<a href='/Tutor_Coaching/JSP/Teacher.jsp' class=\"text-light\">Home</a>");
       
        response.getWriter().println("<div class=\"dropdown d-inline-block\">");
        response.getWriter().println("<button class=\"btn btn-dark dropdown-toggle\" type=\"button\" id=\"accountDropdown\" data-bs-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"><i class=\"fas fa-user\"></i></button>");
        response.getWriter().println("<div class='dropdown-menu' aria-labelledby='accountDropdown'>");
        response.getWriter().println("<a class='dropdown-item' href='#'>Profile</a>");
        
        response.getWriter().println("<form action='/Tutor_Coaching/LogoutServlet' method='post'>");
        response.getWriter().println("<input type='submit' class='dropdown-item' value='Logout'>");
        response.getWriter().println("</form>");
        response.getWriter().println("</div>");
        response.getWriter().println("</div>");
        response.getWriter().println("</div>");
        response.getWriter().println("</div>");
        response.getWriter().println("</header>");

        // Message container
        response.getWriter().println("<div class='container mt-5'>");
        response.getWriter().println("<div class='message-container'>");
        response.getWriter().println("<h1>File Upload Status</h1>");
        response.getWriter().println("<p>" + message + "</p>");
        response.getWriter().println("</div>");
        response.getWriter().println("</div>");
        response.getWriter().println("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>");
        response.getWriter().println("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>");
        response.getWriter().println("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js\"></script>");
        response.getWriter().println("</body>");
        response.getWriter().println("</html>");
    }
}