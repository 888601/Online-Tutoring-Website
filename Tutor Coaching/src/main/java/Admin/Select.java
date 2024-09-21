package Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Select {

    private String firstName;
    private String lastName;
    private String email;
    private String studentType;
    private String username;
    private String password;

    public Select (String lastName, String firstName, String email, String studentType, String username, String password) {
        this.lastName = lastName;
        this.firstName = firstName;
        this.email = email;
        this.studentType = studentType;
        this.username = username;
        this.password = password;
    }

    // Getters and Setters

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStudentType() {
        return studentType;
    }

    public void setStudentType(String studentType) {
        this.studentType = studentType;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    // Method to fetch all users from the database
    public static List<Select> getAllStudents() {
        List<Select> studentList = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
        	try {
				Class.forName("org.sqlite.JDBC");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

        
            conn = DriverManager.getConnection("jdbc:sqlite:C://Users//dell//OneDrive//Desktop//subhash.db");

            
            stmt = conn.prepareStatement("SELECT last_name, first_name, email, type, username, password FROM students");
            rs = stmt.executeQuery();

            // Process the result set
            while (rs.next()) {
            	String lastName = rs.getString("last_name");
                String firstName = rs.getString("first_name");
                String email = rs.getString("email");
                String studentType = rs.getString("type");
                String username = rs.getString("username");
                String password = rs.getString("password");
                studentList.add(new Select(lastName, firstName, email, studentType, username, password));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close connections and resources
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return studentList;
    }
}