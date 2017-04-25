<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
  out.clear();
  RoleService roleService = Env.getBean(RoleService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
  long id = req.getLong("id");
//当前资源
  Role role = null;
  if(id > 0){//修改
    role = roleService.load(Role.class, id);
    if(role == null){
      out.println(getErrHtml("角色不存在"));
      return;
    }
  }else{//新建
    List<Role> list = roleService.listRoles();
    int lastSeq = 0;
    if(list != null && list.size() > 0){
      lastSeq = list.get(list.size() - 1).getSeq();
    }
    role = new Role();
    role.setSeq(lastSeq + 1);
  }
  req.attr("role",role);
%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>新建或修改角色设置</title>
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
        <tr><td align="right" width="20%">名称：</td><td align="left"><input type="text" id="name" name="name" value="${role.name }" class="inputText"/><span style="color:red">*</span></td></tr>
        <tr><td align="right">排序：</td><td align="left"><input type="text" id="seq" name="seq" value="${role.seq }" class="inputText" /></td></tr>

      </table>
      <center style="margin-top:5px;"><input type="button" value="确 定" class="but1" onclick="saveObj()" /></center>
    </div>
  </div>
</div>
<script type="text/javascript">
  function saveObj(){
    var url = ("${role.id}" != "0"?"/admin/role/update/update.json.jsp":"/admin/role/create/create.json.jsp");
    var data = {};
    data.id = "${role.id}";
    data.name = $("#name").val();
    data.seq = $("#seq").val();
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