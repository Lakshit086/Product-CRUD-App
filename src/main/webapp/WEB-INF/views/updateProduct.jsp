<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/10/2024
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="base.jsp"%>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Update Product</title>
</head>
<body>
<div class="container mt-5">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <h1 class="text-center mb-3">Update the Product Details</h1>

            <form action="${pageContext.request.contextPath}/handle-product" method="POST">
                <div class="form-group mb-3">
                    <label for="id">Product Id</label>
                    <input type="text" class="form-control" id="id" aria-describedby="emailHelp" name="id"
                           placeholder="${product.id}" value="${product.id}" disabled>
                </div><div class="form-group mb-3">
                    <label for="name">Product Name</label>
                    <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name"
                           placeholder="${product.name}" value="${product.name}">
                </div>
                <div class="form-group mb-3">
                    <label for="name">Product Description</label>
                    <textarea class="form-control" id="description" aria-describedby="emailHelp" name="description" rows="5"
                              placeholder="${product.description}">${product.description}</textarea>
                </div>
                <div class="form-group mb-3">
                    <label for="price">Product Price</label>
                    <input type="text" class="form-control" id="price" aria-describedby="emailHelp" name="price"
                           placeholder="${product.price}" value="${product.price}">
                </div>
                <div class="container text-center">
                    <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
                    <button type="submit" class="btn btn-warning">Update</button>
                </div>
            </form>
        </div>
    </div>

</div>
</body>
</html>
