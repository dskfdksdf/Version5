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
        <th>序号</th>
        <th>设备类型</th>
        <th>所在项目及栋号</th>
        <th>建设单位</th>
        <th>施工单位</th>
        <th>监理单位</th>
        <th>安拆单位</th>
        <th>租赁(产权)单位</th>
        <th>检测单位</th>
        <th>产权备案情况(备案号)</th>

        <th>检验检测情况</th>
        <th>使用登记情况</th>
        <th>设备运行情况</th>
        <th>生产厂家</th>
        <th>出厂编号</th>
        <th>出厂时间</th>
        <th>安装告知时间</th>

        <th>安装时间</th>
        <th>检测时间</th>
        <th>联合验收时间</th>
        <th>使用登记备案时间</th>
        <th>维保起止时间</th>
        <th>拆迁时间</th>
        <th>备注</th>

        <th>修改时间</th>
        <th>修改人id</th>
        <th>修改人姓名</th>
    </tr>
    <tr>
        <c:forEach items="${pb}" var="c">
    <tr>
        <td>${c.rid}</td>
        <td>${c.rdevicetype}</td>
        <td>${c.rproject}</td>
        <td>${c.restablish}</td>


        <td>${c.rconstruct }</td>
        <td>${c.rmanit }</td>
        <td>${c.rdismantle }</td>
        <td>${c.rrent }</td>
        <td>${c.rmonitest }</td>

        <td>${c.rcasenumber }</td>
        <td>${c.rmonisituat }</td>

        <td>${c.rusesituat }</td>


        <td>${c.rdevicerun}</td>
        <td>${c.rmanufac}</td>
        <td>${c.rmanunumber}</td>
        <td>${c.rmanutime}</td>
        <td>${c.rinfotime}</td>
        <td>${c.rinstalltime}</td>
        <td>${c.rtesttime}</td>

        <td>${c.raccepttime}</td>
        <td>${c.rcasetime}</td>
        <td>${c.rmatiantime}</td>
        <td>${c.rdismantime}</td>
        <td>${c.rremark}</td>
        <td>${c.rtime}</td>
        <td>${c.ruserid}</td>

        <td>${c.rusername}</td>


    </tr>
    </c:forEach>
    </tr>
</table>


</body>
</html>
