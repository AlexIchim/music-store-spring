<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Cart</h1>

                    <p>All the selected prodducts in your shopping cart !</p>
                </div>
            </div>
        </section>

        <section class="container" ng-app="cartApp">
            <div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">
                <div>
                    <a class="btn btn-danger pull-left"><span class="glyphicon glyphicon-remove-sign"></span>Clear Cart</a>
                </div>

                <table class="table table-hover">
                    <tr>
                        <th>Product</th>
                        <th>Unit Price</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>

                    <tr ng-repeat="item in cart.cartItems">
                        <td>{item.product.productName}</td>
                        <td>{item.product.productPrice}</td>
                        <td>{item.quantity}</td>
                        <td>{item.totalPrice}</td>
                        <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)"><spsan class="glyphicon glyphicon-remove">Remove</spsan></a></td>
                    </tr>

                    <tr>
                        <th></th>
                        <th></th>
                        <th>Grand Total</th>
                        <th>grandTotal</th>
                        <th></th>
                    </tr>
                </table>

                <a href="<spring:url value="/productList"/>">Continue Shopping</a>
            </section>
         </div>
    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>