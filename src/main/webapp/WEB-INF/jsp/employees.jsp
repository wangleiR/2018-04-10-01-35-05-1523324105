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

<style type="text/css">
    td {
        vertical-align: middle;
        text-align: center;
        height: 45px;
        width: 200px;
    }
    th{
        height: 45px;
        width: 200px;
    }
    .even { background : #FFFFFF;}
    .odd { background : #EEEEEE;}
    table{
        border-collapse:collapse;
        margin-top: 200px;
        table-layout:fixed;
        width: 300px;
    }
    .head{
        color: white;
        background-color: #333333;
    }
</style>

<body>
<div>
    <table border="1" cellspacing="0" align="center" >
        <tr class="head">
            <th colspan=3>编号</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>性别</th>
        </tr>
        <c:forEach items="${lists}" var="it" varStatus="status" >
            <c:if test="${status.index % 2 == 0}">
                <tr class="even">
                    <td colspan=3>${it.getId()}</td>
                    <td>${it.getName()}</td>
                    <td>${it.getAge()}</td>
                    <td>${it.getGender()}</td>
                </tr>
            </c:if>
            <c:if test="${status.index % 2 == 1}">
                <tr class="odd">
                    <td colspan=3>${it.getId()}</td>
                    <td>${it.getName()}</td>
                    <td>${it.getAge()}</td>
                    <td>${it.getGender()}</td>
                </tr>
            </c:if>
        </c:forEach>
    </table>
</div>

</body>
</html>
