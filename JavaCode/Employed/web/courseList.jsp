<%@page import="java.util.ArrayList"%>
<%@page import="model.Course"%>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>
<jsp:useBean id="list" class="java.util.ArrayList" scope="session"/> 
<!-- start the middle column -->

<section>
 
    <h1>Course List </h1>
    <Table border="1"><TR><TH>ID</TH><TH>Name </TH><TH>Gender</TH><TH>DOB</TH><TH>Detail</TH><TH class="updatecol">Update GPA</TH></TR>
        <%  ArrayList<Course> cList = list;
        for(Course c:cList){
            out.write("<TR><TD>"+c.getCourseID()+"</TD><TD>"+c.getSubjectID()+"</TD><TD>"+c.getCourseName()+"</TD><TD>"+c.getCourseGroup()+"</TD>");
            out.write("<TD><A href='courseInfo.jsp?id="+c.getCourseID()+"'>Detail</TD>"+
            "<TD><A href='updateGPA.jsp?id="+c.getCourseID()+"'>Update</TD></TR>");
        }
        out.write("</Table>");
        
        
        %>
</section> 

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
