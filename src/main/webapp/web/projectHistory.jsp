<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>历史修改痕迹</title>
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
<th>项目名称</th>
<th>安监员</th>
<th>结构</th>
<th>面积</th>
<th>造价</th>
<th>状态</th>
<th>进度</th>
<th>所属片区</th>
<th>地址</th>
<th>施工单位</th>
<th>施工单位负责人</th>
<th>建设单位</th>
<th>建设单位负责人</th>
<th>监理单位</th>
<th>监理单位负责人</th>
<th>塔吊</th>
<th>施工电梯</th>
<th>物料提升机</th>
<th>其他设备</th>
<th>开工时间</th>
<th>执法情况</th>
<th>项目自评情况</th>
<th>项目考评得分</th>
<th>项目评定等级</th>
<th>备注</th>
<th>整改状态</th>
<th>此次修改用户id</th>
<th>此次修改用户名</th>
<th>修改时间</th>
</tr>
<tr>
<c:forEach items="${pb}" var="c" >
<tr>
<td>${c.proRproname}</td>
<td>${c.proRpromonitorStr}</td>
<td>${c.proRprostructure }</td>
<td>${c.proRproarea }</td>
<td>${c.proRproprice }</td>
<td>${c.proRprostate }</td>
<td>${c.proRproprocess }</td>
<td>${c.proRproslice }</td>
<td>${c.proRproaddress }</td>
<td>${c.proRproconfactoryStr }</td>
<td>${c.proRprobemanageStr }</td>
<td>${c.proRproconfactoryStr1 }</td>
<td>${c.proRprobemanageStr1 }</td>
<td>${c.proRproconfactoryStr2 }</td>
<td>${c.proRprobemanageStr2 }</td>
<td>${c.proRtowerStr }</td>
<td>${c.proRelevatorStr }</td>
<td>${c.proRmateeleStr }</td>
<td>${c.proRotherdeviceStr }</td>
<td>${c.proRprostarttime }</td>
<td>${c.proRproenforce }</td>
<td>${c.proRproevaluateself }</td>
<td>${c.proRproevaluateall }</td>
<td>${c.proRproevaluatelevel }</td>
<td>${c.proRproextrainfo}</td>
<td>${c.proRprorestate }</td>
<td>${c.proRuserid }</td>
<td>${c.proRusername }</td>
<td>${c.proRdate }</td>
</tr>
</c:forEach>
</tr>
</table>

<%-- ${pb} --%>

</body>
</html>