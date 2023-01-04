$(function() {
    tinymceI18N();
    tinymce.init({
     selector: 'textarea#note',
     language: 'zh_CN',
    });
    $("#photo").fileinput(
        {
            theme: 'fa',
            initialPreview: $(photo).attr('value'),
//            'uploadUrl': uploadUrl, // 上传视频地址,
//            multiple:true //异步上传
            language : 'zh',
            enctype: 'multipart/form-data',
            maxFileCount: 1,
            initialPreviewAsData:true,
            showRemove:false,
            showPreview : true,
            previewFileType: ['cover'],
            initialPreviewConfig: [ //回显类型配置(重要)
                {
                    type:"image",
                    filetype:'image/png,image/bmp,image/jpg,image/jpeg,image/gif'
                }
            ],
            dropZoneEnabled: false,//是否显示拖拽区域
            uploadExtraData: function(previewId, index) {   //该插件可以向您的服务器方法发送附加数据
                return {
                    acl: "public"
                };
            },
            layoutTemplates :{
                actionDelete:'', //去除上传预览的缩略图中的删除图标
            },
        }
    );
})

