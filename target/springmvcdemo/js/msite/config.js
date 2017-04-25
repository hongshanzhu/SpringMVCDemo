define(function () {

    //服务器url
    var serverUrl = 'http://mqtt.gdyftech.cn:8082/Sata-0.1/' ;
    /*var serverUrl = 'http://localhost:8080/Sata/' ;*/

    //登录地址
    var loginUrl = "#user/login" ;

    //定义响应结果
    var respType = {
        type:{
            SUCCESS:'SUCCESS',
            ERROR:'ERROR',
        },
        code:{
            SUCCESS:'2000',
            ERROR:'5000',
            TO_LOGIN:'4003'
        }
    };


    //路径设置
    var getPath = function(){

        //TODO 定义项目路径
        var projectPath = '/wechat/' ;

        //TODO 定义项目根目录
        var rootPath = getUrlPath() + projectPath ;

        //TODO 定义模板路径
        var baseTplPath = rootPath + 'hbs/' ;

        return {
            projectPath:projectPath,
            rootPath:rootPath,
            baseTplPath:baseTplPath
        } ;

    };

    //过滤器定义
    var filters = {
        toLogin:function(data){

            if(data.code == respType.code.TO_LOGIN){
                window.location.href = getPath().rootPath + loginUrl ;
            }

            return data ;

        }
    };

    //api接口
    //api接口
    var api = {
        admin:{
            user:{
                list:serverUrl+'terminal/user/list',
                add: serverUrl+'terminal/user/add',
                delete:serverUrl+'terminal/user/delete',
                update:serverUrl+'terminal/user/update',
                login:serverUrl+'terminal/user/login',
                logout:serverUrl+'terminal/user/logout',
                webchat:{
                    validate:serverUrl+'wechat/validate/generate',
                    login:serverUrl+'wechat/user/login',
                }
            },
            farm:{
                list:serverUrl+'terminal/place/list',
                add: serverUrl+'terminal/place/add',
                delete:serverUrl+'terminal/place/delete',
                update:serverUrl+'terminal/place/update',
                detail:serverUrl+'terminal/place/detail',
            },
            video:{
                list:serverUrl+'terminal/camera/list',
                add: serverUrl+'terminal/camera/add',
                delete:serverUrl+'terminal/camera/delete',
                update:serverUrl+'terminal/camera/update',
                detail:serverUrl+'terminal/camera/detail',
                listname:serverUrl+'wechat/camera/listName',
            },
            device:{
                list:serverUrl+'terminal/switchBox/list',
                add: serverUrl+'terminal/switchBox/add',
                delete:serverUrl+'terminal/switchBox/delete',
                update:serverUrl+'terminal/switchBox/update',
                detail:serverUrl+'terminal/switchBox/detail',
                listname:serverUrl+'wechat/switchBox/listName',
            },
            collector:{
                list:serverUrl+'terminal/captureDevice/list',
                add: serverUrl+'terminal/captureDevice/add',
                delete:serverUrl+'terminal/captureDevice/delete',
                update:serverUrl+'terminal/captureDevice/update',
                detail:serverUrl+'terminal/captureDevice/detail',
                current:serverUrl+'terminal/captureData/current',
                listByHour:serverUrl+'terminal/captureData/listByHour',
                listByDate:serverUrl+'terminal/captureData/listByDate',
                listName:serverUrl+'wechat/captureDevice/listName',
            },

        },
    };

    //模板路径
    var tpl =  {
        user:{
            login:'user/login',
            list:'user/list',
            add:'user/add-user',
        },
        home:{
            index:'home/index'
        },
        video:{
            list:'video/list',
        },
        collector:{
            list:'collector/list',
            addCollector:'collector/add-collector',
            currDetail:'collector/curr-detail',
            detail:'collector/detail',
        },
        device:{
            list:'device/list',
            append:'device/append',
        },
        farm:{
            list:'farm/list',
            addFarm:'farm/add-farm',
            editFarm:'farm/edit-farm',
        },
        common:{
          search:'common/search',
        }
    };






    function getUrlPath(){
        // 这部分代码就是处理标题兼容问题的。
        // 由于在Chrome window.location.origin 属性是支持的，但是在IE11不支持
        var loc = window.location;
        var portStr = "";
        if(loc.port != 80 && loc.port){ portStr = ":"+loc.port; }
        return loc.protocol + "//" +loc.hostname + portStr;
    }

    //配置默认控制器
    var defaultAction = {
        controller:'Video',
        method:'list'
    };



    return {
        filters: filters,   //ajax返回数据过滤器
        serverUrl:serverUrl,
        path:getPath(), //配置路径
        loaderSelectorId:'load-script', //ClassLoader默认选择器
        defaultAction:defaultAction, //默认action
        loginUrl:loginUrl,//登录页面
        defaultContent:'#wrap', //默认显示模板容器
        api:api, //api接口
        tpl:tpl, //模板路径
        respType:respType //响应类型
    }

});
