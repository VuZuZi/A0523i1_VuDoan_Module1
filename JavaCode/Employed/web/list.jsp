<%--<%@page contentType="text/html" import="dao*,java.util.*" pageEncoding="utf-8" %>--%>
<% response.setCharacterEncoding("UTF-8"); %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="show" class="dao.DAO"></jsp:useBean>
 <section class="col-9">
   <h1>List of Employees</h1>
   <table border="1" style="width: 100%">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Phone</th>
                <th>Mail</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${show.getAllEmployee()}" var="e">
                <tr>
                    <td><a href="show_inforbyid" class="infoShow">${e.id}</a></td>
                    <td>${e.name}</td>
                    <td>${e.gender}</td>
                    <td>${e.phone}</td>
                    <td>${e.mail}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table><HR>
<!--<A href="create">Add more..</a>-->
</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
