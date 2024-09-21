<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="icon" type="image/x-icon" href="/Tutor_Coaching/Images/favicon.ico">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher Dashboard</title>
   
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="../CSS/NewFile.css">
    
</head>
<body>
    <header class="bg-dark text-light py-3">
        <div class="container d-flex justify-content-between align-items-center">
            <h1 class="m-0">Teacher Dashboard</h1>
            <div>
                <a href="#" style="text-decoration:none;" class="text-light">Home</a>
                <div class="dropdown d-inline-block">
                   
                    <div class="dropdown-menu" aria-labelledby="courseDropdown">
                       
                    </div>
                </div>
                <div class="dropdown d-inline-block">
                    <button class="btn btn-dark dropdown-toggle" type="button" id="accountDropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-user"></i>
                    </button>
                    <div class="dropdown-menu" aria-labelledby="accountDropdown">   &nbsp;  &nbsp;  HI <%= session.getAttribute("firstName") %>
                
                       
                        <form action="/Tutor_Coaching/LogoutServlet" method="post">
    <input type="submit" class="dropdown-item" value="Logout"> </form>
                    </div>
                </div>
            </div>
        </div>
    </header>

<main class="p-4">
    <div class="col-md-6">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Add Content to Course</h5>
                <!-- Form to add content to course -->
                <form action="/Tutor_Coaching/FileUploadServlet" method="post" enctype="multipart/form-data">
                    <!-- Dropdown to select course page -->
                    <div class="mb-3">
                        <label for="courseName" class="form-label">Select Course Page</label>
                        <select class="form-select" id="courseName" name="courseName">
                            <option value="JavaEE">Full Stack Java EE </option>
                             <option value="CloudComputing">Cloud Computing</option>
                             <option value="DEVOPS">DEVOPS</option>
                             
                                                         
                           
                           
                            <!-- Add more course pages as needed -->
                        </select>
                    </div>
                    <!-- Input fields for content details -->
                    <div class="mb-3">
                        <label for="weekNumber" class="form-label">Week Number</label>
                        <select class="form-select" id="weekNumber" name="weekNumber">
                            <option value="1">Week 1</option>
                            <option value="2">Week 2</option>
                            <option value="3">Week 3</option>
                            <option value="4">Week 4</option>
                            <option value="5">Week 5</option>
                            <option value="6">Week 6</option>
                            <option value="7">Week 7</option>
                            <option value="8">Week 8</option>
                            <option value="9">Week 9</option>
                            <option value="10">Week 10</option>
                            <option value="11">Week 11</option>
                            <option value="12">Week 12</option>
                            <option value="13">Week 13</option>
                            <option value="14">Week 14</option>
                            <option value="14">Week 14</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="contentFile" class="form-label">Upload File</label>
                        <input type="file" class="form-control" id="contentFile" name="contentFile">
                    </div>
                    <!-- Button to submit the form -->
                    <button type="submit" class="btn btn-primary">Upload</button>
                </form>
            </div>
        </div>
    </div>
</main>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>



</body>
</html>
