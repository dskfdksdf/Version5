<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
<head>
    <title>Title</title>
    <%@ include file="/web/common.jsp" %>

    <link rel="stylesheet" href="${ctx}/web/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/web/css/bootstrapValidator.min.css">
    <link rel="stylesheet" href="${ctx}/web/css/index.css">
    <link rel="stylesheet" href="${ctx}/web/css/layui.css">
    <link type="text/css" rel="stylesheet" href="${ctx}/web/css/jedate.css">
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
    <script type="text/javascript" src="${ctx}/web/js/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="${ctx}/web/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${ctx}/web/js/bootstrapValidator.min.js"></script>
    <script type="text/javascript" src="${ctx}/web/js/jquery.jedate.js"></script>
    <script type="text/javascript" src="${ctx}/web/js/contract.js"></script>
    <script type="text/javascript" src="${ctx}/js/ajaxfileupload.js"></script>
</head>
<body>
登录
<form action="${basePath}/user/webpage" method="post" id="tableForm" name="form1"
      enctype="multipart/form-data">
    序号:<input type="text" id="xuhao" name="xuhao" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
    密码;<input type="password" id="password" name="password"/>
    职位:<input type="radio" id="role1" name="roleId" value="3" checked="checked">设备管理员
    <input type="radio" id="role2" name="roleId" value="7">技术系统管理员
    <input type="radio" id="role3" name="roleId" value="8">办公室管理员
    <input type="radio" id="role4" name="roleId" value="9">超级管理员
    <button type="submit" >提交</button>
</form>

</body>
</html>
<%-- 职位:<input type="radio" id="role1" name="role" value="3" checked="checked">设备管理员
    <input type="radio" id="role2" name="role" value="7">技术系统管理员
    <input type="radio" id="role3" name="role" value="8">办公室管理员
    <input type="radio" id="role4" name="role" value="9">超级管理员--%>