<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_admin.jsp" %>

<!-- start the middle column -->

<section>
    <h1>Management System</h1>
    
    <form action="Login" method="post">
        <label for="user">username: </label> <input id="user" type="text"><br>
        
        <label for="pass">password: </label> <input id="pass" type="password"><br>
        <label></label>
        <input type="submit" value="login">
           
        
    </form>
    
    <p>Thanks for visiting. Make yourself at home. We 
    hope you like it as much as we do.</p>

</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
