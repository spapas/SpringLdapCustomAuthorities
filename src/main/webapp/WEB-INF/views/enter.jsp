<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

    
<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	</head> 
	<body>
		<h2>${msg}</h2>
		<h3>
			Username: <sec:authentication property="principal.username" /><br />
			Authorities: <sec:authentication property="principal.authorities"/><br />
		</h3>
		<a href="<c:url value="j_spring_security_logout" />" >Logout</a>
	</body>
</html>
