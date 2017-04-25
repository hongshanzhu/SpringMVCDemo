define(['hbs-helper','config'], function (Handlebars, config) {

    function BaseController() {

    }


    BaseController.prototype = config ;

    /** 逻辑方法开始 **/

    BaseController.prototype.index = function () {
        console.log("index");
    };

    BaseController.prototype.add = function () {
        console.log("add");
    };

    BaseController.prototype.edit = function () {
        console.log("edit");
    };

    BaseController.prototype.list = function () {
        console.log("list");
    };

    BaseController.prototype.band = function () {
        console.log("band");
    };

    BaseController.prototype.delete = function () {
        console.log("delete");
    };

    BaseController.prototype.init = function () {
        this.index();
    };

    /** 逻辑方法结束 **/

    /** 常用方法封装开始 **/

    /**
     * 显示模板
     * @param tplName {string} 模板名
     * @param params {Object} 模板变量
     * @param callback {function} 回调函数
     * @param opt {Object} 获取模板设置
     */
    BaseController.prototype.display = function (tplName, params, callback, opt) {

        var self = this;

        var def = $.Deferred() ;

        var content = $(config.defaultContent);

        self.displayDom(content,tplName, params,callback,opt).done(function(){
            def.resolve();
        });

        return def ;


    };


    /**
     * 显示模板
     * @param tplName {string} 模板名
     * @param params {Object} 模板变量
     * @param callBack {function} 回调函数
     * @param opt {Object} 获取模板设置
     */
    BaseController.prototype.renderTemple = function (tplName, params, callBack, opt) {

        var def = $.Deferred();

        var defaultOpt = {
            tplName: tplName,
            callBack: function (tpl) {
                tpl = Handlebars.compile($(tpl).html());
                var content = tpl(params);
                def.resolve(content);

                if(callBack || typeof callBack == 'function'){
                    callBack(content);
                }

            }
        };

        $.qweb.getTemple(defaultOpt);


        return def ;

    };


    /**
     * 在dom显示模板内容
     * @param dom  选择器
     * @param tplName  模板名称
     * @param params  参数
     * @param callback 回调函数
     * @param opt  其他参数
     */
    BaseController.prototype.displayDom = function (dom, tplName, params, callback, opt) {

        var self = this;

        var def = $.Deferred();



        self.renderTemple(tplName, params, function (html) {
            $(dom).html(html);

            if("function" == typeof callback){
                callback();
            }

            if(opt && opt.display == 'no'){

            }else{
                $("body").css('visibility','visible');
            }


            def.resolve();
        }, opt);

        return def;

    };

    /**
     * 在dom追加显示模板内容
     * @param dom  选择器
     * @param tplName  模板名称
     * @param params  参数
     * @param callback 回调函数
     * @param opt  其他参数
     */
    BaseController.prototype.displayAppendDom = function (dom, tplName, params, callback, opt) {
        var self = this;

        var def = $.Deferred();

        self.renderTemple(tplName, params, function (html) {
            /*$(dom).html(html);*/
            $(dom).append(html);
            if ("function" == typeof callback) {
                callback();
            }

            if (opt && opt.display == 'no') {

            } else {
                $("body").css('visibility', 'visible');
            }
            def.resolve();
        }, opt);
        return def;
    }


    /** 常用方法封装结束 **/


    return BaseController;

});
