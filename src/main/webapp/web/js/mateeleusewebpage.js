$(function () {
    //1.初始化Table
    var oTable = new TableInit();
    oTable.Init();
    var message = document.getElementById("message").value;
    if(message != null &&message != "" ){
     //   alert(message);
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
            url: basePath+'/mateeleuse/webquery',     //请求后台的URL（*）
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
                title: '序号',
            },

                {
                    field: 'devicetype',
                    align: 'center',
                    title: '设备类型'
                }, {
                    field: 'project',
                    align: 'center',
                    title: '所在项目及栋号',
                }, {
                    field: 'establish',
                    align: 'center',
                    title: '建设单位',
                }, {
                    field: 'construct',
                    title: '施工单位',
                    align: 'center',

                }, {
                    field: 'manit',
                    title: '监理单位',
                    align: 'center',

                }, {
                    field: 'dismantle',
                    title: '安拆单位',
                    align: 'center',

                }, {
                    field: 'rent',
                    title: '租赁(产权)单位',
                    align: 'center',
                },

                {
                    field: 'monitest',
                    title: '检测单位',
                    align: 'center',
                },{
                    field: 'casenumber',
                    title: '产权备案情况(备案号)',
                    align: 'center',
                }, {
                    field: 'monisituat',
                    title: '检验检测情况',
                    align: 'center',
                },
                {
                    field: 'usesituat',
                    title: '使用登记情况',
                    align: 'center',
                },


                {
                    field: 'devicerun',
                    title: '设备运行情况',
                    align: 'center',
                }, {
                    field: 'manufac',
                    title: '生产厂家',
                    align: 'center',
                }, {
                    field: 'manunumber',
                    title: '出厂编号',
                    align: 'center',
                }
                , {
                    field: 'manutime',
                    title: '出厂时间',
                    align: 'center',
                }
                , {
                    field: 'infotime',
                    title: '安装告知时间',
                    align: 'center',
                }
                , {
                    field: 'installtime',
                    title: '安装时间',
                    align: 'center',
                }
                , {
                    field: 'testtime',
                    title: '检测时间',
                    align: 'center',
                }
                , {
                    field: 'accepttime',
                    title: '联合验收时间',
                    align: 'center',
                }
                , {
                    field: 'casetime',
                    title: '使用登记备案时间',
                    align: 'center',
                }, {
                    field: 'matiantime',
                    title: '维保起止时间',
                    align: 'center',
                }, {
                    field: 'dismantime',
                    title: '拆迁时间',
                    align: 'center',
                }, {
                    field: 'remark',
                    title: '备注',
                    align: 'center',
                }










                ,


                 {
                 title: '操作',
                 align: 'center',
                 formatter:function(value,row,index){
                 var update = '<a href="javascript:update(\''+ row.id + '\')">修改</a> ';
                 //var del = '<a href="javascript:dlt(\''+ row.id + '\')">删除</a> ';
                 var history='<a href="javascript:history(\''+row.id+'\')">历史</a> ';
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
            project: $("#project").val(),
            establish: $("#establish").val(),
            manufac: $("#manufac").val(),
            remark: $("#remark").val(),
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
    window.location.href=basePath+"/mateeleuse/webtoupdate?id="+id;
}

function history(proRproid) {
    var basePath = $("#basePath").val();
    var url = basePath + "/mateeleuseRecord/webpage?Rid=" + proRproid;
    window.location.href = url;
}