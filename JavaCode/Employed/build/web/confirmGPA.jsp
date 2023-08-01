<%@page contentType="text/html" import="model.*"  pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>
<jsp:useBean id="id" class="String" scope="session"/> 
<jsp:useBean id="gpa" class="java.util.ArrayList<Float>" scope="session"/> 
<jsp:setProperty name="gpa" property="*"/>

<section>
   <h1>Information of new Course </h1>
    <form action="newCourse" method="POST">
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
        </table>
        <input type="submit" value="Confirm" />&nbsp;
        <input type="Button" value="Back" onclick="javascript:history.go(-1);">
    </form>
</section>


<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
