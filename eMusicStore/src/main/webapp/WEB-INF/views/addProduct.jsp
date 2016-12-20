<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<div class="container-wrapper">
    <div class="container" >
        <div class="page-header">
            <h1>Add Product</h1>

            <p class="lead">Fill the below information to add a product !</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct"   method="post"
                   commandName="product" enctype="multipart/form-data" >
            <div class="form-group">
                <label for="name">Name</label>
                <form:input path="productName"  id="name" class="form-control" />
                <form:errors path="productName" cssStyle="color: #ff0000" />
            </div>


            <div class="form-group">
                <label for="productAuthor">Author</label>
                <form:input path="productAuthor" id="productAuthor" class="form-control"/>
            </div>

            <div class="form-group">
                <label for="productCategory">Category</label>
                <form:input path="productCategory" id="productCategory" class="form-control"/>
            </div>

        <div class="form-group">
            <label for="productYear">Year</label>
            <form:input path="productYear" id="productYear" class="form-control"/>
            </div>

            <div class="form-group">
                <label for="price">Price</label>
                <form:input path="productPrice" id="price" class="form-control" />
                <form:errors path="productPrice" cssStyle="color: #ff0000" />
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
                <form:input path="unitInStock" id="unitInStock" class="form-control" />
                <form:errors path="unitInStock" cssStyle="color: #ff0000" />
            </div>

            <div class="form-group">
                <label for="manufacturer">Product Manufcaturer</label>
                <form:input path="productManufacturer" id="manufacturer" class="form-control" />
            </div>


            <div class="form-group">
                <label  class="control-label" for="productImage">Upload Picture</label>
                <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
            </div>

            <br><br>

            <input type="submit" value="submit" class="btn btn-default">
            <a href="<c:url value="/admin/product" /> "  class="btn btn-default">Cancel</a>
        </form:form>

<%@include file="/WEB-INF/views/template/footer.jsp"%>