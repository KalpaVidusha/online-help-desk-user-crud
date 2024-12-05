<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" href="css/homecontent.css">
    <link rel="stylesheet" href="css/headerfooter.css">
       
    
    <style>
        body {
            background-image: url('image/istt.png');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
    </style>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="main">
    <div class="page1">
        <div class="text container">
            <div class="content">
                <h1>&emsp;&emsp;How can we help you?</h1>
                <h3>&emsp;&emsp;&emsp;&emsp;&emsp;Get assistance with your queries and find helpful resources to solve your issues quickly.</h3>
                <div class="learnmore">
                    <a href="#" class="btn btn-primary">Learn More <i class="fa-solid fa-chevron-right"></i></a>
                </div>
            </div>
        </div>
    </div>

<section class="faqs container">
    <h2>Frequently Asked Questions</h2>
    <div class="faqs__container">
        <article class="faq">
            <div class="faq__icon">
                <i class="fa-solid fa-plus"></i>
            </div>
            <div class="question__answer">
                <h4>How can I reset my password?</h4>
                <p>To reset your password, click on the "Forgot Password" link on the login page. Enter your registered email address, and we will send you a link to reset your password. Follow the instructions in the email to create a new password. If you do not receive the email, check your spam folder or contact our support team for assistance.</p>
            </div>
        </article>

        <article class="faq">
            <div class="faq__icon">
                <i class="fa-solid fa-plus"></i>
            </div>
            <div class="question__answer">
                <h4>What should I do if my account is locked?</h4>
                <p>If your account is locked due to multiple unsuccessful login attempts, please wait 15 minutes before trying again. If you are still unable to access your account, contact our support team to unlock your account. Be prepared to verify your identity for security purposes.</p>
            </div>
        </article>

        <article class="faq">
            <div class="faq__icon">
                <i class="fa-solid fa-plus"></i>
            </div>
            <div class="question__answer">
                <h4>How do I update my contact information?</h4>
                <p>To update your contact information, log in to your account and navigate to the "Profile" or "Account Settings" section. Here, you can update your email address, phone number, and other personal details. Save the changes once you have updated your information.</p>
            </div>
        </article>

        <article class="faq">
            <div class="faq__icon">
                <i class="fa-solid fa-plus"></i>
            </div>
            <div class="question__answer">
                <h4>Why am I not receiving emails from your service?</h4>
                <p>If you are not receiving emails from us, check your spam or junk mail folder first. Ensure that you have added our email address to your contacts or safe sender list. If the issue persists, verify that the email address in your account settings is correct and contact our support team for further assistance.</p>
            </div>
        </article>

        <article class="faq">
            <div class="faq__icon">
                <i class="fa-solid fa-plus"></i>
            </div>
            <div class="question__answer">
                <h4>How can I track the status of my support ticket?</h4>
                <p>To track the status of your support ticket, log in to your account and go to the "Support" or "Help Desk" section. Here, you will find a list of your submitted tickets along with their current status. You can also view detailed information and updates for each ticket.</p>
            </div>
        </article>

        <article class="faq">
            <div class="faq__icon">
                <i class="fa-solid fa-plus"></i>
            </div>
            <div class="question__answer">
                <h4>What should I do if I encounter a technical issue on your website?</h4>
                <p>If you encounter a technical issue on our website, try refreshing the page or clearing your browser cache and cookies. If the problem persists, please provide a detailed description of the issue, including any error messages, and contact our support team. Screenshots can be very helpful for diagnosing and resolving technical issues.</p>
            </div>
        </article>
    </div>
</section>
</div>
<%@ include file="footer.jsp" %>
<script>
    // JavaScript code for your page
    const faqs = document.querySelectorAll('.faq');
    faqs.forEach(faq => {
        faq.addEventListener('click', () => {
            faq.classList.toggle('open');
            const icon = faq.querySelector('.faq__icon i');
            if (icon.className === 'fa-solid fa-plus') {
                icon.className = 'fa-solid fa-xmark';
            } else {
                icon.className = 'fa-solid fa-plus';
            }
        });
    });
</script>
</body>
</html>
