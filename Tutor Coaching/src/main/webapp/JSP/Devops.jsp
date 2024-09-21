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
     <style>
  
</style>
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
      <li> <a href = "/Tutor_Coaching/HTML/contactus.html">Contact Us</a> </li>
      <li> <a href ="/Tutor_Coaching/JSP/beforelogin.jsp"> Sign in</a>
    </ul>
 
</nav>
</div>


    <img class="image" src="../Images/devops.jpg" style="width: 100%; height: 450px;" alt="Course Image">

    <div class="section">
        <div class="section-heading" onclick="toggleSection('overview')">
            <h2>Welcome to DevOps course</h2>
            <!-- No arrow icon for Course Overview -->
        </div>
        <div class="section-content" id="overview">
            <p>
                Cloud computing revolutionizes the way businesses and individuals access, store, and process data. By leveraging remote servers over the internet, cloud computing eliminates the need for on-site hardware infrastructure, reducing costs and increasing scalability. Users can access applications, storage, and computing power on-demand, from anywhere with an internet connection. This flexibility enables seamless collaboration, enhances efficiency, and empowers innovation. With the ability to rapidly adapt to changing demands and easily scale resources, cloud computing has become an indispensable tool for organizations of all sizes, driving digital transformation across industries.
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
  <li>Understanding DevOps concepts and principles</li>
  <li>History and evolution of DevOps</li>
  <li>Benefits and importance of DevOps in software development</li>
  <li>DevOps culture and collaboration</li>
  <li>Tools and technologies used in DevOps</li>
  <li>Setting up development environments</li>
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
  <li>Introduction to Git and GitHub</li>
  <li>Branching and merging strategies</li>
  <li>Collaborative development workflows</li>
  <li>Managing repositories and permissions</li>
   <li>Resolving merge conflicts</li>
  <li>Best practices for using VCS in DevOps workflows</li>
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
  <li>Introduction to CI/CD pipelines</li>
  <li>Implementing CI with Jenkins</li>
  <li>Automated builds and unit testing</li>
  <li>Code quality analysis and static code analysis tools</li>
   <li>Integrating CI with version control systems</li>
  <li>Best practices for CI implementation</li>
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
  <li>Introduction to continuous deployment</li>
  <li>Implementing CD pipelines with Jenkins and other tools</li>
  <li>Automated deployment strategies</li>
  <li>Blue-green deployments and canary releases</li>
   <li>Monitoring and logging in CD pipelines</li>
  <li>Managing infrastructure as code for CD</li>
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
  <li>Introduction to configuration management tools (e.g., Ansible, Puppet, Chef)</li>
  <li>Infrastructure automation and provisioning</li>
  <li>Managing configurations and dependencies</li>
  <li>Orchestration and scaling of infrastructure</li>
   <li>Role-based access control and security in configuration management</li>
  <li>Best practices for configuration management in DevOps</li>
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
  <li>Introduction to Docker containers</li>
  <li>Building and managing Docker images</li>
  <li>Docker networking and storage</li>
  <li>Container orchestration with Kubernetes</li>
   <li>Microservices architecture and containerization</li>
  <li>Best practices for using Docker in DevOps workflows</li>
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
   <li>Introduction to infrastructure as code</li>
  <li>Using tools like Terraform for infrastructure provisioning</li>
  <li>Declarative vs. imperative IaC approaches</li>
  <li>Managing cloud resources with IaC</li>
   <li>Testing and versioning infrastructure code</li>
  <li>Best practices for implementing IaC in DevOps</li>
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
   <li>Introduction to monitoring and observability</li>
  <li>Monitoring metrics, logs, and traces</li>
  <li>Implementing monitoring solutions with tools like Prometheus and Grafana</li>
  <li>Setting up alerts and notifications</li>
   <li>Performance tuning and optimization based on monitoring data</li>
  <li>Best practices for monitoring and alerting in DevOps</li>
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
    <li>Introduction to DevSecOps</li>
  <li>Security principles and best practices in DevOps</li>
  <li>Securing CI/CD pipelines</li>
  <li>Vulnerability scanning and threat modeling</li>
   <li>Implementing security controls in cloud environments</li>
  <li>Compliance and governance considerations in DevOps</li>  </ul>
        </div>
    </div>
    
    <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-10')">
            <h4>Week 10</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-10">
            <ul class="sub-items">
    <li>Introduction to cloud computing platforms (e.g., AWS, Azure, Google Cloud)</li>
  <li>Infrastructure automation and scalability in the cloud</li>
  <li>Integrating cloud services with DevOps workflows</li>
  <li>Serverless computing and its impact on DevOps</li>
   <li>Cost optimization strategies for cloud-based deployments</li>
  <li>Best practices for leveraging cloud services in DevOps</li> </ul>
        </div>
    </div>
    
    <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-11')">
            <h4>Week 11</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-11">
            <ul class="sub-items">
    <li>Introduction to collaboration tools (e.g., Slack, Microsoft Teams)</li>
  <li>Using communication channels for effective collaboration</li>
  <li>Integration of collaboration tools with DevOps workflows</li>
  <li>Agile methodologies and DevOps collaboration</li>
   <li>Documentation and knowledge sharing practices</li>
  <li>Best practices for communication and collaboration in DevOps teams</li></ul>
        </div>
    </div>
    
    <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-12')">
            <h4>Week 12</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-12">
            <ul class="sub-items">
    <li>Building a DevOps culture within organizations</li>
  <li>Leadership and management practices in DevOps teams</li>
  <li>Empowering cross-functional teams for innovation</li>
  <li>Resilience and adaptability in DevOps culture</li>
   <li>Continuous learning and improvement mindset</li>
  <li>Case studies and success stories of DevOps transformation</li>
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
    <li>Internet of Things (IoT) and cloud computing</li>
  <li>Integration of IoT devices with cloud platforms</li>
  <li>Data ingestion and processing for IoT applications</li>
  <li>Edge computing and fog computing concepts</li>
   <li>Edge computing and fog computing concepts</li>
  <li>Hands-on lab: Building an IoT application with cloud integration</li>
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
    <li>Real-world examples of DevOps implementation</li>
  <li>Case studies from different industries and organizations</li>
  <li>Challenges faced and lessons learned in DevOps adoption</li>
  <li>Success factors and key takeaways from case studies</li>
   <li>Analyzing the impact of DevOps on business outcomes</li>
  <li> Q&A and discussion on case study insights</li>
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
    <li>Integrating various DevOps tools into a cohesive toolchain</li>
  <li>Automation and orchestration of toolchain activities</li>
  <li>Pipeline as code and infrastructure as code for toolchain integration</li>
  <li>DevOps toolchain best practices and patterns</li>
   <li>Documentation and presentation of the final project</li>
  <li>Customizing and extending toolchain capabilities</li>
  <li>Continuous improvement of the DevOps toolchain</li>
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