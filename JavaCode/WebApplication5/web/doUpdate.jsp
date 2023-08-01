<%@page contentType="text/html" errorPage="error.jsp"  import="model.*" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>
<jsp:useBean id="sv" class="model.Student" scope="session"/>
<jsp:setProperty name="sv" property="*"/>
<!-- start the middle column -->

<section>
    <jsp:forward page="update"/>   
</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
