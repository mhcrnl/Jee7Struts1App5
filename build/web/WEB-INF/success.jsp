<%-- 
    Document   : success
    Created on : Feb 14, 2016, 12:36:47 PM
    Author     : mhcrnl
--%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        <title>Login Success Page</title>
    </head>
    <body>
        <h1>Hello World! Felicitări sunteți logat!</h1>
        
        <p>Numele dvs este: <bean:write name="LoginForm" property="name" />.</p>
        
        <p>CNP: <bean:write name="LoginForm" property="cnp" />.</p>
        
        <p> Email: <bean:write name="LoginForm" property="email" /> .</p>
        
        <p>Telefon: <bean:write name="LoginForm" property="telefon" /> .</p>
        
    </body>
</html>
