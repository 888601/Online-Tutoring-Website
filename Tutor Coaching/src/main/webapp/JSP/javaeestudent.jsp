<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.File" %>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="icon" type="image/x-icon" href="/Tutor_Coaching/Images/favicon.ico">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Full Stack Java EE</title>
   
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
    <link rel="stylesheet" href= "../styles/NewFile.css">
    <style>
  ul {
    list-style-type: none;
    padding: 0;
  }
  ul li:before {
    content: "\2022"; /* Unicode for bullet point character */
    color: #FF0000; /* Change bullet point color if needed */
    font-size: 1.5em; /* Adjust bullet point size if needed */
    margin-right: 0.5em; /* Adjust spacing between bullet point and text if needed */
  }
</style>
</head>
<body>
    <header class="bg-dark text-light py-3">
        <div class="container d-flex justify-content-between align-items-center">
            <h1 class="m-0">Full Stack Java EE</h1>
            <div>
                <a href="student.jsp" style="text-decoration:none;" class="text-light">Home</a>
                <div class="dropdown d-inline-block">
                    <button class="btn btn-dark dropdown-toggle" type="button" id="courseDropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        My Courses
                    </button>
                    <div class="dropdown-menu" aria-labelledby="courseDropdown">
                    
                        <a class="dropdown-item" href="cloudstudent.jsp">Cloud Computing</a>
                        <a class="dropdown-item" href="devopsstudent.jsp">Devops</a>
                        
                    </div>
                </div>
                <div class="dropdown d-inline-block">
                    <button class="btn btn-dark dropdown-toggle" type="button" id="accountDropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-user"></i>
                    </button>
                    <div class="dropdown-menu" aria-labelledby="accountDropdown">
                    &nbsp;  &nbsp;   Hi <%= session.getAttribute("firstName") %>
                        
                        <a class="dropdown-item" href="/Tutor_Coaching/HTML/calendar.html">Calendar</a>
                         <form action="/Tutor_Coaching/LogoutServlet" method="post">
    <input type="submit" class="dropdown-item" value="Logout">
</form>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <main class="p-4">
        <div class="container">
            <img src="/Tutor_Coaching/Images/a.png" alt="Full Stack JavaScript" class="course-image">
            <h2>Welcome to Full Stack Java EE Course</h2>
            
            <!-- Student Evaluation -->
            <div class="evaluation-container">
                <h3>Student Evaluation</h3>
                <p>Assignment - 25%<br>Test - 75%<br></p>
            </div>
            </div>
            
            <!-- Announcement and Attendance -->
          <div class="row">
    <div class="col-md-6">
        <div class="announcement-container">
            <h3 class="announcement-heading"><span class="announcement-icon"><i class="fas fa-bullhorn"></i></span> <a href="#">Announcement</a></h3>
            <!-- Announcement content goes here -->
        </div>
    </div>
    <div class="col-md-6">
        <div class="attendance-container">
            <h3 class="attendance-heading"><span class="attendance-icon"><i class="fas fa-user-check"></i></span> Attendance</h3>
            <button class="attendance-button" onclick="toggleAttendance(this)">Mark Attendance</button>
        </div>
    </div>
</div>
            
            <!-- Course Outline and Teaching Plan -->
<div class="row">
    <div class="col-md-6">
        <div class="section-container">
            <h3>Course Outline</h3>
            <a href="/Tutor_Coaching/Details/java.pdf" class="download-link">Download Course Outline PDF</a>
        </div>
    </div>
    <div class="col-md-6">
        <div class="section-container">
            <h3>Teaching Plan</h3>
            <a href="/Tutor_Coaching/Details/java.xlsx" class="download-link">Download Teaching Plan PDF</a>
        </div>
    </div>
</div>
            
            
            <!-- Virtual Live Class Join -->
            <div class="section-container">
                <h3>Virtual Live Class Join</h3>
                <button class="btn btn-primary" onclick="joinLiveClass()">Join Live Class</button>
            </div>
            <% String courseName = request.getParameter("courseName"); %>
    <% if (courseName == null || courseName.isEmpty()) {
           courseName = "JavaEE"; // Default course name
       }
    %>
    
    <%-- Loop through weeks 1 to 14 --%>
    <% for (int week = 1; week <= 14; week++) {
           String weekDirectory = "Uploads/" + courseName + "/week" + week;
           String absolutePath = application.getRealPath(weekDirectory);

           // Check if the week directory exists
           File weekDir = new File(absolutePath);
           if (weekDir.exists() && weekDir.isDirectory()) {
               File[] weekFiles = weekDir.listFiles();

               // Display files for the current week if any files exist
               if (weekFiles != null && weekFiles.length > 0) {
    %>
                   <div class="section-container">
                       <h2>Week <%= week %> Content</h2>
                       <ul>
                       <%-- Iterate through files in the week directory --%>
                       <% for (File file : weekFiles) {
                              String fileName = file.getName();
                              String filePath = weekDirectory + "/" + fileName;
                       %>
                           <li><a href="<%= filePath %>" download="<%= fileName %>"><%= fileName %></a></li>
                       <% } %>
                       </ul>
                   </div>
    <% 
               }
           }
       }
    %>
            
            
          
      
    </main>

    <!-- Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        function toggleAttendance(button) {
            button.classList.toggle("green");
            button.innerText = button.classList.contains("green") ? "Attendance Marked" : "Mark Attendance";
        }
        
        function joinLiveClass() {
            // Redirect to the Zoom live class link
            window.location.href = "https://zoom.us/";
        }
    </script>
</body>
</html>
