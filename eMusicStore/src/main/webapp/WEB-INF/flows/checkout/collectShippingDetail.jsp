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
        <%@include file="/WEB-INF/views/template/header.jsp"%>
        <div class="container-wrapper">
            <div class="container" >
                <div class="page-header">
                    <h1>Customer</h1>

                    <p class="lead">Customer Details</p>
                </div>

                <form:form commandName="order" class="form-horizontal" >
                <h3>Basic Info</h3>

                <div class="form-group">
                    <label for="name">Name</label>
                    <form:input path="cart.customer.customerName"  id="name" class="form-control" />
                    <form:errors path="cart.customer.customerName" cssStyle="color: #ff0000" />
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <form:input path="cart.customer.customerEmail"  id="email" class="form-control" />
                    <form:errors path="cart.customer.customerEmail" cssStyle="color: #ff0000" />
                </div>

                <div class="form-group">
                    <label for="phone">Phone</label>
                    <form:input path="customerPhone"  id="phone" class="form-control" />
                    <form:errors path="cart.customer.customerPhone" cssStyle="color: #ff0000" />
                </div>


                <h3>Shipping Address</h3>


                <div class="form-group">
                    <label for="shippingStreet">Street Name</label>
                    <form:input path="cart.customer.shippingAddress.streetName"  id="shippingStreet" class="form-control" />
                    <form:errors path="cart.customer.shippingAddress.streetName" cssStyle="color: #ff0000" />
                </div>


                <div class="form-group">
                    <label for="shippingApartmentNumber">Apartment Number</label>
                    <form:input path="cart.customer.shippingAddress.apartmentNumber"  id="shippingApartmentNumber" class="form-control" />
                    <form:errors path="cart.customer.shippingAddress.apartmentNumber" cssStyle="color: #ff0000" />
                </div>


                <div class="form-group">
                    <label for="shippingCity">City</label>
                    <form:input path="cart.customer.shippingAddress.city"  id="shippingCity" class="form-control" />
                    <form:errors path="cart.customer.shippingAddress.city" cssStyle="color: #ff0000" />
                </div>

                <div class="form-group">
                    <label for="shippingCountry">Country</label>
                    <form:input path="cart.customer.shippingAddress.country"  id="shippingCountry" class="form-control" />
                    <form:errors path="cart.customer.shippingAddress.country" cssStyle="color: #ff0000" />
                </div>

                <div class="form-group">
                    <label for="shippingZip">Zip</label>
                    <form:input path="cart.customer.shippingAddress.zipCode"  id="shippingZip" class="form-control" />
                    <form:errors path="cart.customer.shippingAddress.zipCode" cssStyle="color: #ff0000" />
                </div>

                <input type="hidden"  name="_flowExecutionKey" />

                <br><br>

                <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Back</button>
                <input type="submit" value="submit" class="btn btn-default" name="_eventId_shippingDetailCollected" />
                <button class="btn btn-default" name="_eventId_cancel">Cancel</button>
                </form:form>

        <%@include file="/WEB-INF/views/template/footer.jsp"%></title>
