<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Add Product Form</title>
    <style type="text/css">@import url(css/main.css);</style>
</head>
<body>

<div id="global">
    <form:form modelAttribute="newProduct" action="product">
    <fieldset>
        <legend>Add a product</legend>
        <p>
            <label for="category">Category </label>
            <form:select id="category" path="category.id">
                <form:option value="0" label="--Select Category"/>
                <form:options items="${categories}" itemLabel="name" itemValue= "id"/>
            </form:select>
        </p>

        <p>
            <label for="name"><spring:message code="product.name" /> </label>
            <form:input id="name" path="name"/>
        </p>
        <p>
            <label for="description"><spring:message code="product.description" /> </label>
            <form:input id="description" path="description"/>
        </p>
        <p>
            <label for="price"><spring:message code="product.price" /> </label>
            <form:input id="price" path="price"/>
        </p>
        <p id="buttons">
            <input id="reset" type="reset" tabindex="4">
            <input id="submit" type="submit" tabindex="5"
                   value="Add Product">
        </p>
    </fieldset>
    </form:form>
</div>
</body>
</html>
