<%-- 
    Document   : index
    Created on : 16-07-2023, 23:08:34
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
        <form action="calculator" method="post">
        <table>
            <tr>
                <td>First: </td>
                <td>
                    <input type="text" name="a" value="${f}">
                </td>
            </tr>
            <tr>
                <td>Second: </td>
                <td>
                    <input type="text" name="b" value="${s}">
                </td>
            </tr>
            <tr>
                <td>Operator</td>
                <td>
                    <select name="ope">
                        <option ${add}>+</option>
                        <option ${sub}>-</option>
                        <option ${mul}>*</option>
                        <option ${divv}>/</option>
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
                <td>Resoult: </td>
                <td>
                    <input type="text" value="${r}">
                </td>
            </tr>
        </table>
        </form>
        
        
    </body>
</html>
