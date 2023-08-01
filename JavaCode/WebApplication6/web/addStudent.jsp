<%@page contentType="text/html" errorPage="error.jsp"  import="model.*" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<!-- start the middle column -->
<section>
    <h1>Add Student </h1>
    <form action="confirm.jsp" method="POST">
        <label>Student Name</label><input type="text" name="name"/><br>
        <label>Student Gender</label><input type="radio" name="gender" value="M"/>Male<input type="radio" name="gender" value="F"/>Female<input type="radio" name="gender" value="L"/>LBGT<br>
        <label>Student DOB</label><input type="text" name="dob"/><br>
        <input type="submit" value="Add" />
    </form>
</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
