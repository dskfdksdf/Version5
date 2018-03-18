<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Title</title>
    <%@include file="common.jsp" %>
    <link rel="stylesheet" href="${ctx}/web/css/index.css">

    <link rel="stylesheet" href="${ctx}/web/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/web/css/bootstrapValidator.min.css">
    <link rel="stylesheet" href="${ctx}/css/index.css">
    <link rel="stylesheet" href="${ctx}/web/css/layui.css">
    <link type="text/css" rel="stylesheet" href="${ctx}/web/css/jedate.css">
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
    <script type="text/javascript" src="${ctx}/web/js/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="${ctx}/web/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${ctx}/web/js/bootstrapValidator.min.js"></script>
    <script type="text/javascript" src="${ctx}/web/js/layui.js"></script>
    <script type="text/javascript" src="${ctx}/web/js/jquery.jedate.js"></script>
    <script type="text/javascript" src="${ctx}/web/js/contract.js"></script>


</head>
<body>


<table border="1">
    <tr>
        <th>对应执法表序号</th>
        <th>对应整改表序号</th>
        <th>对应项目表序号</th>
        <th>整改单编号</th>
        <th>违法主体</th>
        <th>违法条款</th>
        <th>违法内容</th>
        <th>处罚条款</th>
        <th>处罚内容</th>

        <th>修改人id</th>
        <th>修改人姓名</th>
        <th>修改时间</th>
        <th>执法书状态</th>
    </tr>


    <tr>
        <c:forEach items="${pb}" var="c">
    <tr>
        <td>${c.enRenid}</td>
        <td>${c.enRenreid}</td>
        <td>${c.enRenproid }</td>
        <td>${c.enRenzhenggaiid }</td>
        <td>${c.enRenweifaobject }</td>
        <td>${c.enRenweifatiaokuan }</td>
        <td>${c.enRenweifaStr }</td>
        <td>${c.enRenchufatiaokuan }</td>
        <td>${c.enRenchufaStr }</td>

        <td>${c.enRenuserid }</td>
        <td>${c.enRenusername }</td>
        <td>${c.enRdate }</td>
        <td>${c.enRenstate }</td>
    </tr>
    </c:forEach>
    </tr>


</table>

</body>
</html>
