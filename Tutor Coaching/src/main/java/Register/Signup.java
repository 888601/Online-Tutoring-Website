package Register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegistrationServlet")
public class Signup extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Connection con = null;
        PreparedStatement ps = null;
        PrintWriter pw = response.getWriter();

        try {
            Class.forName("org.sqlite.JDBC");
            con = DriverManager.getConnection("jdbc:sqlite:C://Users//dell//OneDrive//Desktop//subhash.db");

            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            // Check if the username or email already exists in the database
            if (isUsernameExists(con, username)) {
                pw.println("<!DOCTYPE html>");
                pw.println("<html>");
                pw.println("<head>");
                pw.println("<title>Registration Failed</title>");
                pw.println("<script>");
                pw.println("alert('Registration failed. Username already exists. Please choose a different username.');");
                pw.println("window.history.back();"); // Go back to the previous page
                pw.println("</script>");
                pw.println("</head>");
                pw.println("<body>");
                pw.println("</body>");
                pw.println("</html>");
                return; // Stop further execution
            }

            if (isEmailExists(con, email)) {
                pw.println("<!DOCTYPE html>");
                pw.println("<html>");
                pw.println("<head>");
                pw.println("<title>Registration Failed</title>");
                pw.println("<script>");
                pw.println("alert('Registration failed. Email already exists. Please use a different email address.');");
                pw.println("window.history.back();"); // Go back to the previous page
                pw.println("</script>");
                pw.println("</head>");
                pw.println("<body>");
                pw.println("</body>");
                pw.println("</html>");
                return; // Stop further execution
            }

            String userType = "student"; // Default user type (can be adjusted as needed)

            ps = con.prepareStatement("INSERT INTO students (first_name, last_name, username, email, password, type) VALUES (?, ?, ?, ?, ?, ?)");
            ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setString(3, username);
            ps.setString(4, email);
            ps.setString(5, password);
            ps.setString(6, userType);

            int rowsInserted = ps.executeUpdate();
            if (rowsInserted > 0) {
                pw.println("<!DOCTYPE html>");
                pw.println("<html>");
                pw.println("<head>");
                pw.println("<title>Registration Successful</title>");
                pw.println("<style>");
                pw.println("body {");
                pw.println("    font-family: Arial, sans-serif;");
                pw.println("    background-color: #f5f5f5;");
                pw.println("    text-align: center;");
                pw.println("}");
                pw.println(".message {");
                pw.println("    background-color: #4CAF50;");
                pw.println("    color: white;");
                pw.println("    padding: 20px;");
                pw.println("    margin: 20px;");
                pw.println("}");
                pw.println("</style>");
                pw.println("</head>");
                pw.println("<body>");
                pw.println("<div class='message'>");
                pw.println("<h2>Registration Successful!</h2>");
                pw.println("<p>Welcome, " + firstName + "! You have been registered as a student.</p>");
                pw.println("</div>");
                pw.println("<a href='/Tutor_Coaching/JSP/beforelogin.jsp' style='text-decoration: none;'>Login</a>");
                pw.println("</body>");
                pw.println("</html>");
            } else {
                throw new SQLException("Registration failed. Please try again.");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            pw.println("<!DOCTYPE html>");
            pw.println("<html>");
            pw.println("<head>");
            pw.println("<title>Registration Failed</title>");
            pw.println("</head>");
            pw.println("<body>");
            pw.println("<h2>Registration failed. Please try again later.</h2>");
            pw.println("</body>");
            pw.println("</html>");
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // Helper method to check if a username already exists in the database
    private boolean isUsernameExists(Connection con, String username) throws SQLException {
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = con.prepareStatement("SELECT COUNT(*) FROM students WHERE username = ?");
            ps.setString(1, username);
            rs = ps.executeQuery();
            if (rs.next()) {
                int count = rs.getInt(1);
                return count > 0; // Return true if count > 0 (username exists)
            }
            return false;
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
        }
    }

    // Helper method to check if an email already exists in the database
    private boolean isEmailExists(Connection con, String email) throws SQLException {
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = con.prepareStatement("SELECT COUNT(*) FROM students WHERE email = ?");
            ps.setString(1, email);
            rs = ps.executeQuery();
            if (rs.next()) {
                int count = rs.getInt(1);
                return count > 0; // Return true if count > 0 (email exists)
            }
            return false;
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
        }
    }
}
