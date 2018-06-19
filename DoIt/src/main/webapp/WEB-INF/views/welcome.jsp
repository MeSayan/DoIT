<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<html>
<head>
<title>DoIt</title>
<link href="/DoIt/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@ include file="common/navigation.jspf" %>
    <div class="container">
    Welcome ${name}. You are now authenticated.
    <br><a href="/DoIt/list-todos">Click here</a> to start maintaining your todo's.
</div>
</body>
</html>