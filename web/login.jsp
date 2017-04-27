<%-- 
    Document   : login
    Created on : Oct 2, 2016, 9:51:02 PM
    Author     : Trung Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assignment</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="ControllerCustomers">
            UserName: <input type="text" name="txtUser" value=""/><br/>
           Password: <input type="password" name="txtPass" value=""/><br/>  
            <input type="submit" name="action" value="Login"/>
            <input type="reset" name="Reset" value="Reset"/>
           
            
        </form>
    </body>
</html>
