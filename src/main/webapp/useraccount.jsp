<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<style>
       
        h1 {
            text-align: center;
        }
    </style>
<meta charset="UTF-8">
<title>Customer Details</title>

	<link rel="stylesheet" href = "css/headerfooter.css">
<link rel="stylesheet" href = "css/uAcc.css">

<script>
    function logout() {
        window.location.href = "login.jsp";
    }
</script>


</head>

<body>
<%@ include file="header.jsp" %>
    <div id="acc">
    <h1>My Profile</h1>
    <table>
   
        <c:forEach var="cus" items="${cusDetail}">
            <c:set var="id" value="${cus.cusId}"/>
            <c:set var="Fname" value="${cus.cusFname}"/>
            <c:set var="Lname" value="${cus.cusLname}"/>
            <c:set var="Email" value="${cus.cusEmail}"/>
            <c:set var="Phone" value="${cus.cusPhone}"/>
            <c:set var="Username" value="${cus.cusUsername}"/>
            <c:set var="Password" value="${cus.cusPassword}"/>

            <tr>
                <td>Customer ID</td>
                <td>${cus.cusId}</td>
            </tr>
            <tr>
                <td>Customer Username</td>
                <td>${cus.cusUsername}</td>
            </tr>
            <tr>
                <td>Customer First Name</td>
                <td>${cus.cusFname}</td>
            </tr>
            <tr>
                <td>Customer Last Name</td>
                <td>${cus.cusLname}</td>
            </tr>
            <tr>
                <td>Customer Email</td>
                <td>${cus.cusEmail}</td>
            </tr>
            <tr>
                <td>Customer Phone</td>
                <td>${cus.cusPhone}</td>
            </tr>
        </c:forEach>
    </table>
    
    <c:url value="updatecustomer.jsp" var="cusupdate">
        <c:param name="id" value="${id}"/>
        <c:param name="Fname" value="${Fname}"/>
        <c:param name="Lname" value="${Lname}"/>
        <c:param name="Email" value="${Email}"/>
        <c:param name="Phone" value="${Phone}"/>
        <c:param name="Username" value="${Username}"/>
        <c:param name="Password" value="${Password}"/>
    </c:url>
    
    
    <div class="button-container">
        <a href="${cusupdate}">
            <input type="button" name="update" value="Edit My Account Data">
        </a>
        <br>
        <c:url value="deletecustomer.jsp" var="cusdelete">
        	<c:param name="id" value="${id}"/>
        	<c:param name="Fname" value="${Fname}"/>
        	<c:param name="Lname" value="${Lname}"/>
        	<c:param name="Email" value="${Email}"/>
        	<c:param name="Phone" value="${Phone}"/>
        	<c:param name="Username" value="${Username}"/>
        	<c:param name="Password" value="${Password}"/>
        </c:url>
        <a href="${cusdelete}">
        <input type="button" name="delete" value="Delete Account">
        </a>
        
        <form action="LogoutServlet" method="get">
        <button type="submit">Logout</button>
    </form>
    </div>
</div>

       <%@ include file="footer.jsp" %>
</body>
</html>
