<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
</head>
<body>
	<input id="files" type="file" name="files">
	<button onclick="upload()">上传</button>

	<br />

	<input id="file1" type="file" name="files">
	<input id="file2" type="file" name="files">
	<input id="file3" type="file" name="files">
	<button onclick="uploads()">多上传</button>


 <form action="./Upload/DownloadFile" method="post">  
           <!-- 文件名：<input type="text" name="name"/>
           文件路径：<input type="text" name="filePath"/> -->
           <input type="submit" value="确认下载"/>  
   </form> 

<a href="./Upload/DownloadFile">下载</a>
<script type="text/javascript">
function upload() {
	$.ajaxFileUpload
	({
		url: 'http://localhost:8080/Version5/project/add.action?projectname=123456', //用于文件上传的服务器端请求地址
		type:'post',
		secureuri: false, //是否需要安全协议，一般设置为false
		fileElementId: "files", //文件上传域的ID
		data:{
			  "projectname": "123qaz"
		},//一同上传的数据
		dataType: 'json', //返回值类型 一般设置为json
		success: function (data, status)  //服务器成功响应处理函数
        {
			if(data>0){
				alert("上传成功");
				
			}else{
				alert("上传失败");
				
			}
        }

	})
}
	function uploads() {
	$.ajaxFileUpload
	({
		url: 'http://localhost:8080/AjaxUpload/Upload/ToUploadFiles', //用于文件上传的服务器端请求地址
		type:'post',
		secureuri: false, //是否需要安全协议，一般设置为false
		fileElementId: ['file1','file2','file3'], //文件上传域的ID
		data:{
			  "userId": 1
		},//一同上传的数据
		dataType: 'json', //返回值类型 一般设置为json
		success: function (data, status)  //服务器成功响应处理函数
        {
			if(data>0){
				alert("上传成功");
				
			}else{
				alert("上传失败");
				
			}
        }

	})
	
}
	

</script>
</body>


</html>