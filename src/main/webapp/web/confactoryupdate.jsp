<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Title</title>

    <%@ include file="common.jsp" %>
    <link rel="stylesheet" href="${ctx}/web/css/index.css">

    <link rel="stylesheet" href="${ctx}/web/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/web/css/bootstrapValidator.min.css">
    <link rel="stylesheet" href="${ctx}/css/index.css">
    <link rel="stylesheet" href="${ctx}/web/css/layui.css">
    <link type="text/css" rel="stylesheet" href="${ctx}/web/css/jedate.css">
    <link rel="stylesheet" type="text/css"
          href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
    <script type="text/javascript" src="${ctx}/web/js/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="${ctx}/web/js/bootstrap.min.js"></script>
    <script type="text/javascript"
            src="${ctx}/web/js/bootstrapValidator.min.js"></script>
    <script type="text/javascript" src="${ctx}/web/js/layui.js"></script>
    <script type="text/javascript" src="${ctx}/web/js/jquery.jedate.js"></script>
    <script type="text/javascript" src="${ctx}/web/js/contract.js"></script>
</head>
<body>

<div class="panel panel-default">
    <div class="panel-body">

        <form action="#" method="post" id="tableForm" name="form1">
            <div class="panel panel-success" id="main">
                <!--主体  -->
                <input type="hidden" id="basePath" name="basePath"
                       value="<%=basePath%>"/> <input type="hidden" id="id"
                                                      name="id" value="${pb.id}"/>
                <div class="panel-heading">
                    <h2 class="panel-title">企业信息修改</h2>
                    <a href="<%=basePath%>/web/confactorywebpage.jsp" id="exit">企业表查询</a>
                </div>

                <div class="announce-info">
                    <table class="table table-bordered">
                        <caption>
                            <i class="fa fa-reorder" style="margin-left: 8px"></i> 基本信息
                        </caption>
                        <tbody>
                        <tr>
                            <td class="heading">企业名称<span style="color: red"> *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="factoryname"
                                           name="factoryname" value="${pb.factoryname }"/>
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">负责人<span style="color: red"> *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="standperson"
                                           name="standperson" value="${pb.standperson }"/>
                                </div>
                            </td>

                        </tr>
                        <tr>

                            <td class="heading">联系电话 <span style="color: red"> *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="phone"
                                           name="phone" value="${pb.phone }"/>
                                </div>
                            </td>


                        </tr>
                        <tr>
                            <td class="heading">资质等级<span style="color: red"> *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="grade"
                                           name="grade" value="${pb.grade }"/>
                                </div>
                            </td>


                        </tr>
                        <tr>
                            <td class="heading">企业安全生产许可证编号<span style="color: red"> *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="number"
                                           name="number" value="${pb.number }"/>
                                </div>
                            </td>


                        </tr>


                        <tr>
                            <td class="heading">企业人员<span style="color: red"> *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="member"
                                           name="member" value="${pb.member }"/>
                                </div>
                            </td>


                        </tr>
                        <tr>
                            <td class="heading">是否作废<span style="color: red"> *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="cancel"
                                           name="cancel" value="${pb.cancel }"/>
                                </div>
                            </td>


                        </tr>


                        <%-- 	<tr>
                                <td class="heading">附件</td>
                                <td colspan="3">
                                    <div id="preview" form-group>
                                        <img id="imghead" src="${basePath}/web/images/photo_icon.png"
                                            width="130" height="130" onclick="$('#previewImg').click();">
                                    </div> <input type="file" name="personneImg"
                                    onchange="previewImage(this)" style="display: none;"
                                    id="previewImg">

                                </td>
                            </tr>
--%>
                        <tr>
                            <td colspan="4" class="heading">
                                <button type="button" class="btn btn-default"
                                        onclick="update()">
                                    <i class="fa fa-lock fa-large"></i>更新
                                </button>
                                <button type="button" class="btn btn-default" onclick="del()">
                                    <i class="fa fa-lock fa-large"></i>取消
                                </button>
                            </td>
                            <td colspan="4" class="heading"></td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </form>
    </div>
</div>

<script type="text/javascript">
    function update() {
        var proname = document.getElementById("factoryname").value;



        if (proname == "" )
            alert("企业名称不能为空");
        else{
            alert("新建塔吊(产权)完成");
            var basePath = $('#basePath').val();
            document.form1.action = basePath + '/confactory/webupdate';
            document.form1.submit();
        }




    }
</script>


</body>
</html>
