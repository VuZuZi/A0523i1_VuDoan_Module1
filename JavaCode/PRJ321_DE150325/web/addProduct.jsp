<%-- 
    Document   : addProduct
    Created on : 14-07-2023, 08:11:44
    Author     : dinhv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
</head>
<body>
    <h1>Add Product</h1>
    <form action="productDAO" method="POST">
        <label for="productId">Product ID:</label>
        <input type="text" name="productId" id="productId" required><br>

        <label for="productName">Product Name:</label>
        <input type="text" name="productName" id="productName" required><br>

        <label for="unit">Unit:</label>
        <input type="text" name="unit" id="unit" required><br>

        <label for="price">Price:</label>
        <input type="number" name="price" id="price" required><br>

        <input type="submit" value="Add Product">
    </form>
</body>
</html>
