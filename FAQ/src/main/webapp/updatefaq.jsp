<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="Header&Footer.css">

<link rel="stylesheet" href="css/update.css">


</head>
<body>

<!-- header begining -->
<div class="header">
    <header>
        <div class="container">
            <div class="navbar">
                <div class="logo">
              
                </div>
                <nav>
                    <ul>
                    </ul>
                </nav>
            </div> 
        </div>
    </header>
</div>
<!-- header ending -->
     
<div class="formcontainer">
    <form method="post" action="update">
       <% 
        String name = request.getParameter("Name");
        String contact = request.getParameter("Contact");
        String question = request.getParameter("Question");
       %>
        <div class="QesContainer">
            <label for="Name" class="headings">Name:</label><br>
            <input type="text" class="form-control" placeholder="Enter your name.." name="name" value="<%=name%>" readonly>
        </div>

        <div class="QesContainer">
            <label for="mobile" class="headings">Contact:</label><br>
            <input type="text" class="form-control" placeholder="Enter your contact number" name="Contact" value="<%=contact%>">
        </div>

        <div class="QesContainer">
            <label for="question" class="headings">Question:</label><br>
            <input type="text" class="form-control form-question" placeholder="Enter your question.." name="Question" value="<%=question%>">
        </div>

         <input type="submit" name="submit" class="btn" value="Update my Data"><br>
    </form>
</div>

<!-- footer begining -->
<footer class="footer" style="margin-top: 200px;">
    <div class="footer-container">
        <div class="footer-row">

            <div class="footer-col">
                <!-- Your footer content -->
            </div>

            <div class="footer-col">
                <!-- Your footer content -->
            </div>

            <div class="footer-col">
                <!-- Your footer content -->
            </div>

            <div class="footer-col">
                <div class="socialMediaIcons">
                    <a href="#"><i class="fa-brands fa-facebook"></i></a>
                    <a href="#"><i class="fa-brands fa-instagram"></i></a>
                    <a href="#"><i class="fa-brands fa-youtube"></i></a>
                    <a href="#"><i class="fa-brands fa-twitter"></i></a>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <!-- Your copyright content -->
    </div>
</footer>
<!-- footer ending -->

</body>
</html>
