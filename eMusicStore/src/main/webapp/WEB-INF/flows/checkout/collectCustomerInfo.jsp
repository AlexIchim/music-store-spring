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


                <h3>Billing Address</h3>


                <div class="form-group">
                    <label for="billingStreet">Billing Street</label>
                    <form:input path="cart.customer.billingAddress.streetName"  id="billingStreet" class="form-control" />
                    <form:errors path="cart.customer.billingAddress.streetName" cssStyle="color: #ff0000" />
                </div>


                <div class="form-group">
                    <label for="billingApartmentNumber">Apartment Number</label>
                    <form:input path="cart.customer.billingAddress.apartmentNumber"  id="billingApartmentNumber" class="form-control" />
                    <form:errors path="cart.customer.billingAddress.apartmentNumber" cssStyle="color: #ff0000" />
                </div>


                <div class="form-group">
                    <label for="billingCity">City</label>
                    <form:input path="cart.customer.billingAddress.city"  id="billingCity" class="form-control" />
                    <form:errors path="cart.customer.billingAddress.city" cssStyle="color: #ff0000" />
                </div>

                <div class="form-group">
                    <label for="billingCountry">Country</label>
                    <form:input path="cart.customer.billingAddress.country"  id="billingCountry" class="form-control" />
                    <form:errors path="cart.customer.billingAddress.country" cssStyle="color: #ff0000" />
                </div>

                <div class="form-group">
                    <label for="billingZip">Zip</label>
                    <form:input path="cart.customer.billingAddress.zipCode"  id="billingZip" class="form-control" />
                    <form:errors path="cart.customer.billingAddress.zipCode" cssStyle="color: #ff0000" />
                </div>

                <input type="hidden"  name="_flowExecutionKey" />

                <br><br>
                <input type="submit" value="submit" class="btn btn-default" name="_eventId_customerInfoCollected" />
                <button class="btn btn-default" name="_eventId_cancel">Cancel</button>
                </form:form>

        <%@include file="/WEB-INF/views/template/footer.jsp"%></title>
