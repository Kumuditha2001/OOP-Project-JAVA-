<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FAQs</title>

   <link rel="stylesheet" href="css/FAQ.css">

</head>
<body>

<script>
document.addEventListener('DOMContentLoaded', function() {
    var questions = document.querySelectorAll('.question');
    
    questions.forEach(function(question) {
        question.addEventListener('click', function() {
            var answer = this.nextElementSibling;
            
            
            
            
            if (answer.style.display === 'none' || answer.style.display === '') {
                answer.style.display = 'block';
            } else {
                answer.style.display = 'none';
            }
        });
    });
});


</script>

    <div class="container">
        <h1 class="topic">FAQs</h1>
   <div class = "img">
        <div class="faq-item">        <div class="faq-item">
            <div class="question" >Q1: What services do you provide?</div>
            <div class="answer">We offer guided tours for various destinations, including historical sites, natural landmarks, and cultural experiences.</div>
        </div>

        <div class="faq-item">
            <div class="question">Q2:How can I book a tour</div>
            <div class="answer">You can easily book a tour through our website. Select your destination, choose a date, and make a payment to confirm your booking.</div>
        </div>

        <div class="faq-item">
            <div class="question">Q3:Are your tour guides experienced?</div>
            <div class="answer">Yes, our tour guides are highly experienced professionals with extensive knowledge about the destinations they cover.</div>
        </div>

        <div class="faq-item">
            <div class="question">Q4:Can I customize my tour itinerary?</div>
            <div class="answer">We accept major credit cards, PayPal, and other secure payment methods for booking tours.</div>
        </div>

        <div class="faq-item">
            <div class="question">Q5: What payment methods do you accept?</div>
            <div class="answer">We accept major credit cards, PayPal, and other secure payment methods for booking tours.</div>
        </div>

        <div class="faq-item">
            <div class="question">Q6: Is transportation included in the tour package?</div>
            <div class="answer">Transportation details vary by tour. Some tours include transportation, while others require participants to arrange their own.</div>
        </div>
    </div>
        <div>
            <center>
                <p class="que"><h3>Do you have another question? Please click the button below:</h3></p>
                <a href="faq2.jsp" class="button">Click</a>
            </center>
        </div>
    </div>
</body>
</html>
