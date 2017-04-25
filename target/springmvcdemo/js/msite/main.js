define(['jquery', 'config'], function ($, config) {

    //定义本项目封装类
    $.qweb = $.extend(true, {

        /**
         * 缓存
         */
        cache: {
            dictionary: {}
        },

        /**
         * 加载模板
         * @param {Object} opt
         */
        getTemple: function (opt) {

            //默认设置
            var defaultOpt = {
                path: config.path.baseTplPath, //默认路径
                tplName: "", //默认模板名
                callBack: function () {
                } //默认回调函数
            };

            opt = $.extend(true, defaultOpt, opt);

            if (opt.path === undefined) {
                opt.path = "../resources/web/hbs/";
            }

            var fullPath = opt.path + opt.tplName + ".hbs";

            var index = null;


            $.get(fullPath, opt.callBack);

        },

        /**
         * 获取相应的地址
         * @param {string} module 模块
         * @param {string} method 方法
         * @param {string} path 相对路径
         */
        getUrl: function (module, method, path) {

            module = module == undefined ? "" : module;

            method = method == undefined ? "main" : method;

            path = path == undefined ? ".." : path;

            var result = path + "/" + module + "/" + method;

            return result;

        },

        /**
         * ajax封装
         */
        qwebAjax: function (opt) {

            //默认设置
            var defaultOpt = {
                type: "get", //默认路径
                crossDomain: true,
                xhrFields: {
                    withCredentials: true
                },
                dataFilter: function (data, type) {

                    var json = jQuery.parseJSON(data);

                    //判断是否存在过滤器设置
                    if (config && config.filters) {

                        var fn;

                        for (fn in config.filters) {

                            if ('function' == typeof  config.filters[fn]) {
                                if (!config.filters[fn](json)) {
                                    return;
                                }
                            }
                        }

                    }


                    return data;
                }
            };

            opt = $.extend(true, defaultOpt, opt);

            return $.ajax(opt);
        },

        /**
         * ajax post方法封装
         */
        ajaxPost: function (url, params, callBack, option) {


            var defaultOpt = {
                url: url,
                type: 'post',
                data: params,
                success: function (result) {

                    if (typeof callBack == 'function') {
                        callBack(result);
                    }

                }
            };

            option = $.extend(defaultOpt, option);

            return $.qweb.qwebAjax(option);
        },

        /**
         * ajax get方法封装
         */
        ajaxGet: function (url, params, callBack, option) {
            var defaultOpt = {
                url: url,
                type: 'get',
                data: params,
                success: function (result) {
                    if (typeof callBack == 'function') {
                        callBack(result);
                    }
                }
            };

            option = $.extend(defaultOpt, option);

            return $.qweb.qwebAjax(option)
        },
        /**
         * 封装jquery $.when
         */
        whenSuccess: function () {

            var def = $.Deferred();

            var when = $.when.apply(this, arguments).done(function () {

                var array = [];

                console.log(arguments);
                for (var i = 0; i < arguments.length; i++) {

                    if (arguments[i][0]) {
                        array.push(arguments[i][0]);
                    } else {
                        array.push(arguments[i]);
                    }

                }


                def.resolve.apply(this, array);

            });

            return def;
        },

        /**
         * 获取描点参数
         */
        getQueryString: function (name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
            var r = window.location.hash.substr(1).match(reg);
            if (r != null) return unescape(r[2]);
            return null;
        },

        /**
         * 跳转地址
         * @param url
         */
        sendRedirectTo: function (url) {
            window.location.href = url ;
        },



        /**
         * 获取URL Hash对象
         */
        getHashObject: function () {
            var hash = window.location.hash;

            var obj = {
                operation: "",
                controller: "",
                method: "",
                params: ""
            };

            //去掉hash前的#号
            hash = hash.substr(1, hash.length - 1);

            //第一次分割，分出控制器与参数
            var hashArray = hash.split('?');
            obj.operation = hashArray[0];

            var arrayTmp = obj.operation.split("/");

            var ctrlTemp = null;


            //支持多级
            for (var i = 0; i < (arrayTmp.length - 1); i++) {

                if (!ctrlTemp) {
                    ctrlTemp = arrayTmp[i]
                } else {
                    ctrlTemp = ctrlTemp + "/" + arrayTmp[i];
                }
            }

            obj.controller = ctrlTemp;

            obj.method = arrayTmp[arrayTmp.length - 1];

            if (hashArray[1]) {
                obj.params = {};
                var paramArray = hashArray[1].split('&');

                for (var i = 0; i < paramArray.length; i++) {
                    var param = paramArray[i];
                    var temp = param.split("=");
                    obj.params[temp[0]] = temp[1];
                }
            }


            return obj;
        },

        //获取URL锚点后的参数
        getParams: function () {
            var obj = this.getHashObject();
            if (obj.params) {
                return obj.params;
            } else {
                return {};
            }

        },
        getUrlPath:function(){
            // 这部分代码就是处理标题兼容问题的。
            // 由于在Chrome window.location.origin 属性是支持的，但是在IE11不支持，会导致无法正常翻页。
            var loc = window.location;
            var portStr = "";
            if(loc.port != 80){ portStr = ":"+loc.port; }
            return loc.protocol + "//" +loc.hostname + portStr + loc.pathname;
        },

        //将json转化为url参数形式
        parseJsonToURI: function (obj) {

            var temp = undefined;

            for (key in obj) {
                if (temp) {
                    temp = temp + "&" + key + "=" + obj[key];
                } else {
                    temp = key + "=" + obj[key];
                }
            }

            return temp;

        },
        //session
        session:function(key,value){

            var len = arguments.length ;

            if(len == 1){
                return JSON.parse(sessionStorage.getItem(key));
            }

            if(len == 2){
                return sessionStorage.setItem(key,JSON.stringify(value));
            }
        }

    });

    return $;

});