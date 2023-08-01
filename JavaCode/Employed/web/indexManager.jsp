<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includeManager/header.jsp" %>
<%@ include file="/includeManager/column_left_home.jsp" %>
<jsp:useBean id="dao" class="dao.DAO" scope="request"></jsp:useBean>
<!-- start the middle column -->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello managerment</h1>
    </body>
</html>
<%--<%@ include file="/includeManager/column_right_news.jsp" %>--%>
<%@ include file="/includeManager/footer.jsp" %>
