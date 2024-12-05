<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href = "css/uAcc.css">

<script>
    function validateForm() {
        var Fname = document.getElementsByName('Fname')[0].value;
        var Lname = document.getElementsByName('Lname')[0].value;
        var Email = document.getElementsByName('Email')[0].value;
        var Phone = document.getElementsByName('Phone')[0].value;
        var Username = document.getElementsByName('Username')[0].value;
        var Password = document.getElementsByName('Password')[0].value;

        var phoneRegex = /^0[0-9]{9}$/;
        if (!phoneRegex.test(Phone)) {
            alert("Please enter a valid 10-digit phone number starting with 0.");
            return false;
        }

        var usernameRegex = /^[a-zA-Z]+$/;
        if (!usernameRegex.test(Username)) {
            alert("Please enter a valid username with only alphabetical characters.");
            return false;
        }

        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(Email)) {
            alert("Please enter a valid email address.");
            return false;
        }

        return true;
    }
</script>

</head>
<body>

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
    <h2>User Account Details</h2>
	</div>
    <form action="update" method="post" onsubmit="return validateForm()">
        <table>
            <tr>
                <th>User ID</th>
                <td><input type="text" name="cusid" value="<%= id%>" readonly></td>
            </tr>
            <tr>
                <th>First Name</th>
                <td><input type="text" name="Fname" value="<%= Fname%>"></td>
            </tr>
            <tr>
                <th>Last Name</th>
                <td><input type="text" name="Lname" value="<%= Lname%>"></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><input type="text" name="Email" value="<%= Email%>"></td>
            </tr>
            <tr>
                <th>Phone number</th>
                <td><input type="text" name="Phone" value="<%= Phone%>"></td>
            </tr>
            <tr>
                <th>Username</th>
                <td><input type="text" name="Username" value="<%= Username%>"></td>
            </tr>
            <tr>
                <th>Password</th>
                <td><input type="text" name="Password" value="<%= Password%>"></td>
            </tr>
        </table>
    
        <div class="button-container">
        <button type="submit" name="submit">Update My Data</button>
		</div>
   	    
   	 
    </form>
</div>


</body>
</html> 