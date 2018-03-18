<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
    <script type="text/javascript">
        $(document).ready(function (e) {
            try {
                var basePath = $("#basePath").val();
                $.get(basePath + '/confactory/query', function (data, status) {

                    var data2 = JSON.stringify(data);
                    var obj = JSON.parse(data2);

                    for (var i = 0; i < obj.length; i++) {
                        var option = document.createElement("option");
                        $(option).val(obj[i].id);
                        $(option).text(obj[i].factoryname);
                        $('#dismantleid').append(option);
                    }
                });


                $.get(basePath + '/projectone/query', function (data, status) {

                    var data2 = JSON.stringify(data);
                    var obj = JSON.parse(data2);

                    for (var i = 0; i < obj.length; i++) {
                        var option = document.createElement("option");
                        $(option).val(obj[i].proid);
                        $(option).text(obj[i].proname);
                        $('#projectid').append(option);
                    }
                });

                $.get(basePath + '/mateele/query', function (data, status) {

                    var data2 = JSON.stringify(data);
                    var obj = JSON.parse(data2);

                    for (var i = 0; i < obj.length; i++) {
                        var option = document.createElement("option");
                        $(option).val(obj[i].id);
                        $(option).text(obj[i].id + ":" + obj[i].casenumber + " " + obj[i].propright);
                        $('#deviceid').append(option);
                    }
                });


            } catch (e1) {
                alert(e1);
            }

        })

        function onchange1(x) {

            try {
                var confacStr = document.getElementById(x);
                var index = confacStr.selectedIndex;
                var confatoryStr = document.getElementById("project");

                confatoryStr.value = confacStr.options[index].text;

                var construct = document.getElementById("construct");//施工单位
                var establish = document.getElementById("establish");//建设单位
                var manit = document.getElementById("manit");
                var basePath = $("#basePath").val();
                $.get(basePath + '/projectone/query', function (data, status) {

                    var data2 = JSON.stringify(data);
                    var obj = JSON.parse(data2);

                    for (var i = 0; i < obj.length; i++) {
                        /*   var option = document.createElement("option");
                         $(option).val(obj[i].proid);
                         $(option).text(obj[i].proname);
                         $('#projectid').append(option);*/
                        if (confacStr.options[index].value == obj[i].proid) {
                            construct.value = obj[i].proconfactoryStr;construct.text=obj[i].proconfactoryStr;
                            establish.value = obj[i].proconfactoryStr1;establish.text=obj[i].proconfactoryStr1;
                            manit.value = obj[i].proconfactoryStr2;manit.text=obj[i].proconfactoryStr2;

                        }
                    }
                });
            } catch (e1) {
                alert(e1.message);
            }


        }
        function onchange2(x) {

            try {
                var confacStr = document.getElementById(x);
                var index = confacStr.selectedIndex;

                var confatoryStr = document.getElementById("dismantle");

                confatoryStr.value = confacStr.options[index].text;





            } catch (e1) {
                alert(e1.message+" hello");
            }


        }

        function submit1() {

            var proname = document.getElementById("projectid").value;
            var proaddress = document.getElementById("usesituat").value;



            if (proname == "" || proaddress == "")
                alert("所在项目和登记号名称不能为空");
            else{
                alert("修改物料提升机(使用登记)完成");
                var basePath = $('#basePath').val();
                document.form1.action = basePath + '/mateeleuse/webupdate';
                document.form1.submit();
            }


        }


    </script>
</head>
<body>

<div class="panel panel-default">
    <div class="panel-body">

        <form action="#" method="post" id="tableForm" name="form1">
            <div class="panel panel-success" id="main">
                <!--主体  -->
                <input type="hidden" id="basePath" name="basePath"
                       value="<%=basePath%>"/>
                <input type="hidden" id="id"
                       name="id" value="${pb.id}"/>
                <div class="panel-heading">
                    <h2 class="panel-title">修改</h2>
                    <a href="<%=basePath%>/web/mateeleusewebpage.jsp" id="exit">查询</a>
                </div>

                <div class="announce-info">
                    <table class="table table-bordered">
                        <caption>
                            <i class="fa fa-reorder" style="margin-left: 8px"></i> 基本信息
                        </caption>
                        <tbody>

                        <tr>
                            <td class="heading">设备类型<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">

                                    <input readonly="readonly" class="form-control" id="devicetype" name="devicetype" value="${pb.devicetype}"></input>
                                </div>
                            </td>

                        </tr>

                        <tr>

                            <td class="heading">所在项目及栋号<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <select id="projectid" name="projectid" onclick="onchange1(this.id)"></select>
                                    <input type="hidden" id="project" name="project"
                                           value="${pb.project}">${pb.project}</input>
                                </div>
                            </td>


                        </tr>


                        <tr>
                            <td class="heading">建设单位<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="establish" name="establish"
                                           value="${pb.establish}" readonly="readonly"/>

                                </div>
                            </td>

                        </tr>


                        <tr>
                            <td class="heading">施工单位<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="construct" name="construct"
                                           value="${pb.construct}" readonly="readonly"/>

                                </div>
                            </td>

                        </tr>

                        <tr>
                            <td class="heading">监理单位<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="manit" name="manit" readonly="readonly"
                                           value="${pb.manit}"/>

                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">安拆单位<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <select  id="dismantleid" name="dismantleid"  onclick="onchange2(this.id)"></select>
                                    <input type="hidden" id="dismantle" name="dismantle" value="${pb.dismantle}">${pb.dismantle}</input>
                                </div>
                            </td>

                        </tr>

                        <tr>
                            <td class="heading">租赁(产权)单位<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="rent" name="rent"
                                           value="${pb.rent}"/>
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">检测单位<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="monitest" name="monitest"
                                           value="${pb.monitest}"/>

                                </div>
                            </td>

                        </tr>

                        <tr>
                            <td class="heading">产权备案情况(备案号)<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="casenumber" name="casenumber"
                                           value="${pb.casenumber}"/>

                                </div>
                            </td>

                        </tr>

                        <tr>
                            <td class="heading">检验检测情况<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="monisituat" name="monisituat"
                                           value="${pb.monisituat}"/>
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">使用登记情况(登记号)<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="usesituat" name="usesituat"
                                           value="${pb.usesituat}"/>
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">设备运行情况<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="devicerun" name="devicerun"
                                           value="${pb.devicerun}"/>
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">生产厂家<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="manufac" name="manufac"
                                           value="${pb.manufac}"/>


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
                            <td class="heading">出厂时间<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="manutime" name="manutime"
                                           value="${pb.manutime}"/>


                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">安装告知时间<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="infotime" name="infotime"
                                           value="${pb.infotime}"/>


                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">安装时间<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="installtime" name="installtime"
                                           value="${pb.installtime}"/>


                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">检测时间<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="testtime" name="testtime"
                                           value="${pb.testtime}"/>


                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">联合验收时间<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="accepttime" name="accepttime"
                                           value="${pb.accepttime}"/>


                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">使用登记备案时间<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="casetime" name="casetime"
                                           value="${pb.casetime}"/>


                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">维保起止时间<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="matiantime" name="matiantime"
                                           value="${pb.matiantime}"/>


                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">拆迁时间<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="dismantime" name="dismantime"
                                           value="${pb.dismantime}"/>


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
                            <td class="heading">所关联的物料提升机<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <select id="deviceid" name="deviceid" ></select>


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
                                        onclick="submit1()">
                                    <i class="fa fa-lock fa-large"></i>更新
                                </button>
                                <button type="button" class="btn btn-default" >
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






</body>
</html>
