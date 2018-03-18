<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>index</title>

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
<div class="panel panel-default">
    <div class="panel-body">

        <form action="${basePath}/tongzhi/webadd" method="post" id="tableForm" name="form1"
              enctype="multipart/form-data">
            <div class="panel panel-success" id="main">
                <!--主体  -->
                <input type="hidden" id="basePath" name="basePath" value="<%=basePath%>"/>
                <input type="hidden" id="id" name="id" value="${pb.id}"/>
                <div class="panel-heading">
                    <h2 class="panel-title">新建通知</h2>
                    <a href="<%=basePath %>/web/tongzhiquery.jsp" id="exit">通知查询</a>
                </div>

                <div class="announce-info">
                    <table class="table table-bordered">
                        <caption>
                            <i class="fa fa-reorder" style="margin-left:8px"></i> 基本信息
                        </caption>

                        <tbody>
                     <%--   <tr>
                            <td class="heading">
                                <input type="file" name="mulfile" id="mulfile"/>
                            </td>
                            <td colspan="3">
                                <div class="form-group">
                                    <button type="button" onclick="multiupload()" class="btn btn-default"><i
                                            class="fa fa-lock fa-large"></i>批量新增
                                    </button>
                                </div>
                            </td>
                        </tr>--%>

                        <tr>
                            <td class="heading">发送人姓名<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                 <%--   <input type="text" class="form-control" id="senderStr" name="senderStr"
                                           value="${pb.senderStr}"/>--%>

                                   <p  id="senderStr" name="senderStr" value="${pb.senderStr}">${pb.senderStr}</p>
                                </div>
                            </td>

                        </tr>

                        <tr>

                            <td class="heading">接收角色名 <span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                               <%--     <input type="text" class="form-control" id="addresseeStr" name="addresseeStr"
                                           value="${pb.addresseeStr}"/>--%>
                                    <input type="checkbox" id="addresseeStr1" name="addresseeStr"  value="1">全体安监员
                                    <input type="checkbox" id="addresseeStr2" name="addresseeStr"  value="2">全体执法员
                                    <input type="checkbox" id="addresseeStr3" name="addresseeStr"  value="3">全体设备管理员
                                    <input type="checkbox" id="addresseeStr4" name="addresseeStr"  value="4">全体安监科副站长
                                    <input type="checkbox" id="addresseeStr5" name="addresseeStr"  value="5">全体执法科副站长
                                    <input type="checkbox" id="addresseeStr6" name="addresseeStr"  value="6">站长
                                    <input type="checkbox" id="addresseeStr7" name="addresseeStr"  value="7">全体技术系统管理员
                                    <input type="checkbox" id="addresseeStr8" name="addresseeStr"  value="8">全体办公室管理员
                                    <input type="checkbox" id="addresseeStr9" name="addresseeStr"  value="9">超级管理员
                                </div>
                            </td>


                        </tr>


                        <tr>
                            <td class="heading">发送时间<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                   <%-- <input type="text" class="form-control" id="time" name="time"
                                           value="${pb.time}"/>--%>
                                    <p  id="time" name="time"
                                       value="${pb.time}">${pb.time}</p>
                                </div>
                            </td>

                        </tr>


                        <tr>
                            <td class="heading">通知内容<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="content" name="content"
                                           value="${pb.content }"/>
                                </div>
                            </td>

                        </tr>











                        <tr>
                            <td colspan="4" class="heading">
                                <button type="submit" class="btn btn-default"><i class="fa fa-lock fa-large"></i>新增
                                </button>
                                <button type="button" class="btn btn-default" onclick="del()"><i
                                        class="fa fa-lock fa-large"></i>取消
                                </button>
                            </td>
                            <td colspan="4" class="heading">

                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
