<%@page contentType="text/html" import="model.*"  pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>
<jsp:useBean id="course" class="model.Course" scope="session"/> 
<jsp:setProperty name="course" property="*"/>

<section>
   <h1>Information of new Course </h1>
    <form action="newCourse" method="POST">
        <label>Subject ID</label>${course.subjectID}<br>
        <label>Course name</label>${course.courseName}<br>
        <label>Course group</label>${course.courseGroup}<br>
        <input type="submit" value="Confirm" />&nbsp;
        <input type="Button" value="Back" onclick="javascript:history.go(-1);">
    </form>
</section>


<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
