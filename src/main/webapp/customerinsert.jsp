<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <link rel="stylesheet" href="css/customerinsert.css">
    <link rel="stylesheet" href="css/headerfooter.css">
    <script>
    function validateForm() {
        var fname = document.getElementById('fname').value;
        var lname = document.getElementById('lname').value;
        var email = document.getElementById('email').value;
        var phone = document.getElementById('phone').value;
        var uid = document.getElementById('uid').value;
        var pwd = document.getElementById('pwd').value;

        if (fname.trim() === '' || lname.trim() === '' || email.trim() === '' || phone.trim() === '' || uid.trim() === '' || pwd.trim() === '') {
            alert("Please fill in all fields.");
            return false;
        }

        var phoneRegex = /^[0-9]{10}$/;
        if (!phoneRegex.test(phone)) {
            alert("Please enter a valid 10-digit phone number starting with 0.");
            return false;
        }

        var usernameRegex = /^[a-zA-Z]+$/;
        if (!usernameRegex.test(uid)) {
            alert("Please enter a valid username with only alphabetical characters.");
            return false;
        }

        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            alert("Please enter a valid email address.");
            return false;
        }

        return true;
    }
</script>
<style>
    
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh; 
    }
</style>
</head>
<body>
<%@ include file="header.jsp" %>
    
    <div class="container">
        <form action="insert" method="post" onsubmit="return validateForm()">
            <h1>Registration</h1>
            <div>
                <label for="fname">First Name:</label>
                <input type="text" id="fname" name="fname" aria-required="true"><br>
                <label for="lname">Last Name:</label>
                <input type="text" id="lname" name="lname" aria-required="true"><br>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" aria-required="true"><br>
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" aria-required="true"><br>
                <label for="uid">Username:</label>
                <input type="text" id="uid" name="uid" aria-required="true"><br>
                <label for="pwd">Password:</label>
                <input type="password" id="pwd" name="pwd" aria-required="true"><br>
            </div>
            <div class="button-container">
                <button type="submit" name="Submit">Create Account</button>
            </div>
        </form>
    </div> 
<%@ include file="footer.jsp" %>
</body>
</html>
