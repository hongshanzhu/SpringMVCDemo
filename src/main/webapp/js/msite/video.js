define(['base-ctrl', 'layer', 'hbs-helper'], function (BaseController, layer, Handlebars) {

    function Video() {

    }

    //继承基础控制器
    Video.prototype = new BaseController();
    //列表
    Video.prototype.list = function () {

        var self = this;
        //加载农场地
        var farmsDtd = $.qweb.ajaxGet(self.api.admin.farm.list, {onPage: false});
        var videoDtd = $.qweb.ajaxGet(self.api.admin.video.list, $.qweb.getParams());
        $.qweb.whenSuccess(farmsDtd, videoDtd).done(function (farmsData, videoData) {
            videoData.data.farms = farmsData.data.places;
            $.each(videoData.data.cameras,function(index,item){
                var urls = item.resourceUrl.split(",");
                videoData.data.cameras[index].url1=urls[0];
                videoData.data.cameras[index].url2=urls[1];
                videoData.data.cameras[index].url3=urls[2];
            });
            console.log(videoData);
            self.display(self.tpl.video.list, videoData).done(function () {
               /* requirejs(['video-hls'],function() {*/
                requirejs([ 'myvideojs'],
                    function   ( videojs){
                        window['videojs']  = videojs ;
                        requirejs([ 'myvideo-hls'],
                            function   ( hls){
                                console.log(hls);
                              /*  var player = videojs('videojs-contrib-hls-player');*/
                                bindEvents();


                            });

                    });

            });

            //事件绑定
            var bindEvents = function() {
                //筛选事件
                $("#q-video-farm").on('change', function () {
                    $.qweb.sendRedirectTo("#Video/list?placeCode=" + $(this).val());
                });

                //初始化video.js
                var videolist = $('.videolist');
                var cream_height = $(window).height();
                var cream_width = $(window).width();
                $.each(videolist,function(index , item){
                  var id = $(item).attr("id");
                    $(item).attr("width",cream_width*0.80)
                    $(item).attr("height",cream_width*0.50);
                    var player = videojs(id);
                });
                //返回按钮
                $('#back_logo').on('click',function(){
                    $.qweb.sendRedirectTo("#");
                });

            }
        });
    }


    //搜索页面
    Video.prototype.search = function () {
        self = this;
        //加载农场地
        var farmsDtd = $.qweb.ajaxGet(self.api.admin.farm.list, {onPage: false});
        var videoDtd = $.qweb.ajaxGet(self.api.admin.video.list, $.qweb.getParams());
        $.qweb.whenSuccess(farmsDtd, videoDtd).done(function (farmsData, videoData) {
            videoData.data.farms = farmsData.data.places;
            console.log(videoData);
            self.display(self.tpl.common.search,{}).done(function() {
                bindEvents();
            });

        });


        var bindEvents  = function(){
            var data=["黄菜花场地","大鹏场地","香草场地","油菜场地","地瓜场地"];
            //返回按钮
            $('#back_logo').on('click',function(){
                history.back();
            });
            //搜索按钮 todo

            //搜索框自动提示
            $("#search_input").on('keyup',function(){
                var key = $(this).val();
                key = $.trim(key);
                $("#tipsul li").remove();
                if(key == null || key == undefined ||key==""){
                    $("#tipsul").attr("style","display:block");
                    return;
                }
                var count = 0
                $.each(data, function(index,item){
                    if(item.indexOf(key)>=0){
                        count++;
                        if(count<5) {
                            var li_item = $("<li>" + item + "</li>");
                            $("#tipsul").append(li_item);
                        }
                    }
                });
                $("#tipsul").attr("style","display:block");

            });
        }
    }

    /**
     * s搜索
     */
    Video.prototype.search = function () {
        self = this;
        $.qweb.ajaxGet(self.api.admin.video.listname, {}).done(function (data) {
            var dataArray = data.data.camerasName;
            console.log(dataArray)
            self.display(self.tpl.common.search, {}).done(function () {
                bindEvents(dataArray);
            });
        });

        var bindEvents = function (data) {
            //返回按钮
            $('#back_logo').on('click', function () {
                history.back();
            });
            //搜索按钮 serach
            $("#search_text").on("click", function () {
                var search = $("#search_input").val()
                $.qweb.sendRedirectTo("#Video/list?search=" + search);
            });
            //搜索框自动提示
            $("#search_input").on('keyup', function () {
                var key = $(this).val();
                key = $.trim(key);
                $("#tipsul li").remove();
                if (key == null || key == undefined || key == "") {
                    $("#tipsul").attr("style", "display:block");
                    return;
                }
                var count = 0
                $.each(data, function (index, item) {
                    if (item.indexOf(key) >= 0) {
                        count++;
                        if (count < 5) {
                            var li_item = $("<li>" + item + "</li>");
                            li_item.on("click", function () {
                                $("#search_input").val(item);
                            });
                            $("#tipsul").append(li_item);

                        }
                    }
                });
                $("#tipsul").attr("style", "display:block");

            });
        }
    }





    return Video;

});