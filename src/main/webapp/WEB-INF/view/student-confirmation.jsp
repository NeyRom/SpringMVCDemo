<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <title>Student Confirmation</title>
</head>
<body>
<div class="container">
    <h4>The student is confirmed: ${student.firstName} ${student.lastName}</h4>
    <h5>Country: ${student.country}<h5>
    <h5>Favorite Language: ${student.favoriteLanguage}</h5>
    <p>Operating Systems:</p>
    <ul>
        <c:forEach var="temp" items="${student.operatingSystems}">
            <li>${temp}</li>
        </c:forEach>
    </ul>
</div>
</body>
</html>