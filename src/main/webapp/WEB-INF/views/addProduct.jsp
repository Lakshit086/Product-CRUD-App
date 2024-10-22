<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/10/2024
  Time: 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="base.jsp" %>
</head>
<body>
<div class="container mt-5">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <h1 class="text-center mb-3">Fill the Product Details</h1>

            <form action="handle-product" method="POST">
                <div class="form-group mb-3">
                    <label for="name">Product Name</label>
                    <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name"
                           placeholder="Enter your Product Name">
                </div>
                <div class="form-group mb-3">
                    <label for="name">Product Description</label>
                    <textarea class="form-control" id="description" aria-describedby="emailHelp" name="description" rows="5"
                              placeholder="Enter your Product description"></textarea>
                </div>
                <div class="form-group mb-3">
                    <label for="price">Product Price</label>
                    <input type="text" class="form-control" id="price" aria-describedby="emailHelp" name="price"
                           placeholder="Enter your Product price">
                </div>
                <div class="container text-center">
                    <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>

</div>

</body>
</html>
