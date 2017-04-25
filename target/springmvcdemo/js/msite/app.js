/**
 * 初始化requirejs配置
 * @author Marco
 */
define(['config'],function(config){


    //requirejs配置
    var cfg = {

        baseUrl: 'js/', //设置模块基础路径
        paths: {
            'jquery-slim-scroll':'lib/jquery/plugin/slimScroll/jquery.slimscroll.min',
            'jquery-icheck':'lib/jquery/plugin/iCheck/icheck.min',
            'jquery-qrcode':'lib/jquery/plugin/jquery-qrcode-1.0/jquery.qrcode.min',
            'bootstrap-datetimepicker':config.path.rootPath + 'components/datetimepicker/bootstrap-datetimepicker.min',
            md5:'lib/md5/md5.min',//配置md5
            layer:config.path.rootPath + 'components/layer/layer',
            jquery: 'lib/jquery/jQuery-2.1.4.min', //配置jquery
            //jquery:'lib/mobiletimer/mobiletimer',
            bootstrap:config.path.rootPath + 'components/bootstrap/js/bootstrap.min',
            qweb: "lib/qweb", //配置自定义库
            handlebars: 'lib/handlebars/handlebars',
            'hbs-helper': "lib/handlebars/handlebars-helper", //Qweb handlebars
            ctrl: 'modules/ctrl',
            components:config.path.rootPath + 'components',
            'ctrl-loader': 'lib/qweb/ctrl-loader', //控制器加载器
            'base-ctrl':'modules/ctrl/base-ctrl',
            'mobiletimer':'lib/mobiletimer/mobiscroll',
            'myvideojs':config.path.rootPath  + 'components/video/video',
            'myvideo-hls':config.path.rootPath  + 'components/video/videojs-contrib-hls',
            'echarts':'lib/echarts/echarts.min',
            'mqtt':'lib/mqtt/mqttws31',

        },
        packages: ['lib/qweb', 'qweb'],
        shim: {
            'myvideo-hls':{
                deps:['myvideojs'],
                init:function(){
                    return null ;
                }
            },
            'myvideojs':{
                deps:['css!' + config.path.rootPath + 'components/video/video-js.min.css'],
                init:function(){
                    return null ;
                }
            },
            'bootstrap-datetimepicker':{
                deps:['jquery','css!' + config.path.rootPath + 'components/datetimepicker/css/bootstrap-datetimepicker.min.css']
            },
            'jquery-qrcode':{
                deps:['jquery']
            },
            'jquery-slim-scroll':{
                deps:['jquery']
            },
            'jquery-icheck':{
                deps:['jquery','css!lib/jquery/plugin/iCheck/all.css']
            },
            bootstrap:{
                deps:['jquery','css!' + config.path.rootPath + 'components/bootstrap/css/bootstrap.css']
            },

            layer:{
                deps:['jquery','css!' + config.path.rootPath + 'components/layer/skin/layer.css']
            },
            qweb:{
                deps:['jquery']
            },
            'hbs-helper': {
                deps: ['handlebars']
            },

            init: {
                deps: ['ctrl-loader', 'config','jquery-slim-scroll','css!' + config.path.rootPath + 'css/style.css','css!' + config.path.rootPath + 'components/font-awesome-4.6.3/css/font-awesome.min.css']
            },
            'webUploader':{
                deps:['jquery','css!lib/webuploader/webuploader.css'],
            },
            'mobiletimer':{
                deps:['jquery', 'css!lib/mobiletimer/mobiscroll.css',],
            },


        },
        map: {
            '*': {
                'css': 'lib/requirejs/css', // or whatever the path to require-css is
                'text': 'lib/requirejs/text',
                'swf': 'lib/webuploader/swf',
            }
        },
        deps: [
            'init'
        ]
    };

    //初始化requirejs
    window['requirejs'].config(cfg);


});







