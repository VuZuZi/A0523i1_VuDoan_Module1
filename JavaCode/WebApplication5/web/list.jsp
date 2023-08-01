<%@page import="entity.Employee"%>
<%--<%@page contentType="text/html" import="model.*,java.util.*" pageEncoding="utf-8" %>--%>
<% response.setCharacterEncoding("UTF-8"); %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>
<jsp:useBean id="list" class="java.util.ArrayList" scope="session"/>
<!-- start the middle column -->

<section>
    <h1>Student List</h1>
<table>
            <tr>
                <th>Employee ID</th>
                <th>Name</th>
                <th>Position</th>
                <!-- Thêm các c?t khác tùy ý -->
            </tr>
            <c:forEach items="${a}" var="employee">
                <tr>
                    <td>${employee.id}</td>
                    <td>${employee.name}</td>
                    <td>${employee.gender}</td>
                    <!-- Thêm các c?t khác tùy ý -->
                </tr>
            </c:forEach>
        </table>
<HR>
<A href="create">Add more..</a>
</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
