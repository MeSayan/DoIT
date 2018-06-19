<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<html>
<head>
<title>DoIt</title>
<link href="/DoIt/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <%@ include file="common/navigation.jspf" %>
    
    <div class="container">
	    <p><font color="red">${errorMessage}</font></p>    
	    <form action="/DoIt/login" method="POST">
	       <fieldset class="form-group"> 
	       <label>Name :</label>
	       <input name="name" type="text" class="form-control"  required="required"/> 
	       </fieldset>
	       <fieldset class="form-group">
	       <label> Password :</label>
	       <input name="pass" type="password"  class="form-control" required="required"/> 
	       </fieldset>
	      
	      <button type="submit" class="btn btn success">Login</button>
	    </form>
    </div>
</body>
</html>