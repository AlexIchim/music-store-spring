<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<div class="container-wrapper">
    <div class="container" >
        <div class="page-header">
            <h1>Product Inventory Page</h1>

            <p class="lead">This is the product inventory page !</p>
        </div>

        <table class="table table-striped table-hover" >
            <thead>
            <tr class="bg-success">
                <th>Photo thumb</th>
                <th>Title</th>
                <th>Author</th>
                <th>Year</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td>
                        <img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image"
                             style="width:250px; height:250px;"/>
                    </td>
                    <td>${product.productName}</td>
                    <td>${product.productAuthor}</td>
                    <td>${product.productYear}</td>
                    <td>${product.productPrice} USD</td>
                    <td>
                        <a href="<spring:url value="/product/viewProduct/${product.productId}" />">
                            <span class="glyphicon glyphicon-info-sign"> </span>
                        </a>
                        <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />">
                            <span class="glyphicon glyphicon-remove"> </span>
                        </a>
                        <a href="<spring:url value="/admin/product/editProduct/${product.productId}" />">
                            <span class="glyphicon glyphicon-pencil"> </span>
                        </a>
                    </td>
                </tr>
            </c:forEach>

        </table>

        <a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-primary">Add Products</a>

<%@include file="/WEB-INF/views/template/footer.jsp"%>