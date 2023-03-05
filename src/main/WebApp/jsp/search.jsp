<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html lang="en">
<head>
    <!-- Design by foolishdeveloper.com -->
    <title> search form </title>
    <LINK REL=StyleSheet HREF="styleSheet.css" >
</head>

<body>
    <form method="post" action="SearchServlate">
        <h3>search</h3>

        <label for="name">Name</label>
        <input type="text" name="searchName" placeholder="name" id="username">

        <button type="submit">Search</button>
    </form>
    <c:if test="${applicationScope['users']!=null}">  
    <table>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <c:if test="${sessionScope['user'].role==1}">
                <th>
                    <c:out value="delete"/>
                </th>
                <th>
                    <c:out value="update"/>
                </th>
            </c:if>
          </tr>
        <c:forEach items="${applicationScope['users']}"  var="user">
            <tr>
                <td>
                    <c:out value="${user.userName}" />
                </td>
                <td>
                    <c:out value="${user.email}" />
                </td>
                <c:if test="${sessionScope['user'].role==1}">
                    <td>
                        <button>delete</button>
                    </td>
                    <td>
                        <button>update</button>
                    </td>
                </c:if>
            </tr>
            
        </c:forEach>
    </table>
</c:if>
</body>

</html>