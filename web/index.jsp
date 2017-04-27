<%-- 
    Document   : index
    Created on : Oct 2, 2016, 9:48:11 PM
    Author     : Trung Tien
--%>
<%@page import="Model.Product"%>
<%@page import="java.util.List"%>
<%@page import="Model.Products"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assignment</title>
    </head>
    <body>
        <h1>Products</h1>
        <table border ="1">
            <tr>
                <td>Ma SP</td>
                <td>Ten SP</td>
                <td>Gia</td>
            </tr>
            <%
                Products listSP = new Products();
                List<Product> list = listSP.showProduct("");
                for (Product sp : list) {
                    out.print("<tr>"
                            + "<td>" + sp.getCode() + "</td>"
                            + "<td>" + sp.getName() + "</td>"
                            + "<td>" + sp.getPrice() + "</td>"
                            + "</tr>");
                }
            %>

        </table>
            <br/>
            <form action="ControllerProducts">            
            <input type="submit" name="action" value="New"/>
        </form>
    </body>
</html>
