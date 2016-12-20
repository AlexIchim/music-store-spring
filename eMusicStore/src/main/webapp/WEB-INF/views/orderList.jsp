<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Products</h1>

            <p class="lead">Check all the awesome products available now!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>OrderNr</th>
                <th>Date</th>
                <th>Items</th>
                <th>TotalPrice</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${orders}" var="order" varStatus="index">
                <tr>
                    <td>${index.count}</td>
                    <td>${order.orderDate}</td>
                    <td>
                        <c:forEach items="${order.cart.cartItems}" var="cartItem">
                            <p>
                                <a href="/eMusicStore//product/viewProduct/${cartItem.product.productId}">${cartItem.product.productName}</a>
                                x ${cartItem.quantity}</p>
                        </c:forEach>
                    </td>
                    <td>${order.cart.grandTotal} USD</td>
                        <%--                    <td>
                                                <a href="<spring:url value="/product/viewProduct/${product.productId}" />">
                                                    <span class="glyphicon glyphicon-info-sign"> </span>
                                                </a>
                                            </td>--%>
                </tr>
            </c:forEach>

        </table>

<%@include file="/WEB-INF/views/template/footer.jsp" %>