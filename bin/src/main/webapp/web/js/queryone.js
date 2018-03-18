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
            url: basePath+'/projectone/webquery',     //请求后台的URL（*）
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
                field: 'proname',  
                title: '项目名',  
            },
            
            {
                field: 'promonitorStr',
                align: 'center',
                title: '安监员'
            }, {
                field: 'prostructure',
                align: 'center',
                title: '结构',
            }, {
                field: 'proarea',
                align: 'center',
                title: '面积',
            }, {
                field: 'proprice',
                title: '造价',
                align: 'center',
              
            }, {
                field: 'prostate',
                title: '状态',
                align: 'center',
              
            }, {
                field: 'proprocess',
                title: '进度',
                align: 'center',
              
            }, {
                field: 'proslice',
                title: '所属片区',
                align: 'center',
            }, 
            
            {
                field: 'proaddress',
                title: '地址',
                align: 'center',
            },{
                field: 'proconfactoryStr',
                title: '施工单位',
                align: 'center',
            }, {
                field: 'probemanageStr',
                title: '施工单位负责人',
                align: 'center',
            }, {
                field: 'proconfactoryStr1',
                title: '建设单位',
                align: 'center',
            }, {
                field: 'probemanageStr1',
                title: '建设单位负责人',
                align: 'center',
            }, {
                field: 'proconfactoryStr2',
                title: '监理单位',
                align: 'center',
            }, {
                field: 'probemanageStr2',
                title: '监理单位负责人',
                align: 'center',
            }, {
                field: 'towerStr',
                title: '塔吊',
                align: 'center',
            }, {
                field: 'elevatorStr',
                title: '施工电梯',
                align: 'center',
            }, {
                field: 'mateeleStr',
                title: '物料提升机',
                align: 'center',
            }, {
                field: 'otherdeviceStr',
                title: '其他设备',
                align: 'center',
            }, {
                field: 'prostarttime',
                title: '开工时间',
                align: 'center',
            }, {
                field: 'proenforce',
                title: '执法情况',
                align: 'center',
            }, {
                field: 'proevaluateself',
                title: '项目自评',
                align: 'center',
            }, {
                field: 'proevaluateall',
                title: '项目总评',
                align: 'center',
            }, {
                field: 'proevaluatelevel',
                title: '项目评定等级',
                align: 'center',
            }, {
                field: 'proextrainfo',
                title: '备注',
                align: 'center',
            },  {
                field: 'prorestate',
                title: '整改状态',
                align: 'center',
            },  {
                field: 'prouserid',
                title: '新建此项目安监员id',
                align: 'center',
            },  {
                field: 'prousername',
                title: '新建此项目安监员姓名',
                align: 'center',
            },   {
                field: 'prodate',
                title: '新建时间',
                align: 'center',
            },   
            {
                field: 'prourgent',
                title: '是否督办',
                align: 'center',
            },   
       
            
            
            
            
            
            
            {
                title: '操作',
                align: 'center',
                formatter:function(value,row,index){  
                	var update = '<a href="javascript:update(\''+ row.proid + '\')">修改</a> ';
                	//var del = '<a href="javascript:dlt(\''+ row.id + '\')">删除</a> ';
                	var history='<a href="javascript:history(\''+row.proid+'\')">历史修改痕迹</a> ';
                	//return update+del;
                	return update+history;
              } 
            }] 
        });
    };

    //得到查询的参数
    oTableInit.queryParams = function (params) {
        var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            limit: params.limit,   //页面大小
            offset: params.offset,  //偏移量
            proname: $("#proname").val(),
            proaddress: $("#proaddress").val(),
            promonitorStr: $("#promonitorStr").val(),
            prourgent: $("#prourgent").val(),
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
	 window.location.href=basePath+"/projectone/webtoupdate?id="+id;
}

function history(proRproid){
	var basePath=$("#basePath").val();
    var url=basePath+"/projectoneRecord/webpage?proRproid="+proRproid;
    window.location.href=url;
}