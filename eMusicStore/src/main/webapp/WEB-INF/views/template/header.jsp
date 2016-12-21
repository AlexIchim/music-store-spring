<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Alex PC
  Date: 07/11/2016
  Time: 13:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>My Music Website</title>

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>


    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">



    <!-- Main core CSS -->
    <link href="<c:url value="resources/css/carousel.css"/>" rel="stylesheet">

    <!-- Main core CSS -->
    <link href="<c:url value="resources/css/main.css"/>" rel="stylesheet">

</head>
<!-- NAVBAR
================================================== -->
<body>
<div class="navbar-wrapper">
    <div class="containermeta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"">

    <nav class="navbar navbar-inverse navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">My Music Store</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li> <a href="<c:url value="/"/>">Home</a></li>
                    <li><a href="<c:url value="/product/productList" />">Products</a></li>
                </ul>
                <ul class="nav navbar-nav pull-right">
                    <!-- Wether the user has login or not, retrieved from Spring Security context.-->
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a> </li>
                        <li><a href="<c:url value="/j_spring_security_logout"/>">Logout</a></li>
                        <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                            <li><a href="<c:url value="/customer/cart"/>">Cart</a> </li>
                            <li><a href="<c:url value="/order/orders"/>">Orders</a></li>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                            <li><a href="<c:url value="/admin"/>">Admin</a> </li>
                        </c:if>
                    </c:if>

                    <c:if test="${pageContext.request.userPrincipal.name == null}">
                        <li><a href="<c:url value="/login/"/>">Login</a></li>
                        <li><a href="<c:url value="/register"/>">Register</a> </li>
                    </c:if>
                </ul>
            </div>
        </div>
    </nav>

</div>
</div>