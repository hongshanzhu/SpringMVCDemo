define(['hbs-helper', 'config', 'ctrl-loader', 'base-ctrl', 'layer', 'qweb'], function (Handlebars, config, Loader, BaseCtrl, layer, $) {

    //构造方法
    function Init() {
        var loader = new Loader(config);
        //window.location.href="#/Home/index";
       /* this.init().done(function () {
            var loader = new Loader(config);
        });*/
    }


    //初始化
    Init.prototype.init = function () {

        /*return this.loadCommon().then(function () {
            new adminLte();
        });*/
    };
    //加载公用组件
    Init.prototype.loadCommon = function () {
        var self = this;
        var def = $.Deferred();

        //判断容器是否存在
        if (!$(config.defaultContent).length) {
                new BaseCtrl().displayDom($('body'), 'common/main-body', {}).then(function () {
                    bindEvents();
                    def.resolve();
                });
        }


        return def;
    };


    return new Init();

});