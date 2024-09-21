package Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/main")
public class Fetch extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // HTML content
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Admin Panel</title>");
        out.println("<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css' rel='stylesheet'>");
        out.println("<style>");
        out.println(".navbar {");
        out.println("    background-color: #007bff;"); // Navbar background color (blue)
        out.println("}");
        out.println(".navbar-brand {");
        out.println("    color: white !important;"); // Navbar brand text color
        out.println("}");
        out.println(".table-container {");
        out.println("    margin-top: 20px;");
        out.println("}");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");

        // Navbar
        out.println("<nav class='navbar navbar-expand-lg navbar-dark'>");
        out.println("<a class='navbar-brand' href='#'>Admin Panel</a>");
        out.println("<button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarNav' aria-controls='navbarNav' aria-expanded='false' aria-label='Toggle navigation'>");
        out.println("<span class='navbar-toggler-icon'></span>");
        out.println("</button>");
        out.println("<div class='collapse navbar-collapse' id='navbarNav'>");
        out.println("<ul class='navbar-nav ml-auto'>");
        out.println("<li class='nav-item'>");
        out.println("<a class='btn btn-danger' href='/Tutor_Coaching/LogoutServlet'>Logout</a>"); // Logout button
        out.println("</li>");
        out.println("</ul>");
        out.println("</div>");
        out.println("</nav>");

        // Container for content
        out.println("<div class='container table-container'>");
        out.println("<h1>Welcome to Admin Panel</h1>");
        out.println("<h2>Records</h2>");

        // Fetch student data and display in a table
        List<Select> studentList = Select.getAllStudents();
        out.println("<table class='table table-bordered'>");
        out.println("<thead class='thead-dark'>");
        out.println("<tr>");
        out.println("<th>First Name</th>");
        out.println("<th>Last Name</th>");
        out.println("<th>Email</th>");
        out.println("<th>Username</th>");
        out.println("<th>Password</th>");
        out.println("<th>Student Type</th>");
        out.println("<th>Action</th>");
        out.println("</tr>");
        out.println("</thead>");
        out.println("<tbody>");

        for (Select student : studentList) {
            out.println("<tr>");
            out.println("<td><input type='text' class='form-control' id='firstName_" + student.getUsername() + "' value='" + student.getFirstName() + "'></td>");
            out.println("<td><input type='text' class='form-control' id='lastName_" + student.getUsername() + "' value='" + student.getLastName() + "'></td>");
            out.println("<td><input type='text' class='form-control' id='email_" + student.getUsername() + "' value='" + student.getEmail() + "'></td>");
            out.println("<td><input type='text' class='form-control' id='username_" + student.getUsername() + "' value='" + student.getUsername() + "'></td>");
            out.println("<td><input type='text' class='form-control' id='password_" + student.getUsername() + "' value='" + student.getPassword() + "'></td>");
            out.println("<td><input type='text' class='form-control' id='studentType_" + student.getUsername() + "' value='" + student.getStudentType() + "'></td>");
            out.println("<td>");
            out.println("<button class='btn btn-primary mr-2' onclick='updateStudent(\"" + student.getUsername() + "\")'>Update</button>");
            out.println("<button class='btn btn-danger' onclick='deleteStudent(\"" + student.getUsername() + "\")'>Delete</button>");
            out.println("</td>");
            out.println("</tr>");
        }

        out.println("</tbody>");
        out.println("</table>");
        out.println("</div>");

        // JavaScript functions for update and delete actions
        out.println("<script>");
        out.println("function updateStudent(username) {");
        out.println("  var firstName = document.getElementById('firstName_' + username).value;");
        out.println("  var lastName = document.getElementById('lastName_' + username).value;");
        out.println("  var email = document.getElementById('email_' + username).value;");
        out.println("  var usernameValue = document.getElementById('username_' + username).value;");
        out.println("  var password = document.getElementById('password_' + username).value;");
        out.println("  var studentType = document.getElementById('studentType_' + username).value;");
        out.println("  var xhr = new XMLHttpRequest();");
        out.println("  xhr.onreadystatechange = function() {");
        out.println("    if (xhr.readyState == 4) {");
        out.println("      if (xhr.status == 200) {");
        out.println("        alert(xhr.responseText);"); // Display response message
        out.println("      } else {");
        out.println("        alert('Error updating user: ' + xhr.statusText);"); // Display error message
        out.println("      }");
        out.println("    }");
        out.println("  };");
        out.println("  xhr.open('POST', '/Tutor_Coaching/updateuser', true);");
        out.println("  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');");
        out.println("  var requestData = 'username=' + usernameValue +");
        out.println("                     '&firstName=' + encodeURIComponent(firstName) +");
        out.println("                     '&lastName=' + encodeURIComponent(lastName) +");
        out.println("                     '&email=' + encodeURIComponent(email) +");
        out.println("                     '&password=' + encodeURIComponent(password) +");
        out.println("                     '&studentType=' + encodeURIComponent(studentType);");
        out.println("  xhr.send(requestData);");
        out.println("}");

        out.println("function deleteStudent(username) {");
        out.println("  var xhr = new XMLHttpRequest();");
        out.println("  xhr.onreadystatechange = function() {");
        out.println("    if (xhr.readyState == 4) {");
        out.println("      if (xhr.status == 200) {");
        out.println("        alert('User deleted successfully');");
        out.println("        location.reload();");
        out.println("      } else {");
        out.println("        alert('Error deleting user');");
        out.println("      }");
        out.println("    }");
        out.println("  };");
        out.println("  xhr.open('POST', '/Tutor_Coaching/deleteUser', true);");
        out.println("  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');");
        out.println("  xhr.send('username=' + username);");
        out.println("}");
        out.println("</script>");

        out.println("</body>");
        out.println("</html>");
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
