<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Customer</h1>

            <p class="lead">Please update customer information here !</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/customer/editCustomer" method="post"
                   commandName="customer">

            <form:hidden path="customerId" value="${customer.customerId}"/>

        <div class="form-group">
            <label for="customerName">Name</label>
            <form:input path="customerName" id="customerName" class="form-control" value="${customer.customerName}"/>
        </div>

        <div class="form-group">
            <label for="customerEmail">Email</label>
            <form:input path="customerEmail" id="customerEmail" class="form-control" value="${customer.customerEmail}"/>
        </div>

        <div class="form-group">
            <label for="customerPhone">Phone</label>
            <form:input path="customerPhone" id="customerPhone" class="form-control" value="${customer.customerPhone}"/>
        </div>

        <div class="form-group">
            <label for="username">Username</label>
            <form:input path="username" id="username" class="form-control" value="${customer.username}"
                        readonly="true"/>
        </div>

        <div class="form-group">
            <label for="enabled">Enabled</label>
            <form:checkbox path="enabled" id="enabled" name="enabled" checked="true"/>
        </div>


            <%--<div class="form-group">
                <form:input type="hidden" path="password" id="password" class="form-control" value="${customer.password}"/>
            </div>--%>

        <br><br>

        <h4>Billing Address</h4>
        <div class="form-group">
            <label for="streetName">Street Name</label>
            <form:input path="billingAddress.streetName" id="streetName" class="form-control"
                        value="${customer.billingAddress.streetName}"/>
        </div>

        <div class="form-group">
            <label for="apartmentNumber">Apartment Number</label>
            <form:input path="billingAddress.apartmentNumber" id="apartmentNumber" class="form-control"
                        value="${customer.billingAddress.apartmentNumber}"/>
        </div>

        <div class="form-group">
            <label for="city">City</label>
            <form:input path="billingAddress.city" id="city" class="form-control"
                        value="${customer.billingAddress.city}"/>
        </div>

        <div class="form-group">
            <label for="state">State</label>
            <form:input path="billingAddress.state" id="state" class="form-control"
                        value="${customer.billingAddress.state}"/>
        </div>

        <div class="form-group">
            <label for="country">Country</label>
            <form:input path="billingAddress.country" id="country" class="form-control"
                        value="${customer.billingAddress.country}"/>
        </div>

        <div class="form-group">
            <label for="zipCode">ZipCode</label>
            <form:input path="billingAddress.zipCode" id="zipCode" class="form-control"
                        value="${customer.billingAddress.zipCode}"/>
        </div>


        <br><br>
        <h4>Shipping Address</h4>
        <div class="form-group">
            <label for="streetName1">Street Name</label>
            <form:input path="shippingAddress.streetName" id="streetName1" class="form-control"
                        value="${customer.shippingAddress.streetName}"/>
        </div>

        <div class="form-group">
            <label for="apartmentNumber1">Apartment Number</label>
            <form:input path="shippingAddress.apartmentNumber" id="apartmentNumber1" class="form-control"
                        value="${customer.shippingAddress.apartmentNumber}"/>
        </div>

        <div class="form-group">
            <label for="city1">City</label>
            <form:input path="shippingAddress.city" id="city1" class="form-control"
                        value="${customer.shippingAddress.city}"/>
        </div>

        <div class="form-group">
            <label for="state1">State</label>
            <form:input path="shippingAddress.state" id="state1" class="form-control"
                        value="${customer.shippingAddress.state}"/>
        </div>

        <div class="form-group">
            <label for="country1">Country</label>
            <form:input path="shippingAddress.country" id="country1" class="form-control"
                        value="${customer.shippingAddress.country}"/>
        </div>

        <div class="form-group">
            <label for="zipCode1">ZipCode</label>
            <form:input path="shippingAddress.zipCode" id="zipCode1" class="form-control"
                        value="${customer.shippingAddress.zipCode}"/>
        </div>

        <br><br>

        <input type="submit" value="Submit" class="btn btn-default">
        <a href="<c:url value="/admin/customer" /> " class="btn btn-default">Cancel</a>
        </form:form>

<%@include file="/WEB-INF/views/template/footer.jsp" %>