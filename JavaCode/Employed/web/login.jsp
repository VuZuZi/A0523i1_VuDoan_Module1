<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_login.jsp" %>
<%  %>
<!-- start the middle column -->

<section>
    <h1>Welcome to FPT Library Management System</h1>
    
<!--    <form action="Login" method="post">
        <label for="user">username: </label> <input id="user" type="text"><br>
        
        <label for="pass">password: </label> <input id="pass" type="password"><br>
        <label></label>
        <input type="submit" value="login">
           
        
    </form>-->
    <form action="Login" method="post">
        <label for="user">username: </label> <input id="user" type="text" name="user"><br>
        <label for="pass">password: </label> <input id="pass" type="password" name="pass"><br>
    <label></label>
        <input type="submit" value="login">
    </form>

    <p>${erpas}</p>
    <p>Only manager to login</p>

</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
