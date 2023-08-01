<%@page contentType="text/html" errorPage="error.jsp"  import="model.*" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>
<jsp:useBean id="sv" class="model.Student" scope="session" />
<jsp:setProperty name="sv" property="*" />
<!-- start the middle column -->

<section>
    <h1>Add Student </h1>
    <form action="create" method="POST">
        <LI>Student Name: ${sv.name}
        <LI>Student Gender: ${sv.gender}
        <LI>Student DOB: ${sv.dob}
            <hr>    
        <input type="submit" value="Confirm" />
        <input type="button" value="Back" onclick="javascript:history.go(-1);" />
    </form>
</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
