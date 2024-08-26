<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Table Example</title>
	<link rel="stylesheet" href="css/conform.css">
</head>
<body>
    <h1></h1>
    <table>
      <tr>
        <th scope="col">Name</th>
        <th scope="col">Mobile</th>
        <th scope="col">Question</th>
        <th scope="col">Operation</th>
      </tr>
    
      <tr>
        <c:set var="FAQ_Number" value="${FAQ_Number}"/>
        <c:set var="Name" value="${name}"/>
        <c:set var="contact" value="${contact}"/>
        <c:set var="question" value="${question}"/>
      
        <td>${name}</td>
        <td>${contact}</td>
        <td>${question}</td>
        <td>
           <!-- Update Button -->
           <c:url value="updatefaq.jsp" var="queupdate">
                <c:param name="FAQ_Number" value="${FAQ_Number}"/>
                <c:param name="Name" value="${name}"/>
                <c:param name="Contact" value="${contact}"/>
                <c:param name="Question" value="${question}"/>
           </c:url>
           <a href="${queupdate}" class="update-btn">Update</a>
               
           <!-- Delete Button -->
           <c:url value="deletefaq.jsp" var="quedelete">
               <c:param name="FAQ_Number" value="${FAQ_Number}"/>
               <c:param name="Name" value="${name}"/>
               <c:param name="Contact" value="${contact}"/>
               <c:param name="Question" value="${question}"/>
           </c:url>
           <a href="${quedelete}" class="delete-btn">Delete</a>
           
           <!-- Submit Button -->
          <a href="FAQ.jsp"> <button class="submit-btn">Submit</button> </a>
        </td>
      </tr>
    </table>
</body>
</html>
