<%-- 
    Document   : login
    Created on : Feb 14, 2016, 12:24:54 PM
    Author     : mhcrnl
--%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login Form > Hello World!</h1>
        <html:form action="/login" >
            <table border="0">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    <td colspan="2">
                        <bean:write name="LoginForm" property="error" filter="false" />
                        &nbsp;
                    </td>
                    </tr>
                    <tr>
                        <td>Nume/Prenume</td>
                        <td><html:text property="name" /></td>
                    </tr>
                    <tr>
                        <td>Introduce-ti CNP:</td>
                        <td><html:text property="cnp" /></td>
                    </tr>
                    <tr>
                        <td>Introduce-ti email:</td>
                        <td><html:text property="email" /></td>
                    </tr>
                    <tr>
                        <td>Introduce-ti telefon:</td>
                        <td><html:text property="telefon" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td> <html:submit value="Login" /></td>
                    </tr>
                </tbody>
            </table>

           
        </html:form>
    </body>
</html>
