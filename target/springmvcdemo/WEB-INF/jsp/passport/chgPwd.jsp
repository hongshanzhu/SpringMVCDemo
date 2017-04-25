<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%
  AuthService authService = Env.getBean(AuthService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
  User user = authService.checkPwdPermission(req);

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
  <div class="topHeadA"><div class="headLogo headLogoA">后台权限系统-修改密码</div></div>
  <div class="bg">
    <div id="errorTips" style="color:red;display:none"></div>
    <div class="padA">
      <div class="dtext"><p>用户帐号：</p>${user.username }</div>
      <div class="dtext"><p>原 密 码：</p><input name="oldpassword" id="oldpassword" type="password" size="20" class="inputText" style="width:150px"/></div>
      <div class="dtext"><p>新 密 码：</p><input name="newpassword" id="newpassword" type="password" size="20" class="inputText" style="width:150px"/></div>
      <div class="dtext"><p>确认密码：</p><input name="repassword" id="repassword" type="password" size="20" class="inputText" style="width:150px"/></div>
    </div>
    <div class="algin dtext padB"><input name="" type="submit" onclick="doChgPwd()" class="but1" value="提交" /> &nbsp; <input name="" type="reset" class="but2" value="重置" /></div>
  </div>
</div>
<script>
  function doChgPwd(){
    var data = {};
    data.oldpassword = $("#oldpassword").val();
    data.newpassword = $("#newpassword").val();
    data.repassword = $("#repassword").val();
    $.post("/auth/user/saveChgPwd.do",data,function(j){
      if(j.code == 1){
         alert("密码修改成功");
          window.parent.window.location.href = "${ROOT}/admin/login.do";
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