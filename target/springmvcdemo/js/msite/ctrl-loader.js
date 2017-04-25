define(['qweb'],function($){

    //定义模块控制器加载器
    function Loader(obj) {
        this.listenHashChange(obj);
        this.init(obj);
    }


    /**
     * 控制器加载器初始化
     * @param obj 初始化设置
     */
    Loader.prototype.init = function(obj){

        var self = this ;

        var option = {};





        //合并传入参数设置
        option = $.extend(option,obj);

        //判断传入参数中是否指定控制器，如果没指定则获取锚点的上解析的参数
        if(!option.controller) option.controller = $.qweb.getHashObject().controller;
        if(!option.method) option.method = $.qweb.getHashObject().method ;


        if(obj.loaderSelectorId && !option.controller){
            script = $('#' + obj.loaderSelectorId) ;
            var module = script.attr('module') ;
            var method = script.attr('method');

            if(module){
                option.controller = module ;
                option.method = method ;
            }

        }

        if(!option.controller){

            if(obj.defaultAction){
                option = $.extend(option,obj.defaultAction);
            }

        }

        function isUpperCase (str) {

            if(/^[A-Z]+$/.test(str) ){
                return true ;
            }else{
                return false ;
            }

        }

        var testStr = option.controller ;

        var str = "" ;

        for(var i = 0 ; i < testStr.length ; i++){
            if(isUpperCase(testStr[i])) {
                if(!str){
                    str = testStr[i];
                }else{
                    str = str + '-' + testStr[i];
                }

            }else{
                str = str + testStr[i];
            }
        }


        option.controller = str.toLocaleLowerCase() ;

        //判断控制器是否存在，存在则加载
        if (option.controller) {

            //对控制器进行文件名转换
            var controller = "" ;
            var length = option.controller.length ;

            try{
                require(["ctrl/" + option.controller],function(module){

                    var ctrl = new module ;

                    if(option.method){
                        try{
                            ctrl[option.method]() ;
                        }catch(e){
                            console.error(e);
                        }

                    }else{
                        ctrl.init();
                    }

                },function(err){
                    self.listenHashChange();
                });
            }catch(e){
                console.error(e);
            }

        }
    };

    /**
     * 监听锚点变化，触发加载
     */
    Loader.prototype.listenHashChange = function(obj){

        var self = this;

        if(!window.onhashchange){

            window.onhashchange = function () {
                self.init(obj);
            }

        }
    };

    return  Loader ;
});