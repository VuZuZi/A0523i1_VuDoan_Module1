<%@page contentType="text/html" errorPage="error.jsp"  pageEncoding="utf-8" %>
<%@ include file="/includeManager/header.jsp" %>
<%@ include file="/includeManager/column_left_home.jsp" %>

<!-- start the middle column -->
<section>
    <h1>--Create Employee--</h1>
    <form action="create" method="POST">
        <label>Employee ID</label><input type="text" name="id" /><br>
        <label>Employee Name</label><input type="text" name="name"/><br>
        <label>Employee Gender</label>
        <select name="gender">
            <option value="M">Male</option>
            <option value="F">FeMale</option>
            <option value="O">LGBT</option>
        </select><br/>
        <label>Employee Phone</label><input type="text" name="phone"/><br>
        <label>Employee Mail</label><input type="text" name="mail"/><br>
        <label>Employee Address</label><input type="text" name="address"/><br>
        <label>Employee Birth day</label><input type="date" name="birth"/><br>
        <label>Employee Start date</label><input type="date" name="startdate"/><br>
        <label>Employee ID Room</label><input type="text" name="idR"/><br>
        <label>ID people Relatives</label><input type="text" name="idP"/><br>
        <label>Employee img</label><input type="text" name="img"/><br>
        <input type="submit" value="Add" />
    </form>
</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
