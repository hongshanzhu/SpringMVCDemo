<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%
    RequestWrapper rw = new RequestWrapper(pageContext);
    QiniuService qiniuUploadService = Env.getBean(QiniuService.class);


    request.setAttribute("uploadToken", qiniuUploadService.getDefaultUpToken());
    request.setAttribute("uploadServer", qiniuUploadService.getUploadServer());
    request.setAttribute("accessHost",qiniuUploadService.getAccessHost());

    request.setAttribute("uploadImageCallback",rw.getString("uploadImageCallback","uploadImageCallback"));
    out.clear();
%>

<html>
    <title>上传图片</title>
    <link href="/webuploader/webuploader.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="/res/js/jquery-1.8.3.min.js" ></script>
    <script type="text/javascript" src="/webuploader/webuploader.js"></script>

</head>
<body>

<%--<form method="post" action="http://upload.qiniu.com/" enctype="multipart/form-data">--%>
<%--<input name="key" type="hidden" value="">--%>
<%--<input name="token" type="hidden" value="${uploadToken}">--%>
<%--<input name="file" type="file" />--%>
<%--<input name="accept" type="hidden" value="text/plain" />--%>
<%--<input id="uploadImageBtn" type="submit" class="but1 butpad" value="上传"/>--%>
<%--</form>--%>

<div id="uploader-demo">
    <!--用来存放item-->
    <div id="fileList" class="uploader-list"></div>
    <div id="filePicker" style="">选择图片</div>
    <div><p> </p> </div>
    <div id="upload" class="webuploader-pick">上  传</div>
</div>


<script type="text/javascript">
    Date.prototype.pattern=function(fmt) {
        var o = {
            "M+" : this.getMonth()+1, //月份
            "d+" : this.getDate(), //日
            "h+" : this.getHours()%12 == 0 ? 12 : this.getHours()%12, //小时
            "H+" : this.getHours(), //小时
            "m+" : this.getMinutes(), //分
            "s+" : this.getSeconds(), //秒
            "q+" : Math.floor((this.getMonth()+3)/3), //季度
            "S" : this.getMilliseconds() //毫秒
        };
        var week = {
            "0" : "/u65e5",
            "1" : "/u4e00",
            "2" : "/u4e8c",
            "3" : "/u4e09",
            "4" : "/u56db",
            "5" : "/u4e94",
            "6" : "/u516d"
        };
        if(/(y+)/.test(fmt)){
            fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
        }
        if(/(E+)/.test(fmt)){
            fmt=fmt.replace(RegExp.$1, ((RegExp.$1.length>1) ? (RegExp.$1.length>2 ? "/u661f/u671f" : "/u5468") : "")+week[this.getDay()+""]);
        }
        for(var k in o){
            if(new RegExp("("+ k +")").test(fmt)){
                fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
            }
        }
        return fmt;
    }

    function fileKey(fileExt){
        var d = new Date();
        var s = d.pattern("yyyyMMdd")
        // "/upload/image/20150718/1437221425372023921.jpg";
        return "/upload/image/"+s+"/"+d.getTime()+Math.ceil(Math.random()*1000000)+"."+fileExt;
    }
    function buildFormData(fileExt){
        var imageKey=fileKey(fileExt);
        return {
            token:"${uploadToken}",
            key:imageKey
        };
    }
    var token = "${uploadToken}";
    var resp;
    var accessHost = "${accessHost}";

    $(function () {
        var $list = $("#fileList");
        var uploader = WebUploader.create({
            auto: false,

            // swf文件路径
            swf: '/webuploader/Uploader.swf',

            // 文件接收服务端。
            server: '${uploadServer}',

            // 选择文件的按钮。可选。
            // 内部根据当前运行是创建，可能是input元素，也可能是flash.
            pick: '#filePicker',

            // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
            resize: false,
            threads: 1,
            fileNumLimit:1,
            accept: {
                title: 'Images',
                extensions: 'gif,jpg,jpeg,bmp,png',
                mimeTypes: 'image/*'
            }
        });
        // 当有文件被添加进队列的时候
        uploader.on('fileQueued', function (file) {
            $list.append('<div id="' + file.id + '" class="item">' +
                    '<span class="info">' + file.name + '</span>' +
                    '<span class="state">等待上传...</span>' +
                    '</div>');
        });
        // 文件上传过程中创建进度条实时显示。
        uploader.on('uploadProgress', function (file, percentage) {
            var $li = $('#' + file.id),$percent = $li.find('.progress .progress-bar');

            // 避免重复创建
            if (!$percent.length) {
                $percent = $('<div class="progress progress-striped active">' +
                        '<div class="progress-bar" role="progressbar" style="width: 0%">' +
                        '</div>' +
                        '</div>').appendTo($li).find('.progress-bar');
            }

            $li.find('p.state').text('上传中');

            $percent.css('width', percentage * 100 + '%');
        });
        uploader.on('uploadStart', function (file) {
            uploader.options.formData.key= fileKey(file.ext);
            uploader.options.formData.token= token;

            console.log("=---------上传开始....");
            console.log(uploader.formData);
            $("#filePicker").hide();
        });

        uploader.on('uploadError', function (file) {
            console.log("=---------上传出错....");
            $('#' + file.id).find('p.state').text('上传出错');
        });

        uploader.on('uploadComplete', function (file) {
            console.log("=---------上传开始....");
            $('#' + file.id).find('.progress').fadeOut();
        });

        uploader.on('uploadSuccess', function (file,response) {
            $('#' + file.id).find('p.state').text('已上传');
            console.log("response:"+response);
            var imageUrl = accessHost + response.key;
            console.log("=---------已上传:"+imageUrl);
            resp = response;
            if(parent.${uploadImageCallback}){
                parent.${uploadImageCallback}(imageUrl);
            }
        });

        $("#upload").click(function(){
            uploader.upload();

        });
    });

</script>
</body>
</html>
