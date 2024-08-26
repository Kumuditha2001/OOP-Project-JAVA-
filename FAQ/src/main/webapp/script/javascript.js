document.addEventListener('DOMContentLoaded', function() {
    var questions = document.querySelectorAll('.question');

    questions.forEach(function(question) {
        question.addEventListener('click', function() {
            this.style.display = 'none';
        });
    });
});
