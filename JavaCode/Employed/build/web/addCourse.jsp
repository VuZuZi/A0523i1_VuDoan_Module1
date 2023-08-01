<%@page contentType="text/html" import="model.*"  pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<!-- start the middle column -->

<section>
   <h1>New Course to System</h1>
    <form action="confirmCourse.jsp" method="POST">
        <label>Subject ID</label><input type="text" name="subjectID"/><br>
        <label>Course Name</label><input type="text" name="courseName"/><br>
        <label>Class ID</label><input type="text" name="courseGroup"/><br>
        <input type="submit" value="Add" />
    </form>
   </section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
