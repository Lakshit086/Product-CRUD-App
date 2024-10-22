<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="base.jsp" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Product App</title>
</head>
<body>
<div class="container mt-5">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <h1 class="text-center mb-5">Welcome to Product App</h1>

            <table class="table">
                <thead class="table-dark">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Product Description</th>
                    <th scope="col">Product Price</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${products}" var="product">
                    <tr>
                        <th scope="row">${product.id}</th>
                        <td>${product.name}</td>
                        <td>${product.description}</td>
                        <td class="fw-bold">&#8377 ${product.price}</td>
                        <td>
                            <a style="padding: 5px" href="delete/${product.id}"><i class="fa-solid fa-trash-can" style="color: #ed0c0c;"></i></a>
                            <a style="padding: 5px" href="update/${product.id}"><i class="fa-regular fa-pen-to-square" style="color: #1b79c0;"></i></a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <div class="container text-center">
                <a href="addProduct" class="btn btn-outline-success">Add Product</a>
            </div>

        </div>
    </div>
</div>
</body>
</html>

