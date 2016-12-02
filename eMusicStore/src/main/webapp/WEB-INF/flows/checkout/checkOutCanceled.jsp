<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1 class="alert alert-dancer">Checkout canceled !</h1>

                    <p>Your checkout process is canceled, you may continue shopping !</p>
                </div>
            </div>
        </section>

        <section class="container">
            <p>
                <a href="<spring:url value="/product/productList"/>" class="btn btn-default">OK</a>
            </p>
        </section>
    </div>
</div>


<%@include file="/WEB-INF/views/template/footer.jsp"%>