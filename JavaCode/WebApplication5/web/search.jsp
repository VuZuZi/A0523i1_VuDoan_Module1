<%@page contentType="text/html" errorPage="error.jsp"  import="model.*" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<!-- start the middle column -->

<section>
    <h1>Student Searching</h1>
    <form action="search" method="POST">
        <label>Search Criteria</label><select name="sCriteria">
            <option value="id">ID</option>
            <option value="name">Name</option>
            <option value="sex">Sex</option>
            <option value="dob">DOB</option>
        </select><br>
        <label>Search Value</label><input type="text" name="sValue"/><br>
        <input type="submit" value="Search" />
    </form>
    </section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
