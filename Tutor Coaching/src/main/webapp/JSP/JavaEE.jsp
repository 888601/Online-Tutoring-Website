<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="icon" type="image/x-icon" href="/Tutor_Coaching/Images/favicon.ico">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Details</title>
      <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
     <link href="/Tutor_Coaching/styles/fulld.css" rel="stylesheet">
   
</head>
<body>
<div class = header>
        <div class = "logo-container">
           <img src="/Tutor_Coaching/Images/Coaching.png" class = "navbar-logo" alt="Logo Here" >
         </div>
				
<nav class="navbar">
    
    
    <ul class="menu">
        <li><a href="/Tutor_Coaching/HTML/Index.html">Home</a></li>
        
    
    
            
      <li> <a href="/Tutor_Coaching/HTML/aboutus.html">About Us </a>  </li>
      <li> <a href = "/Tutor_Coaching//HTML/contactus.html">Contact Us</a> </li>
      <li> <a href ="/Tutor_Coaching/JSP/beforelogin.jsp"> Sign in</a>
    </ul>
 
</nav>
</div>


    <img class="image" src="/Tutor_Coaching/Images/java.png" style="width: 100%; height: 450px;" alt="Course Image">

    <div class="section">
        <div class="section-heading" onclick="toggleSection('overview')">
            <h2>Welcome to Java EE course</h2>
            <!-- No arrow icon for Course Overview -->
        </div>
        <div class="section-content" id="overview">
            <p>
                Java EE (Java Enterprise Edition) is a powerful platform for developing enterprise-level applications. Built on the solid foundation of Java, Java EE provides a comprehensive set of APIs and tools for building scalable, secure, and robust server-side applications. It offers a range of features such as servlets, JavaServer Pages (JSP), Enterprise JavaBeans (EJB), Java Persistence API (JPA), and many more, facilitating the development of complex, distributed systems. Java EE's modular architecture promotes code reusability and simplifies maintenance, making it an ideal choice for building mission-critical applications in various domains, including finance, healthcare, and e-commerce. With its rich ecosystem and strong community support, Java EE remains a preferred platform for enterprise application development.
            </p>
        </div>
    </div>
    <div>  
        <h1> Course Curriculum</h1>
    </div>

    <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-1')">
            <h4>Week 1</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-1">
            <ul class="sub-items">
  <li>Introduction to Java EE</li>
  <li>Overview of JSP</li>
  <li>Setting up development environment (IDE, server)</li>
  <li>Basic Java syntax review</li>
  <li>Creating a simple JSP page</li>
  <li>Deploying JSP page to a local server</li>
            </ul>
        </div>
    </div>
 
 <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-2')">
            <h4>Week 2</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-2">
            <ul class="sub-items">
  <li>Understanding JSP lifecycle</li>
  <li>JSP scripting elements (declarations, scriptlets, expressions)</li>
  <li>Using JSP implicit objects</li>
  <li>Handling HTTP requests in JSP</li>
   <li>Basic JSP form handling</li>
  <li>JSP include and forward actions</li>
            </ul>
        </div>
    </div>
    
    <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-3')">
            <h4>Week 3</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-3">
            <ul class="sub-items">
 <li>Introduction to JavaBeans in JSP</li>
  <li>Creating and using JavaBeans classes</li>
  <li>Passing data between servlets and JSP using JavaBeans</li>
  <li>Session management in JSP (HttpSession)</li>
   <li>Error handling in JSP</li>
  <li>JSP custom tags introduction</li>
            </ul>
        </div>
    </div>
 
 <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-4')">
            <h4>Week 4</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-4">
            <ul class="sub-items">
  <li>Understanding JSP custom tags</li>
  <li>Writing simple custom tags</li>
  <li>Using Tag Libraries (JSTL) in JSP</li>
  <li>Displaying data using JSTL Core tags</li>
   <li>JSTL Formatting and Internationalization tags</li>
  <li>Introduction to Expression Language (EL)</li>
            </ul>
        </div>
    </div>
    
   <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-5')">
            <h4>Week 5</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-5">
            <ul class="sub-items">
  <li>Advanced JSP techniques: MVC architectures</li>
  <li>Separating concerns: JSP as view, Servlet as controller, JavaBeans as model</li>
  <li>Design patterns in JSP applications</li>
  <li>Integrating JSP with database (JDBC)</li>
   <li>CRUD operations using JSP and JDBC</li>
  <li>Handling file uploads in JSP</li>
            </ul>
        </div>
    </div>
    
    <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-6')">
            <h4>Week 6</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-6">
            <ul class="sub-items">
  <li>Overview of Java EE security concepts</li>
  <li>Implementing authentication and authorization in JSP applications</li>
  <li>Form-based authentication</li>
  <li>Session management and security</li>
   <li>Secure coding practices in JSP</li>
  <li>Role-based access control in JSP</li>
            </ul>
        </div>
    </div>
    
    <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-7')">
            <h4>Week 7</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-7">
            <ul class="sub-items">
   <li>Introduction to JSP Expression Language (EL)</li>
  <li>Understanding EL syntax</li>
  <li>Using EL for accessing scoped variables</li>
  <li>Using EL for property access and method invocation</li>
   <li>Implicit objects in EL</li>
  <li>EL operators and expressions</li>
            </ul>
        </div>
    </div>
    
    <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-8')">
            <h4>Week 8</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-8">
            <ul class="sub-items">
   <li>Advanced JSP topics: Tag file and Tag fragments</li>
  <li>Creating reusable custom tags with tag files</li>
  <li>Combining tag files and tag fragments</li>
  <li>SP tag fragments for code reuse</li>
   <li>Building custom tag libraries for specific purposes</li>
  <li>Best practices for creating custom tags</li>
            </ul>
        </div>
    </div>
 
 <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-9')">
            <h4>Week 9</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-9">
            <ul class="sub-items">
    <li>Optimizing JSP applications for performance</li>
  <li>Minimizing scriptlets in JSP</li>
  <li>Reducing JSP page size</li>
  <li>Caching techniques in JSP</li>
   <li>Database connection pooling in JSP applications</li>
  <li>Profiling and debugging JSP applications</li></ul>
        </div>
    </div>
    
    <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-10')">
            <h4>Week 10</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-10">
            <ul class="sub-items">
    <li>Introduction to JSP frameworks (e.g., Apache Struts, Spring MVC)</li>
  <li>Overview of Apache Struts framework</li>
  <li>Setting up a Struts project</li>
  <li>Creating Struts Action classes and ActionForms</li>
   <li>Configuring Struts action mappings</li>
  <li>Integrating JSP with Struts framework</li></ul>
        </div>
    </div>
    
    <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-11')">
            <h4>Week 11</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-11">
            <ul class="sub-items">
    <li>Introduction to Spring MVC framework</li>
  <li>Setting up a Spring MVC project</li>
  <li>Creating Spring MVC controllers</li>
  <li>Handling requests and responses in Spring MVC</li>
   <li>Configuring Spring MVC views (JSP)</li>
  <li>Integrating JSP with Spring MVC</li></ul>
        </div>
    </div>
    
    <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-12')">
            <h4>Week 12</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-12">
            <ul class="sub-items">
    <li>Working with AJAX in JSP applications</li>
  <li>Understanding AJAX concepts</li>
  <li>Implementing AJAX in JSP using JavaScript and jQuery</li>
  <li>Using XMLHttpRequest object for AJAX requests</li>
   <li>Handling AJAX responses in JSP</li>
  <li>AJAX-based form submission in JSP</li>
  </ul>
        </div>
    </div>
    
    <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-13')">
            <h4>Week 13</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-13">
            <ul class="sub-items">
    <li>Overview of RESTful web services</li>
  <li>Creating RESTful endpoints in Java EE</li>
  <li>Consuming RESTful services in JSP applications</li>
  <li>Displaying RESTful service data in JSPC</li>
   <li>Integrating JSP with JSON data</li>
  <li>Best practices for designing RESTful endpoints</li>
  </ul>
        </div>
    </div>
    
     <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-14')">
            <h4>Week 14</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-14">
            <ul class="sub-items">
    <li>Testing and debugging JSP applications</li>
  <li>Writing unit tests for JSP components</li>
  <li>Using testing frameworks (e.g. JUnit, Mockito) with JSP</li>
  <li>Debugging techniques for JSP pages</li>
   <li>Performance testing of JSP applications</li>
  <li>Error handling and logging strategies</li>
  </ul>
        </div>
    </div>
    
    <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-15')">
            <h4>Week 15</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-15">
            <ul class="sub-items">
    <li>Final project: Implementing a comprehensive JSP application</li>
  <li>Designing project requirements and architecture</li>
  <li>Implementing various features learned throughout the course</li>
  <li>Testing, debugging, and optimizing the application</li>
   <li>Presentation and demonstration of the final project</li>
  <li>Future learning paths and resources for further exploration</li>
  </ul>
        </div>
    </div>
    
    <!-- Key Features Section -->
    <div class="section">
        <div class="section-heading" onclick="toggleSection('key-features')">
            <h1>Key Features</h1>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="key-features">
            <div class="feature-box-container">
                <div class="feature-box">
                    <span class="feature-icon">⚙</span>
                    <p>Hands-On Experience</p>
                </div>
                <div class="feature-box">
                    <span class="feature-icon">👨‍🏫</span>
                    <p>Get Trained from Professionals</p>
                </div>
                <div class="feature-box">
                    <span class="feature-icon">🌱</span>
                    <p>Learn Latest Tools and Technologies</p>
                </div>
                <div class="feature-box">
                    <span class="feature-icon">🔄</span>
                    <p>Continuous Learning</p>
                </div>
                <div class="feature-box">
                    <span class="feature-icon">💡</span>
                    <p>Live Project Training</p>
                </div>
                <div class="feature-box">
                    <span class="feature-icon">🎓</span>
                    <p>Industry-Relevant Skills</p>
                </div>
                <div class="feature-box">
                    <span class="feature-icon">🔄</span>
                    <p>Continuous Interview Preparation</p>
                </div>
                <div class="feature-box">
                    <span class="feature-icon">🔍</span>
                    <p>Mock Interviews</p>
                </div>
                <div class="feature-box">
                    <span class="feature-icon">🔄</span>
                    <p>Continuous Interview Preparation</p>
                </div>
            </div>
        </div>
    </div>
 
    <!-- Add more sections as needed with unique IDs -->
 
    <script>
        function toggleSection(sectionId) {
            var sectionContent = document.getElementById(sectionId);
            var arrowIcon = sectionContent.previousElementSibling.querySelector('span');

            if (sectionContent.style.display === 'block') {
                sectionContent.style.display = 'none';
                arrowIcon.innerHTML = '&#9660;'; // Downward arrow
            } else {
                sectionContent.style.display = 'block';
                arrowIcon.innerHTML = '&#9650;'; // Upward arrow
            }
        }
    </script>
</body>
</html>