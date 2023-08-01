<%@page import="model.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>
<jsp:useBean id="list" class="java.util.ArrayList" scope="session"/> 
<!-- start the middle column -->

<section>
    <%
        String id = request.getParameter("id");
//        ArrayList<Course> listCourse = ((CourseList)request.getServletContext().getAttribute("cList")).getAll();
        ArrayList<Course> listCourse = (ArrayList<Course>) request.getSession().getAttribute("list");
        Course rCourse = new Course();
        for(Course c: listCourse)
        {
            if (c.getCourseID().equals(id)) {
                rCourse = new Course(c);
                break;
                }    
        }
    %>
    <%
        out.write("<h1>Course Information </h1>\n"+
                   "<h3>CourseID: "+rCourse.getCourseID()+"</h3>\n"+
                   "<h3>CourseName: "+rCourse.getCourseName()+"</h3><br>"+
                   "<h3>List of Student</h3>"+
                "<Table border=\"1\"><TR><TH>ID</TH><TH>Name </TH><TH>Gender</TH><TH>DOB</TH></TR>");
        for(Student s: CourseDB.listCourseStudent(id)){ 
            out.write("<TR><TD>"+s.getId()+"</TD><TD>"+s.getName()+"</TD><TD>"+s.getGender()+"</TD><TD>"+s.getDob()+"</TD></TR>");
        }
        out.write("</Table>");
    %>
</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
