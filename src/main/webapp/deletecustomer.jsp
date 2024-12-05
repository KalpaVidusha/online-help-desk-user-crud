<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href = "css/uAcc.css">
	<link rel="stylesheet" href = "css/headerfooter.css">
</head>
<body>
<%@ include file="header.jsp" %>

    <%
    String id = request.getParameter("id");
    String Fname = request.getParameter("Fname");
    String Lname = request.getParameter("Lname");
    String Email = request.getParameter("Email");
    String Phone = request.getParameter("Phone");
    String Username = request.getParameter("Username");
    String Password = request.getParameter("Password");
    %>
    
    <div id="acc">
    <div style="text-align: center;">
    <h2>Account Deletion</h2>
    </div>
    <form action="delete" method="post">
        <table>
            <tr>
                <th>User ID</th>
                <td><input type="text" name="cusid" value="<%= id%>" readonly></td>
            </tr>
            <tr>
                <th>First Name</th>
                <td><input type="text" name="Fname" value="<%= Fname%>"readonly></td>
            </tr>
            <tr>
                <th>Last Name</th>
                <td><input type="text" name="Lname" value="<%= Lname%>"readonly></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><input type="text" name="Email" value="<%= Email%>"readonly></td>
            </tr>
            <tr>
                <th>Phone number</th>
                <td><input type="text" name="Phone" value="<%= Phone%>"readonly></td>
            </tr>
            <tr>
                <th>Username</th>
                <td><input type="text" name="Username" value="<%= Username%>readonly"></td>
            </tr>
            <tr>
                <th>Password</th>
                <td><input type="password" name="Password" value="<%= Password%>readonly"></td>
            </tr>
        </table>
    
        <div class="button-container">
        <button type="submit" name="submit">Confirm Delete</button>
        </div>
           
    </form>
</div>
<%@ include file="footer.jsp" %>

</body>
</html>
