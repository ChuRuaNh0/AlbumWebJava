<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Create an account</title>
    <style>
        body {
            position: absolute;
            top: 50%;
            left: 50%;
            background-image: url("${contextPath}/resources/assets/image/background.png");
            transform: translate(-50%, -50%);
            width: 65%;
        }

        .login-container {
            width: 100%;
            height: 670px;
            display: flex;
        }
	
        .field-text, .login-container-content .login-form .parting-line, .login-container-content .login-form .field > label, .login-container-content .login-form .field > a {
            font-size: 20px;
            color: #a7a7a7;
        }

        .login-container-content {
            flex: 50%;
            background: white;
            text-align: center;
            display: flex;
            align-items: center;
            border-top-right-radius: 15px;
            border-bottom-right-radius: 15px;
        }
         .login-content {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .login-content__item {
            width: 50%;
        }
        .login-container-content .login-form {
            padding: 2px;
            width: 100%;
        }
        .login-container-content .login-form .buttonX {
            position: absolute;
            right: 2%;
            top: 2%;
            border: none;
            background: transparent;
            outline: none;
        }
        .login-container-content .login-form h1 {
            letter-spacing: 1rem;
            color: transparent;
            -webkit-background-clip: text;
            background-clip: text;
            background-image: linear-gradient(45deg, #6767ED 45%, #4DAEF2 75%);
            font-family: "Aguafina Script", Arial, Helvetica, sans-serif;
        }
        .login-container-content .login-form .field {
            margin: 10px auto;
            padding-bottom: 25px;
            width: 75%;
            height: 25%;
            display: grid;
            grid-row-gap: 0.2rem;
        }
        .login-container-content .login-form .field > label, .login-container-content .login-form .field > input {
            text-align: left;
        }
        .login-container-content .login-form .field > input {
            outline: none;
            border-top: none;
            border-left: none;
            border-right: none;
            border-bottom: 1px solid grey;
            height: 44px;
        }
        .login-container-content .login-form .field > input:focus {
            border-bottom-color: #1838e7;
        }
        .login-container-content .login-form .field > a {
            text-align: right;
            text-decoration: none;
        }
        .submitBtn {
            width: 76%;
            height: 2.5rem;
            position: relative;
            background: linear-gradient(135deg, #3ce77b 0%, #008eff 70%);
            color: white;
            outline: none;
            border-style: none;
            border-radius: 15px;
            transition: 0.3s ease-in-out;
        }
        .submitBtn:hover {
            filter: hue-rotate(45deg);
        }
        .login-container-content .login-form .parting-line {
            position: relative;
            margin-top: 1rem;
            margin-bottom: 1rem;
            margin-left: 2.5rem;
            margin-right: 2.5rem;
            overflow: hidden;
        }
        .login-container-content .login-form .parting-line::before, .login-container-content .login-form .parting-line::after {
            content: "";
            position: absolute;
            top: 50%;
            width: 45%;
            display: block;
            text-align: center;
            border-top: 1px solid;
        }
        .login-container-content .login-form .parting-line::before {
            right: 55%;
        }
        .login-container-content .login-form .parting-line::after {
            right: 0%;
        }

        .login-container-img {
            flex: 50%;
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            background: url("../resources/imgs/bg/_MG_9826.jpg");
            background-size: cover;
            border-top-left-radius: 15px;
            border-bottom-left-radius: 15px;
        }
        .login-container-img > h1 {
            display: grid;
            text-align: center;
            color: #13868c;
            margin-top: 50%;
            padding-left: 20px;
            padding-right: 20px;
            letter-spacing: 2px;
            margin-bottom: 10px;
            font-size: 60px;
        }
        .login-container-img > h1 > span {
            text-align: center;
            font-size: 32px;
        }

        .container {
            box-shadow: 0 0 15px 5px;
            border-radius: 15px;
        }
        .google-background a {
            padding-bottom: 20px;
            display: inline-block;
        }

    </style>
</head>
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Aguafina+Script" />
<body>
<div class="container">
    <div class="login-container">
        <div class="login-container-content">
            <form:form method="POST" action="${contextPath}/registration" modelAttribute="userForm" class="login-form">
                <h1>Album Registration</h1>
                <div class="login-content">
                <div class="login-content__item">
                <spring:bind path="username">
                    <p class="field ${status.error ? 'has-error' : ''}">
                        <label>User Name</label>
                        <form:input type="text" path="username" placeholder="Username"
                                    autofocus="true"></form:input>
                        <form:errors path="username" cssStyle="color: red"></form:errors>
                    </p>
                </spring:bind>
                </div>
                
                <div class="login-content__item">
                <spring:bind path="name">
                    <p class="field ${status.error ? 'has-error' : ''}">
                        <label>Name</label>
                        <form:input type="text" path="name" placeholder="Enter Name"></form:input>
                        <form:errors path="name" cssStyle="color: red"></form:errors>
                    </p>
                </spring:bind>
                </div>
                
                <div class="login-content__item">
                <spring:bind path="address">
                    <p class="field ${status.error ? 'has-error' : ''}">
                        <label>Address</label>
                        <form:input type="text" path="address" placeholder="Enter Address"></form:input>
                        <form:errors path="address" cssStyle="color: red"></form:errors>
                    </p>
                </spring:bind>
                </div>
                
                <div class="login-content__item">
                <spring:bind path="age">
                    <p class="field ${status.error ? 'has-error' : ''}">
                        <label>Age</label>
                        <form:input type="number" path="age" placeholder="Enter Age"></form:input>
                        <form:errors path="age" cssStyle="color: red"></form:errors>
                    </p>
                </spring:bind>
                </div>
                
                <div class="login-content__item">
                <spring:bind path="sex">
                    <p class="field ${status.error ? 'has-error' : ''}">
                        <label>Gender</label>
                        <form:input type="text" path="sex" placeholder="Enter Gender"></form:input>
                        <form:errors path="sex" cssStyle="color: red"></form:errors>
                    </p>
                </spring:bind>
                </div>
				
				<div class="login-content__item">
                <spring:bind path="password">
                    <p class="field ${status.error ? 'has-error' : ''}">
                        <label>Password</label>
                        <form:input type="password" path="password" placeholder="Enter PassWord"></form:input>
                        <form:errors path="password" cssStyle="color: red"></form:errors>
                    </p>
                </spring:bind>
                </div>
                
                <div class="login-content__item">
                <spring:bind path="passwordConfirm">
                    <p class="field ${status.error ? 'has-error' : ''}">
                        <label>Confirm Password</label>
                        <form:input type="password" path="passwordConfirm"
                                    placeholder="Confirm your password"></form:input>
                        <form:errors path="passwordConfirm" cssStyle="color: red"></form:errors>
                    </p>
                </spring:bind>
                </div>
				</div>
                <button type="submit" class="submitBtn" >Register</button>

                <div class="parting-line"><span>or</span></div>
                <div class="google-background">
                    <a href="${contextPath}/login">Login</a>
                </div>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>
