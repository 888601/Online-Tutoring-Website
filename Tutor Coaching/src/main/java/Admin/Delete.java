package Admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.annotation.WebServlet;

@WebServlet("/deleteUser")
public class Delete extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String JDBC_URL = "jdbc:sqlite:C://Users//dell//OneDrive//Desktop//subhash.db";
 

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");

        try {
            // Load the MySQL JDBC driver
            Class.forName("org.sqlite.JDBC");

            // Connect to the database
            Connection conn = DriverManager.getConnection(JDBC_URL);

            // Prepare the SQL statement
            String sql = "DELETE FROM students WHERE username = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1,username);

            // Execute the delete operation
            int rowsDeleted = statement.executeUpdate();

            // Close connections
            statement.close();
            conn.close();

            if (rowsDeleted > 0) {
                // Deletion successful
                response.getWriter().write("User deleted successfully");
            } else {
                // No rows deleted
                response.getWriter().write("No user found with the specified ID");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.getWriter().write("An error occurred while deleting the user");
        }
    }
}