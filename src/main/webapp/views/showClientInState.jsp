<%-- 
    Document   : showClientInState
    Created on : 5 nov. 2019, 16:38:23
    Author     : pedago
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clients in state</title>
    </head>
    <body>
        <h1>Clients in state</h1>
        <c:choose>
            <c:when test="${empty states}">
                    aucun état trouvé.			
            </c:when>
            <c:otherwise>
                   <form>
                        <select name ="states">
                            <c:forEach var ="state" items="${states}">
                                <option value="${state}">${state}</option>
                            </c:forEach>
                        </select>
                    </form>        
            </c:otherwise>
        </c:choose>
        
        <table border="1">
                <!-- Les en-tetes de colonnes -->
                <tr><th>Id</th><th>Name</th><th>Address</th></tr>
                <!-- On parcourt les enregistrements (rows) de la requête "clients" -->
                <c:forEach var="client" items="${clients.rows}">
                        <!-- On met une ligne dans la  table -->
                        <tr><td>${client.CUSTOMER_ID}</td><td>${client.NAME}</td><td>${client.ADDRESSLINE1}</td></tr>
                </c:forEach>		
        </table>
                
        <br>
        <%-- Equivalent de request.getContextPath() en java --%>
        <a href="${pageContext.request.contextPath}">Retour au menu</a><br>
    </body>
</html>
