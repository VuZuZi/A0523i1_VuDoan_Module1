<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includeManager/header.jsp" %>
<%@ include file="/includeManager/column_left_home.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="show" class="dao.DAO"></jsp:useBean>
<style>
  td {
    text-align: center;
    font-family: monospace;
  }

  table {
    border: 1px solid black;
    background-color: #f2f2f2; /* Set the background color for the table */
    width: 100%; /* Make the table width fill the available space */
    border-collapse: collapse; /* Remove space between table cells */
  }
</style>

<section>
    <form action="" method="post">
  <h1>--List of Employees--</h1>
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
            <!--<form action="update" method="POST">-->
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
              
                <!--<a href="update?idE=$ {e.id}">Update</a>-->
                <!--<a href="update?idE" onclick="showMess($ {e.id})">Update</a>-->

<!--              </form>-->
              <!--<input hre type="submit" value="update">-->
              <!--truyền ide = e.id về doGet servlet deleteE - ->-->
          </td>
          <td>
              <a href="dele?idE=${e.id}">Delete</a>
<!--              <a href="#"
                 onclick="showMes($ {e.id})">Delete</a>-->
         </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
  <hr> 
  </form
 
</section>

<script>
    function showMess(id){
        var xacNhan = confirm('are you sure to update');
        if (xacNhan) {
            
} else {
}
    }
</script>

<%--<%@ include file="/includeManager/column_right_news.jsp" %>--%>
<%@ include file="/includeManager/footer.jsp" %>
