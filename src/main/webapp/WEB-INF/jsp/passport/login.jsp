<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%
  AdminLoginService adminLoginService = Env.getBean(AdminLoginService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
  String app = req.getString("app","后台");
  String returl = req.getString("returl",Env.getHost()+"/admin/index.do");//返回url
  String returlEncode = req.getEncodeString("returl",Env.getHost());//返回url
//检查当前登录状态
  Login login = adminLoginService.getLogin(req);
  int status = 0;
  if(login != null && !login.isExpired()){
    if(login.getStatus() == AdminLoginService.STATUS_ENV_WARNING){
      status = 1;
    }else if(login.getStatus() == AdminLoginService.STATUS_PWD_WARNING){
      status = 2;
    }else if(login.getStatus() == AdminLoginService.STATUS_OK){
      status = 3;
      response.sendRedirect(returl);
      return;
    }
  }
  req.attr("appName",app);
  req.attr("returl",returl);
  req.attr("returlEncode",returlEncode);
  req.attr("status",status);
  out.clear();
%><!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>${appName}</title>
  <script src="/js/jquery-1.8.3.min.js" type="text/javascript"></script>
  <link href="/css/login.css" rel="stylesheet" type="text/css" />

  <style>
    html,body{ height:100%;font-size:12px;font-family:'Microsoft Yahei';position:relative;}

    .loginBox{ width:410px;height:200px;padding:10px;margin:auto;background:#fff;position:absolute;top:0;left:0;bottom:0;right:0;overflow:auto;}
    .tipsDiv{ font-size:14px;text-align:center;margin-top:50px;}
    .tipsDiv a{ font-size:14px;color:blue;}

    .siteLogo{ width:202px;height:72px;background:url(/res/images/head_logo.png) no-repeat;float:left;}
    .box1{ margin:5px 0 0 120px;}
    .dtext span{ color:#4e89bb;font-size:14px;}
    .dtext .inputText{ height:22px;padding:0 3px;border:1px solid #4e89bb;background:#f9f9fd;}
    .box2{ padding:10px 0 0 162px;overflow:hidden;}
    .box2 input{ width:60px;height:24px;margin-right:15px;color:#4e89bb;font-size:12px;font-weight:700;background:#f9f9fd;border:1px solid #4e89bb;cursor:pointer;}
  </style>
</head>
<body>
<c:if test="${status == 0 }">

  <div class="loginBox">
    <div style="height: 72px;width: 72px;float:left;"><img src="${ROOT}/favicon.ico" style="width:100%;height:100%;"></div>
    <div class="box1">
      <div class="dtext"><span>帐号：</span><input name="username" id="username" type="text" size="20" class="inputText" style="width:150px" value=""/></div>
      <div class="dtext"><span>密码：</span><input name="password" id="password" type="password" size="20" class="inputText" style="width:150px" value=""/></div>
    </div>
    <div class="box2"><input name="" type="button" onclick="doLogin()" class="" value="登陆" /><input name="" type="reset" class="" value="重置" /></div>

  </div>
  <script>
    function doLogin(){
      var data = {};
      data.username = $("#username").val();
      data.password = $("#password").val();
      data.returl = "${ROOT}";
      $.post("${ROOT}/doLogin.do",data,function(j){
        if(j.code == 1){
          //alert(parent);
          //if(parent){
          //parent.location.reload();
          //}else{
          location.href = '${ROOT}/admin/index.do';
          //}
        }else{
          if(j.msg == "你的密码已过期，请修改密码" || j.msg == "你本次登录需要安全验证，验证邮件已发送到你的注册邮箱"){
            location.reload();
          }else{
            alert(j.msg);
          }
          //location.reload();
        }
      },"json");
    }
    function doEnterLogin(e){
      var keynum;
      if(window.event){//ie
        keynum = e.keyCode;
      }else if(e.which){ // Netscape/Firefox/Opera
        keynum = e.which;
      }
      if(keynum == 13){
        doLogin();
      }
    }
    $(function(){
      $("#username").focus();
      $("#username").bind("keypress",doEnterLogin);
      $("#password").bind("keypress",doEnterLogin);
    });
  </script>
</c:if>
<c:if test="${status == 1 }">
  <script>
    alert("你的登录环境需要验证");
  </script>
  <div class="tipsDiv">请登录邮箱验证登录环境，<a href='/passport/logout.jsp?returl=/passport/login.jsp'>取消验证</a> <a href='javascript:location.reload()'>刷新</a></div>
</c:if>
<c:if test="${status == 2 }">
  <script>
    alert("你的密码即将过期，请修改密码");
    location.href="/passport/chgPwd.jsp?returl=${returlEncode}";
  </script>
</c:if>
</body>
</html>
