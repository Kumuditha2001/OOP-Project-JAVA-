<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="Header&Footer.css">

	<link rel="stylesheet" href="css/faq2.css">

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
    </div>
</header>
<!-- header ending -->
     
<div class="formcontainer">
    <form method="post" action="faq2">
        <div class="QesContainer">
            <label for="Name" class="headings">name:</label><br>
            <input type="text" class="form-control" placeholder="Enter your name.." name="name" autocomplete="off">
        </div>

        <div class="QesContainer">
            <label for="mobile" class="headings">Contact:</label><br>
            <input type="text" class="form-control" placeholder="Enter your contact number" name="Contact" autocomplete="off">
        </div>

        <div class="QesContainer">
            <label for="question" class="headings">Question:</label><br>
            <textarea class="form-control form-question" placeholder="Enter your question.." name="Question" autocomplete="off"></textarea>
        </div>

         <button type="submit" name="submit" class="btn">Submit</button>
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
