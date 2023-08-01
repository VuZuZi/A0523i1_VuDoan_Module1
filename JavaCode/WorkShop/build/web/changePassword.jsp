<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>
<% request.getSession().setAttribute("lm", request.getAttribute("lm"));  %>
<!--%pageContext.setAttribute("lm",request.getAttribute("lm"),PageContext.APPLICATION_SCOPE);%-->

<!-- start the middle column -->

<section>
    <form action="changePass" method="POST">
            <table border="1" width="30">
                <thead>
                    <tr>
                        <th>Change password</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>username</label><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td><label>old password</label><input type="text" name="old-password" value="" /></td>
                    </tr>
                    <tr>
                        <td><label>new password</label><input type="text" name="new-password" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Change Password" /></td>
                    </tr>
                </tbody>
            </table>

        </form>


</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
