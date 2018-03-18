<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>衡阳市建设工程质量安全监督--项目新建</title>
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
                        $('#proconfactoryid').append(option);

                        var option1 = document.createElement("option");
                        $(option1).val(obj[i].id);
                        $(option1).text(obj[i].factoryname);
                        $('#proconfactoryid1').append(option1);

                        var option2 = document.createElement("option");
                        $(option2).val(obj[i].id);
                        $(option2).text(obj[i].factoryname);
                        $('#proconfactoryid2').append(option2);
                    }


                });


                $.get(basePath + "/tower/query", function (data, status) {
                    var data2 = JSON.stringify(data);
                    var obj = JSON.parse(data2);
                    for (var i = 0; i < obj.length; i++) {
                        var option = document.createElement("option");
                        $(option).val(obj[i].id + ":" + obj[i].casenumber + " " + obj[i].propright);
                        $(option).text(obj[i].id + ":" + obj[i].casenumber + " " + obj[i].propright);
                        $('#towerStr').append(option);

                    }
                });

                $.get(basePath + "/elevator/query", function (data, status) {
                    var data2 = JSON.stringify(data);
                    var obj = JSON.parse(data2);
                    for (var i = 0; i < obj.length; i++) {
                        var option = document.createElement("option");
                        $(option).val(obj[i].id + ":" + obj[i].casenumber + " " + obj[i].propright);
                        $(option).text(obj[i].id + ":" + obj[i].casenumber + " " + obj[i].propright);
                        $('#elevatorStr').append(option);

                    }
                });

                $.get(basePath + "/mateele/query", function (data, status) {
                    var data2 = JSON.stringify(data);
                    var obj = JSON.parse(data2);
                    for (var i = 0; i < obj.length; i++) {
                        var option = document.createElement("option");
                        $(option).val(obj[i].id + ":" + obj[i].casenumber + " " + obj[i].propright);
                        $(option).text(obj[i].id + ":" + obj[i].casenumber + " " + obj[i].propright);
                        $('#mateeleStr').append(option);

                    }
                });
            } catch (e1) {
                alert(e1);
            }

        })
        function onchange1(x) {
            var person = document.getElementById("probemanageid");
            person.innerHTML = '';


            var confacStr = document.getElementById(x);
            var index = confacStr.selectedIndex;
            var confatoryStr = document.getElementById("proconfactoryStr");

            confatoryStr.value = confacStr.options[index].text;

            var bemanaStr = document.getElementById("probemanageStr");


            var y = document.getElementById(x).value;
            var basePath = $("#basePath").val();
            $.get(basePath + "/bemanaged/query", function (data, status) {
                var data2 = JSON.stringify(data);
                var obj = JSON.parse(data2);
                for (var i = 0; i < obj.length; i++) {
                    if (obj[i].companyid == y) {
                        var option = document.createElement("option");
                        $(option).val(obj[i].id);
                        $(option).text(obj[i].name);
                        bemanaStr.value = obj[i].name;
                        $('#probemanageid').append(option);
                    }
                }
            });


        }
        function onchange2(x) {
            var person = document.getElementById("probemanageid1");
            person.innerHTML = '';

            var confacStr = document.getElementById(x);
            var index = confacStr.selectedIndex;
            var confatoryStr = document.getElementById("proconfactoryStr1");
            confatoryStr.value = confacStr.options[index].text;


            var bemanaStr = document.getElementById("probemanageStr1");


            var y = document.getElementById(x).value;
            var basePath = $("#basePath").val();
            $.get(basePath + "/bemanaged/query", function (data, status) {
                var data2 = JSON.stringify(data);
                var obj = JSON.parse(data2);
                for (var i = 0; i < obj.length; i++) {
                    if (obj[i].companyid == y) {
                        var option = document.createElement("option");
                        $(option).val(obj[i].id);
                        $(option).text(obj[i].name);

                        bemanaStr.value = obj[i].name;
                        $('#probemanageid1').append(option);
                    }
                }
            });
        }
        function onchange3(x) {

            var person = document.getElementById("probemanageid2");
            person.innerHTML = '';

            var confacStr = document.getElementById(x);
            var index = confacStr.selectedIndex;
            var confatoryStr = document.getElementById("proconfactoryStr2");
            confatoryStr.value = confacStr.options[index].text;


            var bemanaStr = document.getElementById("probemanageStr2");


            var y = document.getElementById(x).value;
            var basePath = $("#basePath").val();
            $.get(basePath + "/bemanaged/query", function (data, status) {
                var data2 = JSON.stringify(data);
                var obj = JSON.parse(data2);
                for (var i = 0; i < obj.length; i++) {
                    if (obj[i].companyid == y) {
                        var option = document.createElement("option");
                        $(option).val(obj[i].id);
                        $(option).text(obj[i].name);


                        bemanaStr.value = obj[i].name;
                        $('#probemanageid2').append(option);
                    }
                }
            });
        }
        function onchange4(x) {
            try {
                var towerStr2 = document.getElementById("towerStr2");
                var e = document.getElementById(x);
                towerStr2.value = getSelectValues(e);

            } catch (e1) {
                alert(e1.message + " onchange4");
            }
        }


        function getSelectValues(select) {
            var result = [];
            var options = select && select.options;
            var opt;

            for (var i = 0, iLen = options.length; i < iLen; i++) {
                opt = options[i];

                if (opt.selected) {
                    result.push(opt.value || opt.text);
                }
            }
            return result;
        }


        function onchange5(x) {
            try {
                var towerStr2 = document.getElementById("elevatorStr2");
                var e = document.getElementById(x);
                towerStr2.value = getSelectValues(e);

            } catch (e1) {
                alert(e1.message);
            }

        }
        function onchange6(x) {
            try {
                var towerStr2 = document.getElementById("mateeleStr2");
                var e = document.getElementById(x);
                towerStr2.value = getSelectValues(e);

            } catch (e1) {
                alert(e1.message);
            }

        }


        function submit1() {

            var proname = document.getElementById("proname").value;
            var proaddress = document.getElementById("proaddress").value;
            //    alert(proname+" "+proaddress);


            if (proname == "" || proaddress == "")
                alert("项目名和地址不能为空");
            else {
                /*   var proconfactoryStr=document.getElementById("proconfactoryStr").value;
                 var proconfactoryStr1=document.getElementById("proconfactoryStr1").value;
                 var proconfactoryStr2=document.getElementById("proconfactoryStr2").value;
                 var probemanageStr=document.getElementById("probemanageStr").value;
                 var probemanageStr1=document.getElementById("probemanageStr1").value;
                 var probemanageStr2=document.getElementById("probemanageStr2").value;

                 alert(proconfactoryStr+" "+proconfactoryStr1+" "+proconfactoryStr2);
                 alert(probemanageStr+" "+probemanageStr1+" "+probemanageStr2);*/
                alert("新建项目完成");
            }


        }
    </script>
