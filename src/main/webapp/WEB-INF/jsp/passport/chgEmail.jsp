<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%
  AuthService authService = Env.getBean(AuthService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
//User user = authService.checkPwdPermission(req);
//获取登录用户，如空则禁止修改 
  User user = authService.getLoginUser(req);
  if(user == null){
    throw new RuntimeException("请先登录");
  }
  String returl = req.getString("returl",Env.getHost());
  req.attr("user",user);
  req.attr("returl",returl);
  out.clear();
%><!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>后台权限系统</title>
  <script src="/res/js/jquery-1.8.3.min.js"></script>
  <link href="/res/css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="box login magt">
  <div class="topHeadA"><div class="headLogo headLogoA">后台权限系统-修改Email</div></div>
  <div class="bg">
    <div id="errorTips" style="color:red;display:none"></div>
    <div class="padA">
      <div class="dtext"><p>用户帐号：</p>${user.username}</div>
      <div class="dtext"><p>Email：</p><input name="email" id="email" type="text" size="20" class="inputText" style="width:150px"/>

      </div>
      <div class="algin dtext padB"><input name="" type="submit" onclick="doChgPwd()" class="but1" value="提交" /> &nbsp; <input name="" type="reset" class="but2" value="重置" /></div>
    </div>
  </div>
  <script>
    function doChgPwd(){
      var data = {};
      data.email = $("#email").val();
      $.post("/passport/doChgEmailAjax.jsp",data,function(j){
        if(j.code == 1){
          alert("请登陆["+ $("#email").val()+"来验证您的新Email.]");
          location.href = '${returl}';
        }else{
          alert(j.msg);
        }
      },"json");
    }
    $(function(){
      $("#oldpassword").focus();
    });
  </script>
</body>
</html>