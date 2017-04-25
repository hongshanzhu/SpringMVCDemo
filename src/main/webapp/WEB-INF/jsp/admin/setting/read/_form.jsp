<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
  out.clear();
  SettingService settingService = Env.getBean(SettingService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
  long id = req.getLong("id");
//当前资源
  Setting setting = null;
  if(id > 0){//修改
    setting = settingService.load(Setting.class, id);
    if(setting == null){
      out.println(getErrHtml("权限配置不存在"));
      return;
    }
  }else{//新建
    setting = new Setting();
  }
  req.attr("setting",setting);
%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>新建或修改权限设置</title>
  <link href="/res/css/login.css" rel="stylesheet" type="text/css" />
  <script src="/res/js/jquery-1.8.3.min.js" type="text/javascript"></script>
  <script src="/res/js/func.js" type="text/javascript"></script>
  <style>
    .padC{ padding:15px 0 15px 0px;}
    .butpad{padding:0;}
    .edittbl tr {height:24px; line-height:24px; padding 0px;}
    .inputText{width:200px;}
  </style>
</head>
<body>
<div class="bg login box" style="width:95% ;height:210px">
  <div class="list">
    <div class="padC">
      <span style="color:red">注：*为必填项</span>
      <table width="100%" border="0" cellspacing="1" cellpadding="0" class="edittbl">

        <tr><td align="right" width="20%">cnKey：</td><td align="left"><input type="text" id="cnKey" name="cnKey" value="${setting.cnkey }" class="inputText"/><span style="color:red">*</span></td></tr>
        <tr><td align="right" width="20%">enKey：</td><td align="left"><input type="text" id="enKey" name="enKey" value="${setting.enkey }" class="inputText"/><span style="color:red">*</span></td></tr>
        <tr><td align="right" width="20%">value：</td><td align="left"><input type="text" id="value" name="value" value="${setting.value }" class="inputText"/><span style="color:red">*</span></td></tr>


      </table>
      <center style="margin-top:5px;"><input type="button" value="确 定" class="but1" onclick="saveObj()" /></center>
    </div>
  </div>
</div>
<script type="text/javascript">
  function saveObj(){
    var url = ("${setting.id}" != "0"?"/admin/setting/update/update.json.jsp":"/admin/setting/create/create.json.jsp");
    var data = {};
    data.id = "${setting.id}";
    data.enKey = $("#enKey").val();
    data.cnKey = $("#cnKey").val();
    data.value = $("#value").val();
    //转换为字符串
    data = Func.parseParam(data);
    $.post(url,data,function(j){
      alert(j.msg);
      if(j.code == 1){
        parent.Func.reloadPage();
      }
    },"json");
  }
</script>
</body>
</html>