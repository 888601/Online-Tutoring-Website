<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="icon" type="image/x-icon" href="/Tutor_Coaching/Images/favicon.ico">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tutoring Website</title>
   
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
    <style>
        
        
    
        .icon {
            font-size: 40px;
            margin-bottom: 10px;
        }
        .icon i {
            color: #007bff; /* Change icon color to blue */
        }
         .course-image {
        max-width: 100%;
        height: auto;
    }
    
    
        .professor-image {
            max-width: 100%;
            height: 20%;
            width: 50px; /* Set a fixed width for the professor images */
            height: 20%; 
            border-radius: 50%;/* Ensure aspect ratio is maintained */
        }
        
    </style>
</head>
<body>
    <header class="bg-dark text-light py-3">
        <div class="container d-flex justify-content-between align-items-center">
            <h1 class="m-0">Lets Get Started</h1>
            <div>
                <a href="#" style="text-decoration:none;" class="text-light">Home</a>
                <div class="dropdown d-inline-block">
                    <button class="btn btn-dark dropdown-toggle" type="button" id="courseDropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        My Courses
                    </button>
                    <div class="dropdown-menu" aria-labelledby="courseDropdown">
                    
                        <a class="dropdown-item" href="/Tutor_Coaching/JSP/javaeestudent.jsp">Full Stack Java EE</a>
                        <a class="dropdown-item" href="/Tutor_Coaching/JSP/devopsstudent.jsp">Devops</a>
                        <a class="dropdown-item" href="/Tutor_Coaching/JSP/cloudstudent.jsp"> Cloud Computing</a>
                    </div>
                </div>
                <div class="dropdown d-inline-block">
                    <button class="btn btn-dark dropdown-toggle" type="button" id="accountDropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-user"></i>
                    </button>
                    <div class="dropdown-menu" aria-labelledby="accountDropdown"> &nbsp;  &nbsp;  HI  <%= session.getAttribute("firstName") %>
                        
                          <a class="dropdown-item" href="/Tutor_Coaching/HTML/calendar.html">Calendar</a>
                       <form action="/Tutor_Coaching/LogoutServlet" method="post">
    <input type="submit" class="dropdown-item" value="Logout">
</form>
                       
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
        <div class="offcanvas-header">
            <h5 id="offcanvasRightLabel">Upcoming Classes & Assignments</h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <ul>
                <li>Class 1 (DevOps): Saturday, 10:00 AM</li>
                <li>Class 2 (Java EE): Saturday, 2:00 PM</li>
                <li>Class 3 (Cloud Computing): Sunday, 4:00 PM</li>
            
            </ul>
        </div>
    </div>

    <main class="p-4">
        <div class="container">
            <h2>Hi, <%= session.getAttribute("firstName") %>! <i class="far fa-hand-paper"></i></h2>
            <div class="row">
                <div class="col">
                    <div class="card text-center">
                        <div class="card-body">
                            <div class="icon"><i class="fas fa-book"></i></div>
                            <h5 class="card-title">Courses Enrolled</h5>
                            <p class="card-text">3</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card text-center">
                        <div class="card-body">
                            <div class="icon"><i class="fas fa-graduation-cap"></i></div>
                            <h5 class="card-title">Courses Completed</h5>
                            <p class="card-text">0</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card text-center">
                        <div class="card-body">
                            <div class="icon"><i class="fas fa-tasks"></i></div>
                            <h5 class="card-title">Assignments Due</h5>
                            <p class="card-text">0</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card text-center">
                        <div class="card-body">
                            <div class="icon"><i class="fas fa-check-circle"></i></div>
                            <h5 class="card-title">Assignments Completed</h5>
                            <p class="card-text">0</p>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <br>
       <div class = "row">
 <!-- Full Stack Java EE -->
<div class="col">
    <div class="card text-center">
        <div class="card-body">
            <img src="/Tutor_Coaching/Images/java.png" alt="Full Stack Java EE" class="course-image">
            <h5 class="card-title">Full Stack Java EE</h5>
            <p class="card-text">Taught by Professor John Doe <img src="/Tutor_Coaching/Images/1.jpg" alt="Professor" class="professor-image"></p>
            <div class="progress">
                <div class="progress-bar" role="progressbar" style="width: 1%;" aria-valuenow="1" aria-valuemin="0" aria-valuemax="100">1%</div>
            </div>
            <a href="/Tutor_Coaching/JSP/javaeestudent.jsp" class="btn btn-primary mt-2">View Course</a>
        </div>
    </div>
</div> 

<!-- Cloud Computing -->
<div class="col">
    <div class="card text-center">
        <div class="card-body">
            <img src="/Tutor_Coaching/Images/cloud.jpg" alt="Cloud Computing" class="course-image">
            <h5 class="card-title">Cloud Computing</h5>
            <p class="card-text">Taught by Professor Jane Smith <img src="/Tutor_Coaching/Images/2.jpg" alt="Professor" class="professor-image"></p>
            <div class="progress">
                <div class="progress-bar" role="progressbar" style="width: 1%;" aria-valuenow="1" aria-valuemin="0" aria-valuemax="100">1%</div>
            </div>
            <a href="/Tutor_Coaching/JSP/cloudstudent.jsp" class="btn btn-primary mt-2">View Course</a>
        </div>
    </div>
</div>

<!-- Devops -->
<div class="col">
    <div class="card text-center">
        <div class="card-body">
            <img src="/Tutor_Coaching/Images/devops.jpg" alt="Devops" class="course-image">
            <h5 class="card-title">Devops</h5>
            <p class="card-text">Taught by Professor Jane Smith <img src="/Tutor_Coaching/Images/3.jpg" alt="Professor" class="professor-image"></p>
            <div class="progress">
                <div class="progress-bar" role="progressbar" style="width: 1%;" aria-valuenow="1" aria-valuemin="0" aria-valuemax="100">1%</div>
            </div>
            <a href="/Tutor_Coaching/JSP/devopsstudent.jsp" class="btn btn-primary mt-2">View Course</a>
        </div>
    </div>
</div>
</div>
            <div>
            <a href="#" id="toggleSidebar" class="position-fixed" style="top: 50%; right: 10px; font-size: 24px;"><i class="fas fa-chevron-left"></i></a>
        
        </div>
        
    </main>

    <!-- Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- JavaScript to toggle sidebar -->
    <script>
    
        $(document).ready(function(){
            $('#toggleSidebar').click(function(){
                $('#offcanvasRight').toggleClass('show');
            });
            $('.btn-close').click(function(){
                $('#offcanvasRight').removeClass('show');
            });
        });
    </script>




</body>
</html>
