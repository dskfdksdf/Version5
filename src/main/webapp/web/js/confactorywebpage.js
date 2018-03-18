$(function () {
    //1.初始化Table
    var oTable = new TableInit();
    oTable.Init();
    var message = document.getElementById("message").value;
    if(message != null &&message != "" ){
      //  alert(message);  仅仅调试之用
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
            url: basePath+'/confactory/webquery',     //请求后台的URL（*）
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
                field: 'id',
                title: '企业表序号',
            }, {
                field: 'factoryname',
                align: 'center',
                title: '企业名称'
            }, {
                field: 'standperson',
                align: 'center',
                title: '负责人',
            }, {
                field: 'phone',
                align: 'center',
                title: '联系电话',
            }, {
                field: 'grade',
                title: '资质等级',
                align: 'center',

            }, {
                field: 'number',
                title: '企业安全生产许可证编号',
                align: 'center',

            }, {
                field: 'member',
                title: '企业人员',
                align: 'center',

            }, {
                field: 'time',
                title: '新建时间',
                align: 'center',

            }, {
                field: 'userid',
                title: '新建人id',
                align: 'center',

            }, {
                field: 'username',
                title: '新建人姓名',
                align: 'center',

            }, {
                field: 'cancel',
                title: '是否作废',
                align: 'center',

            },

                {
                    title: '操作',
                    align: 'center',
                     formatter:function(value,row,index){
                     var update = '<a href="javascript:update(\''+ row.id + '\')">修改</a> ';
                         var history='<a href="javascript:history(\''+row.id+'\')">历史</a> ';
                  //   var del = '<a href="javascript:dlt(\''+ row.id + '\')">删除</a> ';
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
            factoryname: $("#factoryname").val(),
            standperson: $("#standperson").val(),
            phone: $("#phone").val(),
            grade: $("#grade").val(),
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
    window.location.href=basePath+"/confactory/webtoupdate?id="+id;
}



function history(id){
    var basePath=$("#basePath").val();
    var url=basePath+"/confactoryRecord/webpage?facRid="+id;
    window.location.href=url;
}



