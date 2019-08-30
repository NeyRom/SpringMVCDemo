<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <title>Customer Confirmation</title>
</head>
<body>
<div class="container">
    <h6>The customer is confirmed: ${customer.firstName} ${customer.lastName}</h6>
    <p>Free passes: ${customer.freePasses}</p>
    <p>Postal code: ${customer.postalCode}</p>
    <p>Course code: ${customer.courseCode}</p>
</div>
</body>
</html>