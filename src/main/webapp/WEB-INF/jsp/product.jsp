<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>

<head>
    <meta charset="UTF-8">
       <meta http-equiv="X-UA-Compatible" content="IE=edge">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <title>Document</title>
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
           integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>
        <div class="col-xs-12 col-sm-12 col-md-10">
            <c:if test="${not empty productList}">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Name</th>
                            <th scope="col">Price</th>
                            <th scope="col">image</th>
                            <th scope="col">productDate</th>
                            <th scope="col">quantity</th>
                            <th scope="col">description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="product" items="${productList}" varStatus="index">
                            <tr>
                                <th scope="row" style="padding-top:20px;">${product.id}</th>
                                <td style="padding-top:20px;">${product.name}</td>
                                <td style="padding-top:20px;width: 200px;"><fmt:formatNumber value="${product.price}" pattern="#,##0" /></td>
                                <td style="padding-top:20px;">${product.image}</td>
                                <td style="padding-top:20px;">${product.productDate}</td>
                                <td style="padding-top:20px;">${product.quantity}</td>
                                <td style="padding-top:20px;">${product.description}</td>

                            <tr>
        </td>

        </tr>
        </c:forEach>
        </tbody>
        </table>
        </c:if>
        <c:if test="${productList.size() == 0}">
            <br>
            <div class="alert alert-warning">
                There is no data </div>
        </c:if>
    </div>
</body>
</html>