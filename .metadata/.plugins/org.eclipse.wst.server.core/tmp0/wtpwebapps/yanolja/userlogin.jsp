<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="css/user/userjoin_style.css" />
	<%@ include file="header/header.jsp" %>

    <div class="container main__container">
        <form action="/yanolja/loginReq" method="post" >
            <div class="form-group">
                <input type="text" name="username" id="username"  class="form-control" placeholder="Enter Username"  required/>
            </div>
    
            <div class="form-group">
                <input type="password" name="password"  class="form-control" placeholder="Enter Password"   required/>
            </div>
    
            <br/>
            <button type="submit" class="btn btn-primary">로그인</button>
        </form>
    </div>
</body>
</html>