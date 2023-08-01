
<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>
<% request.getSession().setAttribute("newPass", request.getAttribute("newPass")); 
    String newpass = (String)request.getAttribute("newPass");
    out.print(newpass);%>
<!-- start the middle column -->
<section>
    <form action="login" method="POST">
            <table border="1" width="30">
                <thead>
                    <tr>
                        <th>Login page</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>username</label><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td><label>password</label><input type="text" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                    </tr>
                </tbody>
            </table>

        </form>

</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
