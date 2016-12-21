<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Product</h1>

            <p class="lead">Please update the product information here !</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct" method="post"
                   commandName="product" enctype="multipart/form-data">
            <form:hidden path="productId" value="${product.productId}"/>

        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="productName" id="name" class="form-control" value="${product.productName}"/>

        </div>

        <div class="form-group">
            <label for="productAuthor">Author</label>
            <form:input path="productAuthor" id="productAuthor" class="form-control" value="${product.productAuthor}"/>
        </div>

        <div class="form-group">
            <label for="productCategory">Category</label>
            <form:input path="productCategory" id="productCategory" class="form-control"
                        value="${product.productCategory}"/>
        </div>

        <div class="form-group">
            <label for="productYear">Year</label>
            <form:input path="productYear" id="productYear" class="form-control" value="${product.productYear}"/>
        </div>


        <div class="form-group">
            <label for="price">Price</label>
            <form:input path="productPrice" id="price" class="form-control" value="${product.productPrice}"/>
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="active"/>Active</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="inactive"/>Inactive</label>
        </div>


        <div class="form-group">
            <label for="unitInStock">Unit In Stock</label>
            <form:input path="unitInStock" id="unitInStock" class="form-control" value="${product.unitInStock}"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Product Manufcaturer</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-control"
                        value="${product.productManufacturer}"/>
        </div>


        <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large"/>
        </div>

        <br><br>

        <input type="submit" value="Submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" /> " class="btn btn-default">Cancel</a>
        </form:form>

<%@include file="/WEB-INF/views/template/footer.jsp" %>