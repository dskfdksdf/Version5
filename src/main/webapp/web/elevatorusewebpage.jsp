<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Title</title>
    <%@include file="common.jsp"%>
    <link rel="stylesheet" href="${basePath}/web/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${basePath}/web/css/bootstrap-table.min.css" />
    <link rel="stylesheet" href="${basePath}/web/css/query.css">
    <link rel="stylesheet" type="text/css"
          href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">

    <script type="text/javascript"
            src="${basePath}/web/js/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="${basePath}/web/js/bootstrap.min.js"></script>
    <script type="text/javascript"
            src="${basePath}/web/js/bootstrap-table.min.js"></script>
    <script type="text/javascript"
            src="${basePath}/web/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
    <script
            src="${basePath}/web/bootstrap-table/extensions/export/bootstrap-table-export.js"></script>
    <script src="${basePath}/web/js/tableExport.js"></script>
    <script src="${basePath}/web/js/jquery.base64.js"></script>
    <script type="text/javascript"
            src="${basePath}/web/js/bootstrap-table-locale-all.min.js"></script>
    <script type="text/javascript" src="${basePath}/web/js/elevatorusewebpage.js"></script>

</head>
<body>
<div align="center">
    <a href="../projectone/webpage">项目表</a> <a href="../reform/webpage">整改表</a>
    <a href="../enforce/webquery">执法表</a>
    <a href="../restart/webpage">复工表</a>
    <a href="../tongzhi/webpage">通知表</a>

    <a href="../tower/webpage">塔吊(产权)</a>
    <a href="../elevator/webpage">施工电梯(产权)</a>
    <a href="../mateele/webpage">物料提升机(产权)</a>


    <a href="../toweruse/webpage">塔吊(使用情况)</a>
    <a href="../elevatoruse/webpage">施工电梯(使用情况)</a>
    <a href="../mateeleuse/webpage">物料提升机(使用情况)</a>
    <a href="../confactory/webpage">企业表</a>
</div>
<br>
<hr>



<div class="panel panel-default">

    <input type="hidden" id="basePath" name="basePath"
           value="<%=basePath%>" />
    <div class="panel panel-success" id="main">
        <input type="hidden" id="message" name="message" value="${message }" />
        <%-- <input type="hidden" id="im" name="im" value="${articleBean.important}"/>
    <input type="hidden" id="br" name="br" value="${articleBean.brand}"/>  --%>
        <!--主体  -->
        <div class="panel-heading">

            <h3 class="panel-title">施工电梯(使用情况)信息查询</h3>
            <a href="../elevatoruse/webadd">新增施工电梯(使用登记)信息</a>
        </div>

        <!-- 标头 -->
        <div class="panel-body">
            <div class="title">

                <div class="announce-info">
                    <form action="<%=basePath%>/elevatoruse/webpage" method="post">
                        <table class="table table-bordered">
                            <tbody>
                            <tr>
                                <td class="heading">所在项目及栋号</td>
                                <td>
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="project"
                                               name="project" value="${pb.project}" />
                                    </div>
                                </td>
                                <td class="heading">建设单位</td>
                                <td>
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="establish"
                                               name="establish" value="${pb.establish}" />
                                    </div>
                                </td>
                            </tr>

                            <tr>

                                <td class="heading">生产厂家</td>
                                <td class="heading">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="manufac"
                                               name="manufac" value="${pb.manufac}" />
                                    </div>
                                </td>
                                <td class="heading">备注</td>
                                <td class="heading">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="remark"
                                               name="remark" value="${pb.remark}" />
                                    </div>
                                </td>


                            </tr>



                            <tr>
                                <td colspan="4" class="heading">
                                    <button type="submit" class="btn btn-default btn-sm">
                                        <i class="fa fa-search fa-large"></i>查询
                                    </button>
                                    <button type="reset" class="btn btn-default btn-sm"
                                            style="margin-right: 30px;">
                                        <i class="fa fa-undo fa-large"></i>重置
                                    </button>
                                </td>
                            </tr>

                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
        </div>

        <table id="table"></table>
    </div>
</div>




</body>
</html>
