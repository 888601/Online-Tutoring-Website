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
      <li> <a href = "/Tutor_Coaching/HTML/contactus.html">Contact Us</a> </li>
      <li> <a href ="/Tutor_Coaching/JSP/beforelogin.jsp"> Sign in</a>
    </ul>
 
</nav>
</div>


    <img class="image" src="../Images/cloud.jpg" style="width: 100%; height: 450px;" alt="Course Image">

    <div class="section">
        <div class="section-heading" onclick="toggleSection('overview')">
            <h2>Welcome to Cloud Computing course</h2>
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
  <li>Introduction to Cloud Computing</li>
  <li>History and evolution of cloud computing</li>
  <li>Cloud service models: IaaS, PaaS, SaaS</li>
  <li>Cloud deployment models: Public, private, hybrid, community</li>
  <li>Advantages and challenges of cloud computing</li>
  <li>Overview of major cloud service providers (e.g., AWS, Azure, Google Cloud)</li>
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
  <li>Virtualization fundamentals</li>
  <li>Understanding virtual machines (VMs) and containers</li>
  <li>Hypervisors and container runtimes</li>
  <li>Benefits of virtualization in cloud computing</li>
   <li>Virtual networking in the cloud</li>
  <li>Hands-on lab: Setting up a virtual environment</li>
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
  <li>Infrastructure as a Service (IaaS) overview</li>
  <li>Key features of IaaS platforms</li>
  <li>Creating and managing virtual machines in the cloud</li>
  <li>Storage options in IaaS</li>
   <li>Networking in IaaS environments</li>
  <li>Hands-on lab: Deploying virtual machines on a cloud platform</li>
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
  <li>Platform as a Service (PaaS) overview</li>
  <li>Advantages of PaaS for application development and deployment</li>
  <li>PaaS offerings for different programming languages and frameworks</li>
  <li>Building and deploying applications on PaaS platforms</li>
   <li>Scalability and flexibility in PaaS environments</li>
  <li>Hands-on lab: Developing and deploying an application on a PaaS platform</li>
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
  <li>Software as a Service (SaaS) overview</li>
  <li>Characteristics of SaaS applications</li>
  <li>Common examples of SaaS applications</li>
  <li>Benefits and challenges of using SaaS</li>
   <li>Customization and integration options in SaaS</li>
  <li>Hands-on lab: Exploring popular SaaS applications</li>
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
  <li>Cloud security fundamentals</li>
  <li>Security concerns in cloud computing</li>
  <li>Identity and access management (IAM) in the cloud</li>
  <li>Data encryption and privacy in the cloud</li>
   <li>Security best practices for cloud deployments</li>
  <li>Hands-on lab: Implementing security measures in a cloud environment</li>
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
   <li>Cloud storage services overview</li>
  <li>Object storage vs. block storage</li>
  <li>Popular cloud storage solutions (e.g., Amazon S3, Azure Blob Storage)</li>
  <li>Data backup and disaster recovery in the cloud</li>
   <li>Data lifecycle management strategies</li>
  <li>Hands-on lab: Configuring and managing cloud storage services</li>
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
   <li>Cloud networking basics</li>
  <li>Virtual Private Cloud (VPC) concepts</li>
  <li>Network security groups and access control lists (ACLs)</li>
  <li>Load balancing and auto-scaling in the cloud</li>
   <li>Content Delivery Networks (CDNs) and edge computing</li>
  <li>Hands-on lab: Setting up a virtual network in the cloud</li>
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
    <li>Cloud cost management strategies</li>
  <li>Understanding cloud billing models (pay-as-you-go, reserved instances, etc.)</li>
  <li>Monitoring and optimizing cloud resource usage</li>
  <li>Cost estimation tools and techniques</li>
   <li>Governance and compliance in cloud cost management</li>
  <li>Hands-on lab: Analyzing and optimizing cloud costs</li>  </ul>
        </div>
    </div>
    
    <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-10')">
            <h4>Week 10</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-10">
            <ul class="sub-items">
    <li>Serverless computing overview</li>
  <li>Benefits of serverless architectures</li>
  <li>Serverless use cases and limitations</li>
  <li>Functions as a Service (FaaS) platforms</li>
   <li>Building and deploying serverless applications</li>
  <li>Hands-on lab: Developing a serverless application</li> </ul>
        </div>
    </div>
    
    <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-11')">
            <h4>Week 11</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-11">
            <ul class="sub-items">
    <li>DevOps practices in the cloud</li>
  <li>Continuous Integration (CI) and Continuous Deployment (CD) pipelines</li>
  <li>Infrastructure as Code (IaC) principles and tools</li>
  <li>Configuration management and automation in the cloud</li>
   <li>Monitoring and logging in cloud-based environments</li>
  <li>Hands-on lab: Implementing a DevOps pipeline for cloud deployments</li></ul>
        </div>
    </div>
    
    <div class="section">
        <div class="section-heading" onclick="toggleSection('software-standards-12')">
            <h4>Week 12</h4>
            <span>&#9660;</span>
        </div>
        <div class="section-content" id="software-standards-12">
            <ul class="sub-items">
    <li>Big Data and Analytics in the cloud</li>
  <li>Introduction to cloud-based data storage and processing solutions</li>
  <li>Data warehousing and data lakes in the cloud</li>
  <li>Real-time data analytics with cloud services</li>
   <li>Machine learning and AI capabilities in the cloud</li>
  <li>Hands-on lab: Analyzing big data using cloud-based tools</li>
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
    <li>Hybrid and multi-cloud architectures</li>
  <li>Strategies for integrating on-premises and cloud environments</li>
  <li>Multi-cloud deployment considerations and challenges</li>
  <li>Benefits of hybrid and multi-cloud approaches</li>
   <li>Tools and technologies for managing hybrid and multi-cloud deployments</li>
  <li>Hands-on lab: Implementing a hybrid/multi-cloud solution</li>
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
    <li>Final project: Design and implement a cloud-based solution</li>
  <li>Identifying project requirements and objectives</li>
  <li>Architecting the solution using cloud services and technologies</li>
  <li>Implementing and testing the solution</li>
   <li>Documentation and presentation of the final project</li>
  <li>Course wrap-up and review of key concepts</li>
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