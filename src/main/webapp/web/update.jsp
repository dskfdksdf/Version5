<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>修改</title>
     <%@ include file="common.jsp" %>
 <link rel="stylesheet" href="${ctx}/web/css/index.css">

<link rel="stylesheet" href="${ctx}/web/css/bootstrap.min.css">
<link rel="stylesheet" href="${ctx}/web/css/bootstrapValidator.min.css">
<link rel="stylesheet" href="${ctx}/css/index.css">
<link rel="stylesheet" href="${ctx}/web/css/layui.css">
<link type="text/css" rel="stylesheet" href="${ctx}/web/css/jedate.css">
<link rel="stylesheet" type="text/css"	href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
<script type="text/javascript" src="${ctx}/web/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="${ctx}/web/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx}/web/js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="${ctx}/web/js/layui.js"></script>
	<script type="text/javascript" src="${ctx}/web/js/jquery.jedate.js"></script>
	<script type="text/javascript" src="${ctx}/web/js/contract.js"></script>


 
</head>
<body>
${message}
	<div class="panel panel-default">
		<div class="panel-body">
		
		 <form  action="#" method="post" id="tableForm" name="form1" >
		 <div class="panel panel-success" id="main">
		 <!--主体  -->
		   <input type="hidden" id="basePath" name="basePath" value="<%=basePath %>"/>
		   <input type="hidden" id="id" name="id" value="${pb.id}"/>
                    <div class="panel-heading">
                        <h2 class="panel-title">修改</h2>
                        <a href="<%=basePath %>/web/query.jsp" id = "exit">查询</a>
                    </div>
              
                      <div class="announce-info">
                            <table class="table table-bordered">
                               <caption>
                                    <i class="fa fa-reorder" style="margin-left:8px"></i>  基本信息
                               </caption>
                               <tbody>
                                  <tr>
                                         <td class="heading">项目名<span style="color:red">  *</span></td>
                                         <td colspan="3">
                                             <div class="form-group" >
                                                     <input type="text" class="form-control" id="projectname" name="projectname" value="${pb.projectname }"/>
                                             </div>
                                         </td>
                                         
                                  </tr>
                                  
                                  <tr>
                                  
                                   <td  class="heading">结构 <span style="color:red">  *</span></td>
	                                     <td colspan="3">
	                                         <div class="form-group">
	                                         <input type="text" class="form-control" id="structure" name="structure" value="${pb.structure }"/>
	                                         </div>
	                                     </td>
                                    
                                       
                                  </tr>
                                  
                                  
                                  <tr>
                                  <td  class="heading">地址 <span style="color:red">  *</span></td>
                                     <td colspan="3">
                                         <div class="form-group">
                                         <input type="text" class="form-control" id="address" name="address" value="${pb.address }"/>
                                         </div>
                                     </td>
                                     
                                  </tr>
                                  
                                  
                                     <tr>
                                  <td  class="heading">所属片区 <span style="color:red">  *</span></td>
                                     <td colspan="3">
                                         <div class="form-group">
                                         <input type="text" class="form-control" id="belong_dist" name="belong_dist" value="${pb.belong_dist }"/>
                                         </div>
                                     </td>
                                     
                                  </tr>
                                  <tr>
                                  <td  class="heading">安全受监 <span style="color:red">  *</span></td>
                                     <td colspan="3">
                                         <div class="form-group">
                                         <input type="text" class="form-control" id="secu_monit" name="secu_monit" value="${pb.secu_monit }"/>
                                         </div>
                                     </td>
                                     
                                  </tr>
                                  
                                    
                                  
                                    
                                  <tr>
                                  <td  class="heading">安检员 <span style="color:red">  *</span></td>
                                     <td colspan="3">
                                         <div class="form-group">
                                         <input type="text" class="form-control" id="monitor" name="monitor" value="${pb.monitor }"/>
                                         </div>
                                     </td>
                                    
                                  </tr>
                                  
                                  
                                  
                                    
                                  <tr>
                                      <td  class="heading">施工单位 <span style="color:red">  *</span></td>
                                     <td colspan="3">
                                         <div class="form-group">
                                         <input type="text" class="form-control" id="execute" name="execute" value="${pb.execute }"/>
                                         </div>
                                     </td>
                                     
                                  </tr>
                                  
                                  <tr>
                                     <td  class="heading">备注<span style="color:red">  *</span></td>
                                     <td colspan="3">
                                         <div class="form-group">
                                         <input type="text" class="form-control" id="extra_info"  name="extra_info" value="${pb.extra_info }"/>
                                         </div>
                                     </td>
                                    
                                  </tr>
                                  <tr>
                                    <td  class="heading">附件</td>
                                     <td colspan="3">
                                         <div id="preview" form-group>
											<img id="imghead" src="${basePath}/web/images/photo_icon.png"
												width="130" height="130" onclick="$('#previewImg').click();">
										</div>
										<input type="file" name="personneImg"
											onchange="previewImage(this)" style="display: none;"
											id="previewImg">
                                           
                                      </td>
                                  </tr>
                                  
                                   <tr>
                                         <td colspan="4" class="heading">
                                                <button type="button" class="btn btn-default" onclick="update()"><i class="fa fa-lock fa-large" ></i>更新</button>
                                                <button type="button" class="btn btn-default" onclick="del()"><i class="fa fa-lock fa-large" ></i>取消</button>
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


function update(){
	 var basePath = $('#basePath').val();
	 document.form1.action=basePath+'/project/webupdate'; 
	 document.form1.submit();
}
</script>
</body>
</html>