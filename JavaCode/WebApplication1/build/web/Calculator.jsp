<%-- 
    Document   : Calculator
    Created on : 16 thg 6, 2023, 15:49:48
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
<!--        form giúp chuyền dữ liệu về server-->
        <form action="Calculator" method="post">
        <table>
            <tr>
                <td>First: </td> <td><input type="number" name="n1"></td>
            </tr>
            <tr>
                <td>Second: </td> <td><input type="number" name="n2"></td>
            </tr>
            <tr>
                <td>Operator: </td>
                <td>
                    <select name="op">
                        <option>+</option>
                        <option>-</option>
                        <option>*</option>
                        <option>/</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button type="submit">Compute</button>
                </td>
            </tr>
            <tr>
                <td>Result: </td>
                <td>
                    <input type="text" value="${r}">
                </td>
            </tr>
        </table>
        </form>
    </body>
</html>
