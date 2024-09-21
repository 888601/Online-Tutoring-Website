package Login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet
{private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        PrintWriter pw = null;

        try {
            pw = response.getWriter();
            Class.forName("org.sqlite.JDBC");
            con = DriverManager.getConnection("jdbc:sqlite:C://Users//dell//OneDrive//Desktop//subhash.db");

            String username = request.getParameter("username");
            String password = request.getParameter("password");
            ps = con.prepareStatement("SELECT first_name, username, email, type FROM students WHERE username=? AND password=?");

            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();

            if (rs.next()) {
                String userType = rs.getString("type");
                String firstName = rs.getString("first_name");
                String email = rs.getString("email");

                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                session.setAttribute("firstName", firstName);
                session.setAttribute("userType", userType);

                if ("student".equals(userType)) {
                    session.setAttribute("student", true);
                    RequestDispatcher rd = request.getRequestDispatcher("/JSP/student.jsp");
                    rd.forward(request, response);
                } else if ("teacher".equals(userType)) {
                    session.setAttribute("teacher", true);
                    session.setAttribute("email", email);
                    RequestDispatcher rd = request.getRequestDispatcher("/JSP/Teacher.jsp");
                    rd.forward(request, response);
                    
                }
                else if ("admin".equals(userType)) {
                    session.setAttribute("admin", true);
                    session.setAttribute("email", email);
                    RequestDispatcher rd = request.getRequestDispatcher("/main");
                    rd.forward(request, response);
                    
                }
                
            } else {
                response.setContentType("text/html");
                pw.println("<html>");
                pw.println("<head><title>Login Failed</title></head>");
                pw.println("<body>");

                pw.println("<script>");
                pw.println("  alert('Login failed. Please try again.');");
                pw.println("  window.location = '/Tutor_Coaching/JSP/beforelogin.jsp';");
                pw.println("</script>");

                pw.println("</body>");
                pw.println("</html>");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.setContentType("text/html");
            pw = response.getWriter();
            pw.println("<font color=red>An error occurred while processing your request. Please try again later.</font>");
        } finally {
            if (pw != null) {
                pw.close(); // Close PrintWriter only once in the finally block
            }
            try {
                if (rs != null) {
                    rs.close();
                }
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
}
