<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
</head>

<body>


<div>
    <table border="1" bordercolor="#a0c6e5" style="border-collapse:collapse;">
        <tr >
            <th>编号</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>性别</th>
        </tr>
            <c:forEach items="${lists}" var="it" >
                <tr>
                    <td>${it.getId()}</td>
                    <td>${it.getName()}</td>
                    <td>${it.getAge()}</td>
                    <td>${it.getGender()}</td>
                </tr>
            </c:forEach>
    </table>
</div>

</body>
</html>
