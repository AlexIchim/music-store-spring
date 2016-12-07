<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer detail</h1>

            <p class="lead"> Here is the detail information about the customer ! </p>
        </div>


        <div class="container">
            <div class="row">

                <div class="col-md-4">
                    <h3>${customer.customerName}</h3>
                    <p><strong>Email: </strong>${customer.customerEmail}</p>
                    <p><strong>Phone</strong> : ${customer.customerPhone}</p>
                    <p><strong>Username</strong> : ${customer.username}</p>
                    <p><strong>Condition</strong> :${customer.customerEmail}</p>

                    <c:set var="url" scope="page" value="/admin/customer"/>

                    <br><br>
                    <h4>Billing address</h4>

                    <p><strong></strong>${customer.billingAddress.streetName}</p>
                    <p><strong></strong>${customer.billingAddress.apartmentNumber}</p>
                    <p><strong></strong>${customer.billingAddress.city}</p>
                    <p><strong></strong>${customer.billingAddress.country}</p>
                    <p><strong></strong>${customer.billingAddress.zipCode}</p>


                    <h4>Shipping address</h4>

                    <p><strong></strong>${customer.shippingAddress.streetName}</p>
                    <p><strong></strong>${customer.shippingAddress.apartmentNumber}</p>
                    <p><strong></strong>${customer.shippingAddress.city}</p>
                    <p><strong></strong>${customer.shippingAddress.country}</p>
                    <p><strong></strong>${customer.shippingAddress.zipCode}</p>


                    <br>
                    <a href="<c:url value="${url}" />" class="btn btn-default">Back</a>
                    <!-- Whenerver user click on this button go back to , from ViewProductPage to ProductList -->
                </div>
            </div>
        </div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>