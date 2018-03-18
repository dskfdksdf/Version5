<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
index
<span style="display: none;" id="message">${message}</span>
<span style="display: none;" id="multiadd">${multiadd}</span>
<div class="panel panel-default">
    <div class="panel-body">

        <form action="${basePath}/project/webadd" method="post" id="tableForm" name="form1"
              enctype="multipart/form-data">
            <div class="panel panel-success" id="main">
                <!--主体  -->
                <input type="hidden" id="basePath" name="basePath" value="<%=basePath %>"/>
                <input type="hidden" id="PROTOCOL_ID" name="PROTOCOL_ID" value="${pb.id}"/>
                <div class="panel-heading">
                    <h2 class="panel-title">添加项目</h2>
                    <a href="<%=basePath %>/web/query.jsp" id="exit">查询</a>
                </div>

                <div class="announce-info">
                    <table class="table table-bordered">
                        <caption>
                            <i class="fa fa-reorder" style="margin-left:8px"></i> 基本信息


                        </caption>
                        <tbody>
                        <tr>
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
                        </tr>
                        <tr>
                            <td class="heading">项目名<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="projectname" name="projectname"
                                           value="${pb.projectname }"/>
                                </div>
                            </td>

                        </tr>

                        <tr>

                            <td class="heading">结构 <span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="structure" name="structure"
                                           value="${pb.structure }"/>
                                </div>
                            </td>


                        </tr>


                        <tr>
                            <td class="heading">地址 <span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="address" name="address"
                                           value="${pb.address }"/>
                                </div>
                            </td>

                        </tr>


                        <tr>
                            <td class="heading">所属片区 <span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="belong_dist" name="belong_dist"
                                           value="${pb.belong_dist }"/>
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">安全受监 <span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="secu_monit" name="secu_monit"
                                           value="${pb.secu_monit }"/>
                                </div>
                            </td>

                        </tr>


                        <tr>
                            <td class="heading">安检员 <span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="monitor" name="monitor"
                                           value="${pb.monitor }"/>
                                </div>
                            </td>

                        </tr>


                        <tr>
                            <td class="heading">施工单位 <span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="execute" name="execute"
                                           value="${pb.execute }"/>
                                </div>
                            </td>

                        </tr>

                        <tr>
                            <td class="heading">备注<span style="color:red">  *</span></td>
                            <td colspan="3">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="extra_info" name="extra_info"
                                           value="${pb.extra_info }"/>
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <td class="heading">附件</td>
                            <td colspan="3">
                                <div id="preview" form-group>
                                    <img id="imghead" src="${basePath}/web/images/photo_icon.png"
                                         width="130" height="130" onclick="$('#files').click();">
                                </div>
                                <input type="file" name="files"
                                       onchange="previewImage(this)" style="display: none;"
                                       id="files">
                                <!-- <div class="form-group">
                                      <input class="file fileUp" type="file" id="fileInput" name="files" onchange="ch()" />
                                 </div> -->

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


<script type="text/javascript">

    $(function () {
        var message = $("#message").text();
        var multiadd = $("#multiadd").text();

        if (message != null && message != '') {
            alert(message);
        }
        if (multiadd != null && multiadd != '') {
            alert('批量添加:' + multiadd + '条记录');
        }
    });


    function multiupload() {
        var basePath = $("#basePath").val();
        $.ajaxFileUpload
        ({
            url: basePath + '/project/webmultiadd', //用于文件上传的服务器端请求地址
            type: 'post',
            secureuri: false, //是否需要安全协议，一般设置为false
            fileElementId: "mulfile", //文件上传域的ID
            data: {},//一同上传的数据
            dataType: 'json', //返回值类型 一般设置为json
            success: function (data, status)  //服务器成功响应处理函数
            {
                if (data > 0) {
                    alert("上传成功");

                } else {
                    alert("上传失败");

                }
            }

        })
    }

    //图片上传预览    IE是用了滤镜。
    function previewImage(file) {
        var MAXWIDTH = 130;
        var MAXHEIGHT = 130;
        var div = document.getElementById('preview');
        if (file.files && file.files[0]) {
            div.innerHTML = '<img id=imghead onclick=$("#previewImg").click()>';
            var img = document.getElementById('imghead');
            img.onload = function () {
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width = rect.width;
                img.height = rect.height;
//         img.style.marginLeft = rect.left+'px';
                /*  img.style.marginTop = rect.top+'px';*/
            }
            var reader = new FileReader();
            reader.onload = function (evt) {
                img.src = evt.target.result;
            }
            reader.readAsDataURL(file.files[0]);
        }
        else //兼容IE
        {
            var sFilter = 'filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
            file.select();
            var src = document.selection.createRange().text;
            div.innerHTML = '<img id=imghead>';
            var img = document.getElementById('imghead');
            img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
            var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
            status = ('rect:' + rect.top + ',' + rect.left + ',' + rect.width + ',' + rect.height);
            div.innerHTML = "<div id=divhead style='width:" + rect.width + "px;height:" + rect.height + "px;margin-top:" + rect.top + "px;" + sFilter + src + "\"'></div>";
        }
    }
    function clacImgZoomParam(maxWidth, maxHeight, width, height) {
        var param = {top: 0, left: 0, width: width, height: height};
        if (width > maxWidth || height > maxHeight) {
            rateWidth = width / maxWidth;
            rateHeight = height / maxHeight;

            if (rateWidth > rateHeight) {
                param.width = maxWidth;
                param.height = Math.round(height / rateWidth);
            } else {
                param.width = Math.round(width / rateHeight);
                param.height = maxHeight;
            }
        }
        param.left = Math.round((maxWidth - param.width) / 2);
        param.top = Math.round((maxHeight - param.height) / 2);
        return param;
    }


    function add() {
        var basePath = $('#basePath').val();
        document.form1.action = basePath + '/project/add';
        document.form1.submit();
    }


    function other() {

        $('#tableForm').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                /*input状态样式图片*/
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                /*验证：规则*/
                postcode: {//验证input项：验证规则
                    message: 'The postcode is not valid',

                    validators: {
                        notEmpty: {//非空验证：提示消息
                            message: '邮编'
                        },
                        stringLength: {
                            min: 6,
                            max: 6,
                            message: '邮箱长度必须为6'
                        },
                        regexp: {
                            regexp: /^[1-9]\d*|0$/,
                            message: '邮编由数字组成'
                        }
                    }
                }

            }
        })
    }


    /* $("#date03").jeDate({
     isinitVal:true,
     //festival:true,
     ishmsVal:false,
     minDate: '2016-06-16',
     maxDate: $.nowDate({DD:0}),
     format:"YYYY-MM-DD",
     zIndex:3000,
     }); */
</script>


</body>
</html>