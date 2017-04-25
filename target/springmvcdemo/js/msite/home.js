define(['base-ctrl', 'layer','hbs-helper'], function (BaseController, layer, Handlebars) {

    function Home() {

    }
    //继承基础控制器
    Home.prototype = new BaseController();

    //首页
    Home.prototype.index = function () {
        var self = this ;
        $.qweb.ajaxGet(self.api.admin.video.list,{}).done(function(message){
            self.display(self.tpl.home.index,{}).done(function(){
            });
        })
    };

    Home.prototype.search = function () {
        self = this;
        self.display(self.tpl.common.search,{}).done(function() {
            bindEvents();
        });
        var bindEvents  = function(){
            var data=["黄菜花场地","大鹏场地","香草场地","油菜场地","地瓜场地"];
            //返回按钮
            $('#back_logo').on('click',function(){
                history.back();
            });
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

    return Home;

});