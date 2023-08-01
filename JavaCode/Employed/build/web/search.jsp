<%@page contentType="text/html" errorPage="error.jsp"  pageEncoding="utf-8" %>
<%@ include file="/includeManager/header.jsp" %>
<%@ include file="/includeManager/column_left_home.jsp" %>
<!-- start the middle column -->

<section>
    <h1>Relatives Searching</h1>
    <form action="search" method="POST">
        <label>Search id</label><input id="idE" type="text" name="sValue"/><br>
        <input type="submit" value="Search" />
    </form>
    </section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
