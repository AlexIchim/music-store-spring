<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>



<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image" src="<c:url value="resources/images/back1.jpg" />" alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Welcome to my book store !</h1>
                    <p> Here you can browse and buy your favorite books.</p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image" src="<c:url value="resources/images/back2.jpg" />" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>No two persons ever read the same book.</h1>
                    <p>Edmund Wilson</p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide home-image" src="<c:url value="resources/images/back3.jpg" />" alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Always read something that will make you look good if you die in the middle of it. </h1>
                    <p>P.J. O’Rourke</p></div>
            </div>
        </div>
    </div>
    <!-- Controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="icon-next"></span>
    </a>
</div>
<!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">


<%@include file="/WEB-INF/views/template/footer.jsp"%>