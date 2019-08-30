<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Customer Registration Form</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
</head>
<body>
<div class="container">
    <h7>Fill out the form. Asterisk (*) means required.</h7>
    <form:form action="processForm" modelAttribute="customer">
        <div class="form-group">
            <label for="customerFirstName">First Name:</label>
            <form:input class="form-control" id="customerFirstName" path="firstName" />
        </div>
        <div class="form-group">
            <label for="customerLastName">Last Name (*):</label>
            <form:input class="form-control" id="customerLastName" path="lastName" />
            <form:errors path="lastName" class="is-invalid" />
        </div>
        <div class="form-group">
            <label for="customerFreePasses">Free passes:</label>
            <form:input class="form-control" id="customerFreePasses" path="freePasses" />
            <form:errors path="freePasses" class="is-invalid" />
        </div>
        <div class="form-group">
            <label for="customerFreePasses">Postal Code:</label>
            <form:input class="form-control" id="customerFreePasses" path="postalCode" />
            <form:errors path="postalCode" class="is-invalid" />
        </div>
        <div class="form-group">
            <label for="customerCourseCode">Course Code:</label>
            <form:input class="form-control" id="customerCourseCode" path="courseCode" />
            <form:errors path="courseCode" class="is-invalid" />
        </div>


        <button type="submit" class="btn btn-primary">Submit</button>
    </form:form>
</div>
</body>
</html>