<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <title>Hello World - Input Form</title>
</head>
<body>
<div class="container">

<form action="processFormV2" method="get">
<div class="form-group">
    <input type="text" class="form-control" name="studentName" placeholder="What's your name?" />
</div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>

</body>
</html>