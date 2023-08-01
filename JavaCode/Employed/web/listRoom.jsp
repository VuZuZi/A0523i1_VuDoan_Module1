<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includeRoom/header.jsp" %>
<%@ include file="/includeRoom/column_left_home.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="show" class="dao.DAO"></jsp:useBean>
<section>
  <h1>--List of Rooms--</h1>
 
  <table border="1" style="
    text-align: center;
    font-family: monospace;
">
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Trưởng Phòng</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${show.getInforRoom()}" var="r">
        <tr>
           
          <td>${r.rID}</td>
          <td>${r.roomName}</td>
          <td>${r.tpId}</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
  <hr> 
  <!-- Các nội dung khác của section (nếu có) 
  <!--<a href="create">Add more..</a>-->
</section>
<%--<%@ include file="/includeManager/column_right_news.jsp" %>--%>
<%@ include file="/includeManager/footer.jsp" %>
