<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<div class="container-wrapper">
    <div class="container" >
        <div class="page-header">
            <h1>Register Customer</h1>

            <p class="lead">Please fill in your information below:</p>
        </div>

        <h3>Basic Info</h3>
        <form:form action="${pageContext.request.contextPath}/register"   method="post"
                   commandName="customer">
        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="customerName"  id="name" class="form-control" />
            <form:errors path="customerName" cssStyle="color: #ff0000" />
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <form:input path="customerEmail"  id="email" class="form-control" />
            <form:errors path="customerEmail" cssStyle="color: #ff0000" />
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="customerPhone"  id="phone" class="form-control" />
            <form:errors path="customerPhone" cssStyle="color: #ff0000" />
        </div>

        <div class="form-group">
            <label for="username">Username</label>
            <form:input path="username"  id="username" class="form-control" />
            <form:errors path="Username" cssStyle="color: #ff0000" />
        </div>


        <div class="form-group">
            <label for="password">Password</label>
            <form:password path="password"  id="password" class="form-control" />
            <form:errors path="password" cssStyle="color: #ff0000" />
        </div>


        <h3>Billing Address</h3>


        <div class="form-group">
            <label for="billingStreet">Billing Street</label>
            <form:input path="billingAddress.streetName"  id="billingStreet" class="form-control" />
            <form:errors path="billingAddress.streetName" cssStyle="color: #ff0000" />
        </div>


        <div class="form-group">
            <label for="billingApartmentNumber">Apartment Number</label>
            <form:input path="billingAddress.apartmentNumber"  id="billingApartmentNumber" class="form-control" />
            <form:errors path="billingAddress.apartmentNumber" cssStyle="color: #ff0000" />
        </div>


        <div class="form-group">
            <label for="billingCity">City</label>
            <form:input path="billingAddress.city"  id="billingCity" class="form-control" />
            <form:errors path="billingAddress.city" cssStyle="color: #ff0000" />
        </div>

        <div class="form-group">
            <label for="billingCountry">Country</label>
            <form:input path="billingAddress.country"  id="billingCountry" class="form-control" />
            <form:errors path="billingAddress.country" cssStyle="color: #ff0000" />
        </div>

        <div class="form-group">
            <label for="billingZip">Zip</label>
            <form:input path="billingAddress.zipCode"  id="billingZip" class="form-control" />
            <form:errors path="billingAddress.zipCode" cssStyle="color: #ff0000" />
        </div>

        <h3>Shipping Address</h3>

        <div class="form-group">
            <label for="shippingStreet">shipping Street</label>
            <form:input path="shippingAddress.streetName"  id="shippingStreet" class="form-control" />
            <form:errors path="shippingAddress.streetName" cssStyle="color: #ff0000" />
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">Apartment Number</label>
            <form:input path="shippingAddress.apartmentNumber"  id="shippingApartmentNumber" class="form-control" />
            <form:errors path="shippingAddress.apartmentNumber" cssStyle="color: #ff0000" />
        </div>


        <div class="form-group">
            <label for="shippingCity">City</label>
            <form:input path="shippingAddress.city"  id="shippingCity" class="form-control" />
            <form:errors path="shippingAddress.city" cssStyle="color: #ff0000" />
        </div>

        <div class="form-group">
            <label for="shippingCountry">Country</label>
            <form:input path="shippingAddress.country"  id="shippingCountry" class="form-control" />
            <form:errors path="shippingAddress.country" cssStyle="color: #ff0000" />
        </div>

        <div class="form-group">
            <label for="shippingZip">Zip</label>
            <form:input path="shippingAddress.zipCode"  id="shippingZip" class="form-control" />
            <form:errors path="shippingAddress.zipCode" cssStyle="color: #ff0000" />
        </div>


        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/" /> "  class="btn btn-default">Cancel</a>
        </form:form>

<%@include file="/WEB-INF/views/template/footer.jsp"%>