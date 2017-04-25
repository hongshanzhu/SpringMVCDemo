<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<!-- saved from url=(0042)http://mqtt.gdyftech.cn/wechat/#user/login -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>农业4.0管理平台</title>
    <script id="load-script" module="Home" method="index" src="/js/msite/require.js" data-main="js/app"></script>
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="app" src="/js/msite/app.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="config" src="/js/msite/config.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="ctrl-loader" src="/js/msite/ctrl-loader.js">

    </script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="lib/requirejs/css" src="/js/msite/css.js"></script>
    <script src="/res/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="qweb/main" src="/js/msite/main.js"></script>
    <link type="text/css" rel="stylesheet" href="/js/msite/style.css"><link type="text/css" rel="stylesheet" href="/js/msite/font-awesome.min.css">
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="jquery-slim-scroll" src="/js/msite/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="init" src="/js/msite/init.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="base-ctrl" src="/js/msite/base-ctrl.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="handlebars" src="/js/msite/handlebars.js"></script>
    <link type="text/css" rel="stylesheet" href="/js/msite/layer.css">
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="layer" src="/js/msite/layer.js">
    </script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="hbs-helper" src="/js/msite/handlebars-helper.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="md5" src="/js/msite/md5.min.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="ctrl/user" src="/js/msite/user.js"></script></head>

<body style="visibility: visible;">
<div id="wrap" class="wrap">
    <div id="user">
        <div class="com-head">
            <%--<a href="http://mqtt.gdyftech.cn/wechat/" class="back_logo"></a>--%>
            <span>账号登陆</span>
        </div>
        <div class="loginform">
            <form action="">
                <ul>
                    <li>
                       <!-- <span class="wrap">-->
                             <span class="icon phone"></span>
                              <span class="line"></span>
                             <input id ="username" name="username" type="text" placeholder="请输入用户名">

                       <!-- </span>-->

                    </li>
                    <li>
                        <span class="icon pwd"></span>
                        <span class="line"></span>
                        <input id="password" name="password" type="password" placeholder="请输入登陆密码">
                    </li>
                    <%--<li class="verification">--%>
                        <%--<div class="verification_input">--%>
                            <%--<span class=" icon verification_code"></span>--%>
                            <%--<span class="line"></span>--%>
                            <%--<input name="validateCode" type="text" placeholder="请输入验证码">--%>
                        <%--</div>--%>
                        <%--<div class="verification_show">--%>
                            <%--<!--<span></span>-->--%>
                            <%--<img id="validateCode" src="./login_files/generate" alt="">--%>
                        <%--</div>--%>
                    <%--</li>--%>
                </ul>
                <a id="doLoginBtn"  name ="doLoginBtn" class="submit btn-primary">
                    登录
                </a>
            </form>

        </div>


    </div>
</div>

<script type="text/javascript">
    var agrElectricalBoxId = "${agrElectricalBox.id}";
    function doLogin(){
        var data = {};
        data.username = $("#username").val();
        data.password = $("#password").val();
        $.post("${ROOT}/m/doLogin.do",data,function(j){
            if(j.code == 1){
                agrElectricalBoxId = j.agrElectricalBoxId;
                gobackList();}
            else{
                alert(j.msg);
            }

        },"json");}

    // 返回
    function gobackList(){
        var refer = "/m/index.do";
        if(refer){
            location.href = refer;
        }else{
            history.back();
        }
    }

    $(document).ready(function(){
        $("#doLoginBtn").click(doLogin);
    });
</script>



</body></html>