<%-- 
    Document   : newjsp
    Created on : 24-06-2023, 22:20:02
    Author     : dinhv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <!--action theo url file java-->
         <!--method get, post dẫn tới doget và dopost trong file java-->
        <form action="demo" method="POST">
            <!--acction có thể link tới file jsp-->
       
        <table>
            <tr>
                <td>
                    họ tên
                </td>
                <td>
                    <input type="text" name="name">
                </td>
                <td>
                    <button type="submit">a</button>
                </td>
            </tr>
        </table>
            </form>
         ${a}
    </body>
</html>