</head>
<body>

<div class="panel panel-default">
    <div class="panel-body">

        <form action="${basePath}/projectone/webadd" method="post" id="tableForm" name="form1"
              enctype="multipart/form-data">
            <div class="panel panel-success" id="main">
                <!--主体  -->
                <input type="hidden" id="basePath" name="basePath" value="<%=basePath%>"/>
                <input type="hidden" id="proid" name="proid" value="${pb.proid}"/>
                <div class="panel-heading">
                    <h2 class="panel-title">新建项目信息</h2>
                    <a href="<%=basePath %>/web/queryone.jsp" id="exit">项目表查询</a>
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
                            <td class="heading">项目名称<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="proname" name="proname"
                                           value="${pb.proname}"/>

                                    <%--   <p  id="senderStr" name="senderStr" value="${pb.senderStr}">${pb.senderStr}</p>--%>
                                </div>
                            </td>

                        </tr>

                        <tr>

                            <td class="heading">安监员<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="promonitorStr" name="promonitorStr"
                                           value="${pb.promonitorStr}"/>

                                </div>
                            </td>


                        </tr>


                        <tr>
                            <td class="heading">结构<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="prostructure" name="prostructure"
                                           value="${pb.prostructure}"/>

                                </div>
                            </td>

                        </tr>


                        <tr>
                            <td class="heading">面积<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="proarea" name="proarea"
                                           placeholder="只能输入数字和小数点"
                                           onkeyup="this.value=this.value.replace(/[^\d.]/g,'')"
                                           onafterpaste="this.value=this.value.replace(/[^\d.]/g,'')"
                                           value="${pb.proarea }"/>
                                </div>
                            </td>

                        </tr>

                        <tr>
                            <td class="heading">造价<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="proprice" name="proprice"
                                           placeholder="只能输入数字和小数点"
                                           onkeyup="this.value=this.value.replace(/[^\d.]/g,'')"
                                           onafterpaste="this.value=this.value.replace(/[^\d.]/g,'')"
                                           value="${pb.proprice }"/>
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">状态<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <%-- <input type="text" class="form-control" id="prostate" name="prostate"
                                            value="${pb.member}"/>--%>
                                    <%--   <p  id="prostate" name="prostate" value="${pb.prostate}">${pb.prostate}</p>--%>
                                    <input readonly="readonly" id="prostate" name="prostate"
                                           value="${pb.prostate}"></input>
                                </div>
                            </td>

                        </tr>

                        <tr>
                            <td class="heading">进度<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <%-- <input type="text" class="form-control" id="prostate" name="prostate"
                                            value="${pb.member}"/>--%>
                                    <%--  <p  id="prostate" name="prostate" value="${pb.prostate}">${pb.prostate}</p>--%>
                                    <input type="radio" id="role1" name="proprocess" value="基础" checked="checked">基础
                                    <input type="radio" id="role2" name="proprocess" value="主体施工">主体施工
                                    <input type="radio" id="role3" name="proprocess" value="主体完工">主体完工
                                    <input type="radio" id="role4" name="proprocess" value="装饰装修">装饰装修
                                    <input type="radio" id="role3" name="proprocess" value="竣工待验">竣工待验
                                    <input type="radio" id="role4" name="proprocess" value="竣工">竣工
                                    <input type="radio" id="role4" name="proprocess" value="作废">作废
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">所属片区<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="proslice" name="proslice"
                                           value="${pb.proslice}"/>

                                </div>
                            </td>

                        </tr>

                        <tr>
                            <td class="heading">地址<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="proaddress" name="proaddress"
                                           value="${pb.proaddress}"/>

                                </div>
                            </td>

                        </tr>

                        <tr>
                            <td class="heading">施工单位及其负责人<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">

                                    <select id="proconfactoryid" name="proconfactoryid" onclick="onchange1(this.id)">
                                    </select>
                                    <input type="hidden" id="proconfactoryStr" name="proconfactoryStr"
                                           value="${pb.proconfactoryStr}">${pb.proconfactoryStr}</input>
                                    <select id="probemanageid" name="probemanageid"></select>
                                    <input type="hidden" id="probemanageStr" name="probemanageStr"
                                           value="${pb.probemanageStr}">${pb.probemanageStr}</input>
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">建设单位及其负责人<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">

                                    <select id="proconfactoryid1" name="proconfactoryid1" onclick="onchange2(this.id)">
                                    </select>
                                    <input type="hidden" id="proconfactoryStr1" name="proconfactoryStr1"
                                           value="${pb.proconfactoryStr1}">${pb.proconfactoryStr1}</input>
                                    <select id="probemanageid1" name="probemanageid1"></select>
                                    <input type="hidden" id="probemanageStr1" name="probemanageStr1"
                                           value="${pb.probemanageStr1}">${pb.probemanageStr1}</input>
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">监理单位及其负责人<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">

                                    <select id="proconfactoryid2" name="proconfactoryid2" onclick="onchange3(this.id)">
                                    </select>
                                    <input type="hidden" id="proconfactoryStr2" name="proconfactoryStr2"
                                           value="${pb.proconfactoryStr2}">${pb.proconfactoryStr2}</input>
                                    <select id="probemanageid2" name="probemanageid2"></select>
                                    <input type="hidden" id="probemanageStr2" name="probemanageStr2"
                                           value="${pb.probemanageStr2}">${pb.probemanageStr2}</input>
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">塔吊<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">

                                    <select onchange="onchange4(this.id)" id="towerStr" name="towerStr" size="10"
                                            multiple>
                                    </select>
                                    <br/>
                                    <textarea readonly="readonly" id="towerStr2" name="towerStr2" rows="15"
                                              cols="100"></textarea>
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">施工电梯<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">

                                    <select onchange="onchange5(this.id)" id="elevatorStr" name="elevatorStr" size="10"
                                            multiple>
                                    </select>
                                    <br/>
                                    <textarea readonly="readonly" id="elevatorStr2" name="elevatorStr2" rows="15"
                                              cols="100"></textarea>

                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">物料提升机<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">

                                    <select onchange="onchange6(this.id)" id="mateeleStr" name="mateeleStr" size="10"
                                            multiple>
                                    </select>
                                    <br/>
                                    <textarea readonly="readonly" id="mateeleStr2" name="mateeleStr2" rows="15"
                                              cols="100"></textarea>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="heading">开工时间<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="prostarttime" name="prostarttime"
                                           placeholder="只能输入数字和-,如2017-02-13"
                                           onkeyup="this.value=this.value.replace(/[^\d-]/g,'')"
                                           onafterpaste="this.value=this.value.replace(/[^\d-]/g,'')"
                                           value="${pb.prostarttime}"/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="heading">执法情况<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="proenforce" name="proenforce"
                                           value="${pb.proenforce}"/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="heading">项目自评情况<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="proevaluateself" name="proevaluateself"
                                           value="${pb.proevaluateself}"/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="heading">项目考评得分<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="proevaluateall" name="proevaluateall"
                                           placeholder="只能输入数字和小数点"
                                           onkeyup="this.value=this.value.replace(/[^\d.]/g,'')"
                                           onafterpaste="this.value=this.value.replace(/[^\d.]/g,'')"
                                           value="${pb.proevaluateall}"/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="heading">项目评定等级<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="proevaluatelevel"
                                           name="proevaluatelevel"
                                           value="${pb.proevaluatelevel}"/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="heading">备注<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="proextrainfo" name="proextrainfo"
                                           value="${pb.proextrainfo}"/>
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
