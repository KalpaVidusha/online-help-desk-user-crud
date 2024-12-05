<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="css/customerinsert.css">
    <link rel="stylesheet" href="css/headerfooter.css">
</head>
<body>

<%@ include file="header.jsp" %>

<div class="container">
    <form action="log" method="post">
        <h1>Login</h1>
        <div>
            User name<input type="text" name="uid"><br>
        </div>
        <div>
            Password<input type="password" name="pass"><br>
        </div>
        <div class="button-container">
            <button type="submit" name="submit">Login</button>
        </div>
        
        <%-- Display error message if present --%>
        <c:if test="${not empty errorMessage}">
            <div style="color: red;">
                ${errorMessage}
            </div>
        </c:if>
        
        
    </form>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>
