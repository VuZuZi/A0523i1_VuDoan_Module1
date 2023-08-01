<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includeRelatives/header.jsp" %>
<%@ include file="/includeRelatives/column_left_home.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="show" class="dao.DAO"></jsp:useBean>
<section>
  <h1>--List of Employees--</h1>
  <table>
       <tr>
            <td>ID Employee</td>
            <td>
                <input type="number">
            </td>
            <td>
                <button type="submit">Update</button>
            </td>
            <td>
                <form action="deleteE" method="POST">
                    <button type="submit">Delete</button>
                </form>
            </td>
        </tr>
  </table>
  <table border="1" style="
    text-align: center;
    font-family: monospace;
">
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>G</th>
        <th>Phone</th>
        <th class="mail">Mail</th>
        <th>Address</th>
        <th>Birth day</th>
        <th>Start date</th>
        <th>IdR</th>
        <th>IdP</th>
        <th>Image</th>
        <th>Update</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${show.getAllEmployee()}" var="e">
        <tr>
          <td><a href="show_inforbyid" class="infoShow">${e.id}</a></td>
          <td>${e.name}</td>
          <td>${e.gender}</td>
          <td>${e.phone}</td>
          <td class="mail">${e.mail}</td>
          <td>${e.address}</td>
          <td>${e.birth}</td>
          <td>${e.startDate}</td>
          <td>${e.idRoom}</td>
          <td>${e.idPeople}</td>
          <td >
              <img src="${e.img}" style="width: 100%">
          </td>
          <td>
              <a href="#">Update</a>
              <!--truyền ide = e.id về doGet servlet deleteE - ->-->
          </td>
          <td>
              <a href="deleteE?idE=${e.id}">Delete</a>
         </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
  <hr> 
  <!-- Các nội dung khác của section (nếu có) 
  <!--<a href="create">Add more..</a>-->
</section>
<%--<%@ include file="/includeManager/column_right_news.jsp" %>--%>
<%@ include file="/includeRelativess/footer.jsp" %>
