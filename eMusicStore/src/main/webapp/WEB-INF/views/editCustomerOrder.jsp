<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Order Info</h1>

            <p class="lead">Please order info here!</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/orders/editOrder" method="post"
                   commandName="customerOrder">


            <div>
                <form:input type="hidden" path="cart" id="cart" class="form-control" value="${customerOrder.cart}"/>
            </div>
            <div class="form-group">
                <label for="orderDate">Order Date</label>
                <form:input path="orderDate" id="orderDate" class="form-control"
                            value="${customerOrder.orderDate}"/>
            </div>

            <h2>ORDER ITEMS</h2>
            <div>
                <c:forEach items="${customerOrder.cart.cartItems}" var="cartItem" varStatus="index">

                    <div class="form-group">
                        <label>Product Name</label>
                        <p> ${cartItem.product.productName} </p>
                    </div>

                    <div class="form-group">
                        <label for="quantity">Quantity</label>
                        <form:input path="cart.cartItems[${index.index}].quantity" id="quantity" class="form-control"
                                    value="${cartItem.quantity}"/>
                    </div>
                </c:forEach>
            </div>


            <%--
                            <form:input type="hidden" path="customerOrderId" id="customerOrderId" class="form-control" value="${customerOrder.customerOrderId}"/>
                            <form:input type="hidden" path="billingAddress.streetName" id="streetNameB" class="form-control" value="${customerOrder.billingAddress.streetName}"/>
                            <form:input type="hidden" path="billingAddress.apartmentNumber" id="apartmentNumberB" class="form-control" value="${customerOrder.billingAddress.apartmentNumber}"/>
                            <form:input type="hidden" path="billingAddress.city" id="cityB" class="form-control" value="${customerOrder.billingAddress.city}"/>
                            <form:input type="hidden" path="billingAddress.city" id="cityB" class="form-control" value="${customerOrder.billingAddress.country}"/>
                            <form:input type="hidden" path="billingAddress.city" id="cityB" class="form-control" value="${customerOrder.billingAddress.zipCode}"/>


                            <form:input type="hidden" path="customer" id="customer" class="form-control" value="${customerOrder.customer.billingAddress}"/>


                            <form:input type="hidden" path="customerOrderId" id="customerOrderId" class="form-control" value="${customerOrder.customerOrderId}"/>
            --%>

            <div>
                <p>OrderId: ${customerOrder.customerOrderId} CustomerId: ${customerOrder.customer.customerId}
                    CartId: ${customerOrder.cart.cartId} CartItemId: ${customerOrder.cart.cartItems[0].cartItemId}</p>
            </div>

            <input type="submit" value="Submit" class="btn btn-default">
            <a href="<c:url value="/admin/customer" /> " class="btn btn-default">Cancel</a>
        </form:form>

    </div>
<%@include file="/WEB-INF/views/template/footer.jsp" %>