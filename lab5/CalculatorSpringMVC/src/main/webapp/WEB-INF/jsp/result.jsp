<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Calculator</title>
</head>
<style>
    ul{
        list-style:none;
        color:red;
    }
</style>
<body>
<h2>${success}</h2>
<form action="${pageContext.request.contextPath}/calculate" method="post">
    <input type = "text" name = "add1" size = "2"  value = "${calculator.add1}" />+
    <input type = "text" name = "add2" value = "${calculator.add1}" size = "2"/>=<input type = "text" name = "sum" value = "${calculator.getResult1()}"  size = "2" readonly/><br/>
    <input type = "text" name = "mult1" value = "${calculator.mult1}" size = "2"/>*
    <input type = "text" name = "mult2" value = "${calculator.mult2}"  size = "2"/>=<input type = "text" name = "product" value = "${calculator.getResult2()}"   size = "2" readonly/><br/>
    <input type = "submit" value = "Submit"/>
</form>
</body>
</html>
