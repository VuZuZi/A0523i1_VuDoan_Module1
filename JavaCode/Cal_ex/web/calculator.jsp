<%-- 
    Document   : calculator
    Created on : 20-06-2023, 14:14:48
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
        <table>
            <tr>
                <td>First: </td>
                <td>
                    <input type="text" name="a">
                </td>
            </tr>
            <tr>
                <td>Second: </td>
                <td>
                    <input type="text" name="b">
                </td>
            </tr>
            <tr>
                <td>Operator</td>
                <td>
                    <select name="ope">
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
                    <button>Compute</button>
                </td>
            </tr>
            <tr>
                <td>Resoult: </td>
                <td>
                    <input type="text">
                </td>
            </tr>
        </table>
    </body>
</html>
