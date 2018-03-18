<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>衡阳市建设工程质量安全监督--塔吊新建</title>
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
    <script type="text/javascript">

        function submit1() {

            var proname = document.getElementById("casenumber").value;
            var proaddress = document.getElementById("propright").value;



            if (proname == "" || proaddress == "")
                alert("备案编号和产权单位名称不能为空");
            else{
                alert("新建塔吊(产权)完成");
            }


        }

    </script>

</head>
<body>

<div class="panel panel-default">
    <div class="panel-body">

        <form action="${basePath}/tower/webadd" method="post" id="tableForm" name="form1"
              enctype="multipart/form-data">
            <div class="panel panel-success" id="main">
                <!--主体  -->
                <input type="hidden" id="basePath" name="basePath" value="<%=basePath%>"/>
                <input type="hidden" id="id" name="id" value="${pb.id}"/>
                <div class="panel-heading">
                    <h2 class="panel-title">新建塔吊信息</h2>
                    <a href="<%=basePath %>/web/towerwebpage.jsp" id="exit">塔吊(产权)表查询</a>
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
                            <td class="heading">产权单位名称<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="propright" name="propright"
                                           value="${pb.propright}"/>

                                    <%--   <p  id="senderStr" name="senderStr" value="${pb.senderStr}">${pb.senderStr}</p>--%>
                                </div>
                            </td>

                        </tr>

                        <tr>

                            <td class="heading">设备名称<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input readonly="readonly"  class="form-control"  id="devicename" name="devicename" value="${pb.devicename}"/>
                                </div>
                            </td>


                        </tr>


                        <tr>
                            <td class="heading">规格型号<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="format" name="format"
                                           value="${pb.format}"/>

                                </div>
                            </td>

                        </tr>


                        <tr>
                            <td class="heading">出厂编号<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="manunumber" name="manunumber"
                                           value="${pb.manunumber}"/>

                                </div>
                            </td>

                        </tr>

                        <tr>
                            <td class="heading">出厂厂家<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="manufac" name="manufac"
                                           value="${pb.manufac}"/>

                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">负责人<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="dutyman" name="dutyman"
                                           value="${pb.dutyman}"/>
                                </div>
                            </td>

                        </tr>

                        <tr>
                            <td class="heading">机械员<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="machiner" name="machiner"
                                           value="${pb.machiner}"/>
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">联系电话<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="phone" name="phone"
                                           placeholder="只能输入数字"
                                           onkeyup="this.value=this.value.replace(/[^\d]/g,'')"
                                           onafterpaste="this.value=this.value.replace(/[^\d]/g,'')"
                                           value="${pb.phone}"/>

                                </div>
                            </td>

                        </tr>

                        <tr>
                            <td class="heading">备案编号<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="casenumber" name="casenumber"
                                           value="${pb.casenumber}"/>

                                </div>
                            </td>

                        </tr>

                        <tr>
                            <td class="heading">出厂时间<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="manutime" name="manutime"
                                           value="${pb.manutime}"/>
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">备案有效期限<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="efftime" name="efftime"
                                           value="${pb.efftime}"/>
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">备案时间<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="casetime" name="casetime"
                                           value="${pb.casetime}"/>
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">备注<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="remark" name="remark"
                                           value="${pb.remark}"/>


                                </div>
                            </td>

                        </tr>














                        <tr>
                            <td colspan="4" class="heading">
                                <button type="submit" onclick="submit1()" class="btn btn-default"><i
                                        class="fa fa-lock fa-large"></i>新增
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
