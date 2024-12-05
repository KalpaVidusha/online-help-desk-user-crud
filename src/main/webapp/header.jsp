<header class="header">
    <div class="logo">
        <h1>&#160;HELP<span>&#160;DESK</span></h1>
    </div>
    <div class="nav-links">
        <ul>
            <li><a href="index.jsp">HOME</a></li>
            <li><a href="#">About US</a></li>
            <li><a href="#">WORK</a></li>
            <li><a href="#">INFO</a></li>
            <!-- Check if user is logged in -->
            <% if (session.getAttribute("cusDetail") != null) { %>
                <li><a href="useraccount.jsp">My Profile</a></li>
            <% } else { %>
                <li><a href="customerinsert.jsp">REGISTER</a></li>
                <li><a href="login.jsp">LOGIN</a></li>
            <% } %>
        </ul>
    </div>
    <div class="search-container">
        <input type="text" placeholder="Search...">
        <button type="submit">Search</button>
    </div>
</header>
