<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%
    Boolean adminLoggedIn = (Boolean) session.getAttribute("adminLoggedIn");
    if (adminLoggedIn == null || !adminLoggedIn) {
        response.sendRedirect(request.getContextPath() + "/adminLogin.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css">
</head>
<body>
<a href="${pageContext.request.contextPath}/AdminLogoutServlet">Logout</a>
<div class="container">
    <h2>Admin Login</h2>
    <form method="POST" action="${pageContext.request.contextPath}/AdminLoginServlet">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <button type="submit">Login</button>
    </form>
</div>
</body>
</html>
