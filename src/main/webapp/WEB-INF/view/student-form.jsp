<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Student Registration Form</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
</head>
<body>
<div class="container">
    <form:form action="processForm" modelAttribute="student">
        <div class="form-group">
            <label for="studentFirstName">First Name</label>
            <form:input class="form-control" id="studentFirstName" path="firstName" />
        </div>
        <div class="form-group">
            <label for="studentLastName">Last Name</label>
            <form:input class="form-control" id="studentLastName" path="lastName" />
        </div>
        <div class="form-group">
            <label for="countrySelect">Country</label>
            <form:select class="form-control" id="countrySelect" path="country">
                <form:options items="${student.countryOptions}" />
            </form:select>
        </div>
        <div class="form-check form-check-inline">
        Favorite Language:
            <form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}"
            class="form-check-input" element="div"/>
        </div>
        <div class="form-check">
            <p>Operating Systems:</p>
            <div class="form-check">
                <form:checkbox path="operatingSystems" id="OSCheck1" value="Linux" class="form-check-input"/>
                <label class="form-check-label" for="OSCheck1">Linux</label>
            </div>
            <div class="form-check">
                <form:checkbox path="operatingSystems" id="OSCheck2" value="Mac OS" class="form-check-input"/>
                <label class="form-check-label" for="OSCheck2">Mac OS</label>
            </div>
            <div class="form-check">
                <form:checkbox path="operatingSystems" id="OSCheck3" value="Windows" class="form-check-input"/>
                <label class="form-check-label" for="OSCheck3">Windows</label>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form:form>
</div>
</body>
</html>