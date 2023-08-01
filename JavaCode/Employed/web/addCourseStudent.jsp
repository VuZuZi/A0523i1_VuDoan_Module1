<%@page contentType="text/html" import="model.*,java.util.*" pageEncoding="utf-8"%>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>
<jsp:useBean id="liststd" class="java.util.ArrayList" scope="session"/> 
<jsp:useBean id="course" class="model.Course" scope="session"/> 
<!--jsp:useBean id="sList" class="model.StudentList" scope="application"/> 
<!-- start the middle column -->


<section>
    <style type="text/css">
        #table td input{
            width : 7.5em; 
            }
        #table .check{
            width: 1em !important;
            }
    </style>
    
    <form action = "studentCourse" method="POST">
        <h1>Add Student To Course </h1>
        
    <% out.print("<h2>Course: "+request.getAttribute("id")+"</h2>");%>
    <Table border="1"><TR><TH>ID</TH><TH>Name </TH><TH>Gender</TH><TH>DOB</TH><TH colspan="2">Operation</TH></TR>
    <%  ArrayList<Student> rList=(ArrayList<Student>)session.getAttribute("liststd");
        int i =0;
        for(Student s:rList){
            out.write("<TR><TD>"+s.getId()+"</TD><TD>"+s.getName()+"</TD><TD>"+s.getGender()+"</TD><TD>"+s.getDob()+"</TD>");
            out.write("<TD><INPUT name=\"add-"+i+"\" type=\"checkbox\" style=\" width = 5em; \"></TD></TR>");
            i++;
        }
        out.write("</Table><input type=\"submit\" value=\"Add\" name=\"add_btn\" style=\"width:10%;\"/>");
    %>
    
    </form>
    
        
        
</section> 

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
