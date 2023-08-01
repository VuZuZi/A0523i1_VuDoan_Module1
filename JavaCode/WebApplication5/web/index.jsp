<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<!-- start the middle column -->

<section>
    <form action="liste" method="POST">
    <h1>Welcome to Index</h1>
    
    <p>Thanks for visiting.âs Make yourself at home. We 
    hope you like it as much as we do.</p>
    <input type="text" name="hoten"/>
    <input type="submit" value="submit"/>
    <!--// vonglap id1 -> id10 a: href = "servlet?id=${schedule.id}"--> 
    
    
    </form>
</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
