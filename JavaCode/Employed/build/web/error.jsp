<%@page contentType="text/html" isErrorPage="true" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<!-- start the middle column -->

<section>
    <h1>Welcome to FPT Management System</h1>
    <P>Something wrong!!!<P>
    <%=exception.getMessage()%>
    
</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
