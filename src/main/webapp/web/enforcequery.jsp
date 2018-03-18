<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


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
<script type="text/javascript" src="${basePath}/web/js/enforcequery.js"></script>

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

				<h3 class="panel-title">执法表信息查询</h3>
			</div>

			<!-- 标头 -->
			<div class="panel-body">
				<div class="title">

					<div class="announce-info">
						<form action="<%=basePath%>/enforce/webquery" method="post">
							<table class="table table-bordered">
								<tbody>
									<tr>
										<td class="heading">执法表id</td>
										<td>
											<div class="form-group">
												<input type="text" class="form-control" id="enid"
													name="enid" value="${pb.enid}" />
											</div>
										</td>
										<td class="heading">整改表id</td>
										<td>
											<div class="form-group">
												<input type="text" class="form-control" id="enreid"
													name="enreid" value="${pb.enreid}" />
											</div>
										</td>
									</tr>
									
									<tr>
										<td class="heading">项目表id</td>
										<td class="heading">
											<div class="form-group">
												<input type="text" class="form-control" id="enproid"
													name="enproid" value="${pb.enproid}" />
											</div>
										</td>
										<td class="heading">整改单编号</td>
										<td class="heading">
											<div class="form-group">
												<input type="text" class="form-control" id="enzhenggaiid"
													name="enzhenggaiid" value="${pb.enzhenggaiid}" />
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