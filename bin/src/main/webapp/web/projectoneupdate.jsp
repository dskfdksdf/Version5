<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="common.jsp"%>
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
						value="<%=basePath%>" /> <input type="hidden" id="proid"
						name="proid" value="${pb.proid}" />
					<div class="panel-heading">
						<h2 class="panel-title">修改</h2>
						<a href="<%=basePath%>/web/queryone.jsp" id="exit">查询</a>
					</div>

					<div class="announce-info">
						<table class="table table-bordered">
							<caption>
								<i class="fa fa-reorder" style="margin-left: 8px"></i> 基本信息
							</caption>
							<tbody>
								<tr>
									<td class="heading">项目名<span style="color: red"> *</span></td>
									<td colspan="3">
										<div class="form-group">
											<input type="text" class="form-control" id="proname"
												name="proname" value="${pb.proname }" />
										</div>
									</td>

								</tr>
								<tr>
									<td class="heading">安监员<span style="color: red"> *</span></td>
									<td colspan="3">
										<div class="form-group">
											<input type="text" class="form-control" id="promonitorStr"
												name="promonitorStr" value="${pb.promonitorStr }" />
										</div>
									</td>

								</tr>
								<tr>

									<td class="heading">结构 <span style="color: red"> *</span></td>
									<td colspan="3">
										<div class="form-group">
											<input type="text" class="form-control" id="prostructure"
												name="prostructure" value="${pb.prostructure }" />
										</div>
									</td>


								</tr>
								<tr>
								<td class="heading">面积<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="proarea"
											name="proarea" value="${pb.proarea }" />
									</div>
								</td>


								</tr>
								<tr>
								<td class="heading">造价<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="proprice"
											name="proprice" value="${pb.proprice }" />
									</div>
								</td>


								</tr>
<tr>
								<td class="heading">状态<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="prostate"
											name="prostate" value="${pb.prostate }" />
									</div>
								</td>


								</tr>
								
								<tr>
								<td class="heading">进度<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="proprocess"
											name="proprocess" value="${pb.proprocess }" />
									</div>
								</td>


								</tr>
								
								<tr>
								<td class="heading">所属片区<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="proslice"
											name="proslice" value="${pb.proslice }" />
									</div>
								</td>


								</tr>
								
								<tr>
								<td class="heading">地址<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="proaddress"
											name="proaddress" value="${pb.proaddress }" />
									</div>
								</td>


								</tr>
								
								<tr>
								<td class="heading">施工单位<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="proconfactoryStr"
											name="proconfactoryStr" value="${pb.proconfactoryStr }" />
									</div>
								</td>


								</tr>
								
								<tr>
								<td class="heading">施工单位负责人<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="probemanageStr"
											name="probemanageStr" value="${pb.probemanageStr }" />
									</div>
								</td>


								</tr>
								
								<tr>
								<td class="heading">建设单位<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="proconfactoryStr1"
											name="proconfactoryStr1" value="${pb.proconfactoryStr1 }" />
									</div>
								</td>


								</tr>
								<tr>
								<td class="heading">建设单位负责人<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="probemanageStr1"
											name="probemanageStr1" value="${pb.probemanageStr1 }" />
									</div>
								</td>


								</tr>
								<tr>
								<td class="heading">监理单位<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="proconfactoryStr2"
											name="proconfactoryStr2" value="${pb.proconfactoryStr2 }" />
									</div>
								</td>


								</tr>
								<tr>
								<td class="heading">监理单位负责人<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="probemanageStr2"
											name="probemanageStr2" value="${pb.probemanageStr2 }" />
									</div>
								</td>


								</tr>
								<tr>
								<td class="heading">塔吊<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="towerStr"
											name="towerStr" value="${pb.towerStr }" />
									</div>
								</td>


								</tr>
								<tr>
								<td class="heading">施工电梯<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="elevatorStr"
											name="elevatorStr" value="${pb.elevatorStr }" />
									</div>
								</td>


								</tr>
								<tr>
								<td class="heading">物料提升机<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="mateeleStr"
											name="mateeleStr" value="${pb.mateeleStr }" />
									</div>
								</td>


								</tr>
								<tr>
								<td class="heading">其他设备<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="otherdeviceStr"
											name="otherdeviceStr" value="${pb.otherdeviceStr }" />
									</div>
								</td>


								</tr>
								<tr>
								<td class="heading">开工时间<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="prostarttime"
											name="prostarttime" value="${pb.prostarttime }" />
									</div>
								</td>


								</tr>
								<tr>
								<td class="heading">执法情况<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="proenforce"
											name="proenforce" value="${pb.proenforce }" />
									</div>
								</td>


								</tr>
								<tr>
								<td class="heading">项目自评情况<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="proevaluateself"
											name="proevaluateself" value="${pb.proevaluateself }" />
									</div>
								</td>


								</tr>
								<tr>
								<td class="heading">项目考评得分<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="proevaluateall"
											name="proevaluateall" value="${pb.proevaluateall }" />
									</div>
								</td>


								</tr>
								<tr>
								<td class="heading">项目评定等级<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="proevaluatelevel"
											name="proevaluatelevel" value="${pb.proevaluatelevel }" />
									</div>
								</td>


								</tr>
								
								<tr>
								<td class="heading">备注<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="proextrainfo"
											name="proextrainfo" value="${pb.proextrainfo}" />
									</div>
								</td>


								</tr>
								<tr>
								<td class="heading">每月录入省厅时间<span style="color: red"> *</span></td>
								<td colspan="3">
									<div class="form-group">
										<input type="text" class="form-control" id="prolukongdate"
											name="prolukongdate" value="${pb.prolukongdate}" />
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
			var basePath = $('#basePath').val();
			document.form1.action = basePath + '/projectone/webupdate';
			document.form1.submit();
		}
	</script>



</body>
</html>