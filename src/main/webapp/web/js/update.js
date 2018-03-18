/**
 * 公文起草js
 */
 
function change()  
{  
   var x = document.getElementById("typeId");  
   var y = document.getElementById("subtypeId");  
   y.options.length = 0; // 清除second下拉框的所有内容  
   if(x.selectedIndex == 0)  
   {  
	   y.options.add(new Option("重要新闻", "1", false, true));  
       y.options.add(new Option("一般新闻", "2"));  // 默认选中 
   }  
  
   if(x.selectedIndex == 1)  
   {  
	   y.options.add(new Option("紧急通告", "3", false, true));  
       y.options.add(new Option("一般通告", "4"));  // 默认选中 
   }  
   
   if(x.selectedIndex == 2)  
   {  
        y.options.add(new Option("紧急公告", "5", false, true));  
        y.options.add(new Option("一般公告", "6"));  // 默认选中 
   } 
  
}

function ch(){
	 var name =  document.getElementById('fileInput').value;
	 var pos=name.lastIndexOf("\\");
	 name =  name.substring(pos+1)
	 document.getElementById('attachmentUrl').value = name;
	 
}

 function cancel(){
	 document.getElementById('attachmentUrl').value = '';
 }
 
 function AjaxFileUpload(){
	    //开始上传文件时显示一个图片,文件上传完成将图片隐藏
	   // $("#loading").ajaxStart(function(){$(this).show();}).ajaxComplete(function(){$(this).hide();});
	   var docNo = $("#docNo").val();
	   var title = $("#title").val();
	   var typeId = $("#typeId").val();
	   var subtypeId = $("#subtypeId").val();
	   var brand = $("#brand").val();
	   var secretLevel = $("#secretLevel").val();
	  
	   var content=$("summernote").val()
	   var attachmentUrl = $("#attachmentUrl").val();
	   var sendTo = $("#sendTo").val();
	   var sendCc = $("#sendCc").val();
	   var publishOrg = $("#publishOrg").val();
	   var top = $("#top").val();
	   
	   
	   
	   var time = $("#publishTime").val();
	   var publishTime;
	   if(time== ""){
		   publishTime = new Date();
	   }else{
		   var pos=time.lastIndexOf("T");
		   var date =  time.substring(0,pos);
		  var ti = time.substring(pos+1);
		   publishTime = date +" "+ ti +":00"; 
	   }
	   
	   var publisher = $("#publisher").val();
	   var reviewer = $("#reviewer").val();
	   var approver = $("#approver").val();
	   var reviewOrg = $("#reviewOrg").val();
	   var important = $("#important").val();
	   
	   var basePath="/"+getRealModuleName();
	    //执行上传文件操作的函数
	    $.ajaxFileUpload({
	        //处理文件上传操作的服务器端地址(可以传参数,已亲测可用)
	        url:basePath+'/article/add',
	        type: 'post',
         data : {
        	 docNo : docNo,
        	 title:title,
        	 typeId : typeId,
        	 subtypeId:subtypeId,
        	 brand : brand,
        	 secretLevel:secretLevel,
        	 content : content,
        	 attachmentUrl:attachmentUrl,
        	 sendTo : sendTo,
        	 sendCc:sendCc,
        	 publishOrg : publishOrg,
        	 publishTime:publishTime,
        	 publisher : publisher,
        	 reviewer:reviewer,
        	 approver : approver,
        	 reviewOrg:reviewOrg,
        	 important:important
         },
	        secureuri:false,                           //是否启用安全提交,默认为false 
	        fileElementId:'fileInput',               //文件选择框的id属性
	        dataType:'json',                           //服务器返回的格式,可以是json或xml等
	        success:function(data, status){     //服务器响应成功时的处理函数
	        	alert(data.message);
	        },
	        error:function(data, status, e){ //服务器响应失败时的处理函数
	        	alert("上传失败，请重新上传！");
	        }
	    });
	} 
 
 function res(){
	 $("textarea[name='customized-buttonpane']").val("");
 }
 