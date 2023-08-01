<%@page contentType="text/html" errorPage="error.jsp"  import="model.*" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<jsp:useBean id="sv" class="model.Student" scope="session"/>

<!-- start the middle column -->

<section>
  
    <h1>Update Student </h1>
    <form action="doUpdate.jsp" method="POST">
        <label>Student ID</label><input type="text" name="id" value="${sv.id}" disabled="true"/><br>
        <label>Student Name</label><input type="text" name="name" value="${sv.name}"/><br>
        <label>Student Gender</label><input type="radio" name="gender" value="M" ${sv.gender eq 'Male'?"checked":""}/>Male<input type="radio" name="gender" value="F" ${sv.gender eq 'Female'? "checked":""}/>Female<input type="radio" name="gender" value="L" ${sv.gender eq 'LGBT'? "checked" : ""}/>LBGT<br>
        <label>Student DOB</label><input type="text" name="dob" value="${sv.dob}"/><br>
        <input type="submit" value="Update" />
    </form>
</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
