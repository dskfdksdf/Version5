$(function () {
    //1.初始化Table
    var oTable = new TableInit();
    oTable.Init();
    var message = document.getElementById("message").value;
	if(message != null &&message != "" ){
		 alert(message);
	}
});
 

var TableInit = function () {
    var oTableInit = new Object();
    //初始化Table
    
    var basePath=$("#basePath").val();
    oTableInit.Init = function () {
        $('#table').bootstrapTable({
        	method: 'post',
            contentType: "application/x-www-form-urlencoded",
            url: basePath+'/start/webquery',     //请求后台的URL（*）
            toolbar: '#toolbar',                								 //工具按钮用哪个容器
            striped: true,        //是否显示行间隔色
             
            locale:'zh-CN',													 //中文支持
            pagination: true,												 //是否开启分页（*）
            pageNumber:1,													 //初始化加载第一页，默认第一页
            pageSize: 7,														 //每页的记录行数（*）
            pageList: [5,7,9],												 //可供选择的每页的行数（*）
            sidePagination: "server",  //分页方式：client客户端分页，server服务端分页（*）
            
            showRefresh:true,												 //刷新按钮
            queryParams: oTableInit.queryParams,					 //传递参数（*）
            strictSearch: true,
            showColumns: true,                  							 //是否显示所有的列
            showRefresh: true,                  							 //是否显示刷新按钮
            minimumCountColumns: 2,             						 //最少允许的列数
            clickToSelect: true,                                   //是否启用点击选中行
            
            
            
            
           
            height: 500,                        								 //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: "id",                    								 //每一行的唯一标识，一般为主键列
            showToggle:true,                    							 //是否显示详细视图和列表视图的切换按钮
            cardView: false,                    								 //是否显示详细视图
            detailView: false,    //是否显示父子表
            
            showExport: true,  //是否显示导出按钮  
            exportTypes:[ 'csv', 'txt', 'sql', 'doc', 'excel', 'xlsx', 'pdf'],  //导出文件类型  
            Icons:'glyphicon-export',  
            exportDataType:'all',      
            
            columns: [{  
                field: 'startid',  
                title: '开工表id',  
            }, {
                field: 'proname',
                align: 'center',
                title: '项目id'
            }, {
                field: 'pronameStr',
                align: 'center',
                title: '项目名',
            }, {
                field: 'starttime',
                align: 'center',
                title: '开工时间',
            }, {
                field: 'time1',
                title: '开工前安全条件审查时间',
                align: 'center',
              
            }, {
                field: 'time2',
                title: '办理安全受监时间',
                align: 'center',
              
            }, {
                field: 'monitorid',
                title: '安监员id',
                align: 'center',
              
            }, {
                field: 'monitorStr',
                title: '安监员姓名',
                align: 'center',
            }, 
            
            {
                field: 'address',
                title: '地址',
                align: 'center',
            },
            {
                field: 'agree',
                title: '是否同意',
                align: 'center',
            },
            
            
            {
                field: 'vicebossid',
                title: '副站长id',
                align: 'center',
            },{
                field: 'vicebossStr',
                title: '副站长姓名',
                align: 'center',
            },{
                field: 'startdate',
                title: '新建时间',
                align: 'center',
            },{
                field: 'startdate1',
                title: '副站长审核时间',
                align: 'center',
            },
            
            
            {
                title: '操作',
                align: 'center',
               /* formatter:function(value,row,index){  
                	var update = '<a href="javascript:update(\''+ row.id + '\')">修改</a> ';
                	var del = '<a href="javascript:dlt(\''+ row.id + '\')">删除</a> ';
                	return update+del;  
              } */
            }] 
        });
    };

    //得到查询的参数
    oTableInit.queryParams = function (params) {
        var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            limit: params.limit,   //页面大小
            offset: params.offset,  //偏移量
            pronameStr: $("#pronameStr").val(),
            monitorStr: $("#monitorStr").val(),
            vicebossStr: $("#vicebossStr").val(),
            agree: $("#agree").val(),
        };
        return temp;
    };
    return oTableInit;
};



function dlt(id)
{
	var basePath = $("#basePath").val();
	var url = basePath+"/project/delete?id="+id;
	window.location.href=url;
}


function update(id)
{
	var basePath = $("#basePath").val();
	 window.location.href=basePath+"/project/webtoupdate?id="+id;
}



 

 
