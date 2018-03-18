<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" type="text/css"	href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
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
        <th>企业名称</th>
        <th>负责人</th>
        <th>联系电话</th>
        <th>资质等级</th>
        <th>企业安全生产许可证编号</th>
        <th>企业人员</th>
        <th>修改时间</th>
        <th>修改人编号</th>
        <th>修改人姓名</th>
    </tr>


    <tr>
        <c:forEach items="${pb}" var="c" >
    <tr>
        <td>${c.facRfactoryname}</td>
        <td>${c.facRstandperson}</td>
        <td>${c.facRphone }</td>
        <td>${c.facRgrade }</td>
        <td>${c.facRnumber }</td>
        <td>${c.facRmember }</td>
        <td>${c.facRtime }</td>
        <td>${c.facRuserid }</td>
        <td>${c.facRusername }</td>
    </tr>
    </c:forEach>
    </tr>


</table>
</body>
</html>
