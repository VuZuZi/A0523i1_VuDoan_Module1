<%-- 
    Document   : Calculator
    Created on : 15 thg 6, 2023, 14:13:49
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
                <td><input type="number" name="n1"></td>
            </tr>
            <tr>
                <td>Second: </td>
                <td><input type="number" name="n2"></td>                
            </tr>
            <tr>
                <td>Operator </td>
                <td>
                    <section>
                        <option id="Cong">+</option>
                        <option id="tru">-</option>
                        <option id="nhan">*</option>
                        <option id="chia">/</option>
                    </section>
                </td>                
            </tr>
            <tr>
                <td></td>
                <td>
                    <button type="button" id="suc" >Compute</button>
                </td>
            </tr>
            <tr>
                <td>Result:</td>
                <td><<input type="number" name="display"></td>
            </tr>
        </table>
    </body>
</html>
