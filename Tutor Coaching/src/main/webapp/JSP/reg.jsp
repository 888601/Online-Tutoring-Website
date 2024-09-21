<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="icon" type="image/x-icon" href="/Tutor_Coaching/Images/favicon.ico">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-body-tertiary">
    <div class="container">
        <a class="navbar-brand me-2" href="./HTML/home.html">
            <img src="/Tutor_Coaching/Images/Coaching.png" height="60" width="80" alt="MDB Logo" style="margin-top: -1px;"/>
        </a>
        <button class="navbar-toggler" type="button" data-mdb-target="#navbarButtonsExample"
                aria-controls="navbarButtonsExample" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarButtonsExample">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="#">Dashboard</a>
                </li>
            </ul>
            <div class="d-flex align-items-center">
                <button data-mdb-ripple-init type="button" class="btn btn-primary me-3">
                    <a href="../" style="color: inherit; text-decoration: none;">Home</a>
                </button>
            </div>
        </div>
    </div>
</nav>

<!-- Registration Form -->
<section class="h-100 bg-dark">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col">
                <div class="card card-registration my-4">
                    <div class="card-body p-md-5 text-black">
                        <h3 class="mb-5 text-uppercase">Registration Form</h3>
                        <form action="/Tutor_Coaching/RegistrationServlet" method="post">
                            <div class="row mb-4">
                                <div class="col-md-6">
                                    <div class="form-outline">
                                        <input type="text" id="firstName" name="firstName"
                                               class="form-control form-control-lg" required/>
                                        <label class="form-label" for="firstName">First name</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-outline">
                                        <input type="text" id="lastName" name="lastName"
                                               class="form-control form-control-lg" required/>
                                        <label class="form-label" for="lastName">Last name</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="text" id="username" name="username"
                                       class="form-control form-control-lg" required/>
                                <label class="form-label" for="username">Username</label>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="password" id="password" name="password"
                                       class="form-control form-control-lg" required/>
                                <label class="form-label" for="password">Password</label>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="email" id="email" name="email"
                                       class="form-control form-control-lg" required/>
                                <label class="form-label" for="email">Email</label>
                            </div>
                            <button type="submit" class="btn btn-primary btn-lg">Register</button>
                            <a href="/Tutor_Coaching/JSP/beforelogin.jsp" class="btn btn-success btn-lg">Already a User?</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Bootstrap and JavaScript dependencies -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.10.2/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>
</html>
