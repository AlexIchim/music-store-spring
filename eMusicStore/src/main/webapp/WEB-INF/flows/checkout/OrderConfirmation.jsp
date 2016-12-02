<%--
  Created by IntelliJ IDEA.
  User: Alex Ichim
  Date: 02.12.2016
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <%@include file="/WEB-INF/views/template/header.jsp"%>
        <div class="container-wrapper">
            <div class="container">
                <div class="page-header">
                    <h1>Order</h1>

                    <p class="lead">Order confirmation</p>
                </div>

                <div class="container">

                    <div class="row">

                        <form:form commandName="order" class="form-horizontal">
                            <div class="well col-xs-10 col-sa-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
                                <h3>Shipping Address</h3>

                                <div class="text-center">
                                    <h1>Recepit</h1>
                                </div>

                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <address>
                                            <strong>Shipping Address</strong><br>
                                                ${order.cart.customer.shippingAddress.streetName}
                                            <br>
                                                ${order.cart.customer.shippingAddress.apartmentNumber}
                                            <br>
                                                ${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.state}
                                            <br>
                                                ${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.zipCode}
                                            <br>
                                        </address>
                                    </div>

                                    <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                        <p>Shipping Date: <fmt:formatDate type="date" value="${now}"/></p>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <address>
                                            <strong>Billing Address</strong><br>
                                                ${order.cart.customer.billingAddress.streetName}
                                            <br>
                                                ${order.cart.customer.billingAddress.apartmentNumber}
                                            <br>
                                                ${order.cart.customer.billingAddress.city}, ${order.cart.customer.billingAddress.state}
                                            <br>
                                                ${order.cart.customer.billingAddress.country}, ${order.cart.customer.billingAddress.zipCode}
                                            <br>
                                        </address>
                                    </div>
                                </div>

                                <div class="row">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>#</th>
                                            <th class="text-center">Price</th>
                                            <th class="text-center">Total</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="cartItem" items="${order.cart.cartItems}">
                                            <tr>
                                                <td class="col-md-9"><em>${cartItem.product.productName}</em></td>
                                                <td class="col-md-1"
                                                    style="text-align: center">${cartItem.quantity}</td>
                                                <td class="col-md-1"
                                                    style="text-align: center">${cartItem.product.productPrice}</td>
                                                <td class="col-md-1"
                                                    style="text-align: center">${cartItem.totalPrice}</td>
                                            </tr>
                                        </c:forEach>

                                        <tr>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>


                                <input type="hidden" name="_flowExecutionKey"/>

                                <br><br>

                                <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Back</button>
                                <input type="submit" value="submit" class="btn btn-default"
                                       name="_eventId_shippingDetailCollected"/>
                                <button class="btn btn-default" name="_eventId_cancel">Cancel</button>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div><%@include file="/WEB-INF/views/template/footer.jsp"%></title>
