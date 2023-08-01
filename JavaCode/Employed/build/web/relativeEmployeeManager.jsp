<%@page contentType="text/html" errorPage="error.jsp"  pageEncoding="utf-8" %>
<%@ include file="/includeManager/header.jsp" %>
<%@ include file="/includeManager/column_left_home.jsp" %>
<jsp:useBean id="show" class="dao.DAO"></jsp:useBean>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section>
    <c:forEach items="${show.getNguoiThanbyId(e.idNt)}" var="e">
                <tr>
                    <td><a href="" class="infoShow">${e.idNt}</a></td>
                    <td>${e.name}</td>
                    <td>${e.phone}</td>
                    <td>${e.address}</td>
                </tr>
            </c:forEach>
</section>
<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>