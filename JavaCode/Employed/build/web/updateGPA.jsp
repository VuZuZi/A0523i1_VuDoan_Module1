<%@page import="java.util.ArrayList"%>
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<!DOCTYPE html>

<style>
    section input[type="text"] {
        width : 3em;
    }
</style>

<section>
    <%
        String id = request.getParameter("id");
        request.getSession().setAttribute("id", id);
    %>
    <form action="confirmGPA.jsp" method="POST">
        <h1>Update GPA</h1> <br>
        <h2>Course: ${id}</h2> <br>
        <Table border="1">
            <TR><TH>Student ID</th><TH>Student Name</th><TH>GPA</th></TR>
                    <!--%
                        for (Student s : CourseDB.listCourseStudent(id)) {
                            out.write("<TR><TD>" + s.getId() + "</TD><TD>" + s.getName() + "</TD><TD><input name=\"gpa-"+s.getId()+"\" type=\"text\"></TD></TR>");
                        }
                        out.write("</Table>");
                    %-->
                    <%
                        for (Student s : CourseDB.listCourseStudent(id)) {
                            out.write("<TR><TD>" + s.getId() + "</TD><TD>" + s.getName() + "</TD><TD><input name=\"gpa\" type=\"text\"></TD></TR>");
                        }
                        out.write("</Table>");
                    %>
        </table><HR>
        <input type="submit" value="Update" />
    </form>
    <% session.setAttribute("id", id);%>
</section>

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
