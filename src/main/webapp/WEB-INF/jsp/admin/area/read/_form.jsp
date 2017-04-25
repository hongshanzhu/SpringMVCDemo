<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
  out.clear();
  AreaService areaService = Env.getBean(AreaService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
  long id = req.getLong("id");
  long pid = req.getLong("pid");
//当前资源
  Area area = null;
  if(id > 0){//修改
    area = areaService.load(Area.class, id);
    if(area == null){
      out.println(getErrHtml("地区不存在"));
      return;
    }
  }else{//新建
    area = new Area();
    area.setPid(pid);
  }
  req.attr("area",area);
%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>新建或修改地区设置</title>
  <link href="/res/css/login.css" rel="stylesheet" type="text/css" />
  <script src="/res/js/jquery-1.8.3.min.js" type="text/javascript"></script>
  <script src="/res/js/func.js" type="text/javascript"></script>
  <style>
    .padC{ padding:15px 0 15px 0px;}
    .butpad{padding:0;}
    .edittbl tr {height:24px; line-height:24px; padding:0px;}
    .inputText{width:200px;}
  </style>
</head>
<body>
<div class="bg login box" style="width:95% ;height:210px">
  <div class="list">
    <div class="padC">
      <span style="color:red">注：*为必填项</span>
      <table width="100%" border="0" cellspacing="1" cellpadding="0" class="edittbl">
        <tr><td align="right" width="20%">上级地区：</td><td align="left"> <c:if test="${not empty area.getPArea()}">${area.getPArea().name}</c:if></td></tr>
        <tr><td align="right" width="20%">名称：</td><td align="left"><input type="text" id="name" name="name" value="${area.name }" class="inputText"/><span style="color:red">*</span></td></tr>
        <tr><td align="right">首字母：</td><td align="left"><input type="text" id="firstChar" name="firstChar" value="${area.firstChar }" class="inputText" /></td></tr>

      </table>
      <center style="margin-top:5px;"><input type="button" value="确 定" class="but1" onclick="saveObj()" /></center>
    </div>
  </div>
</div>
<script type="text/javascript">
  function saveObj(){
    var url = ("${area.id}" != "0"?"/admin/area/update/update.json.jsp":"/admin/area/create/create.json.jsp");
    var data = {};
    data.id = "${area.id}";
    data.pid = "${area.pid}";
    data.name = $("#name").val();
    data.firstChar = $("#firstChar").val();
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