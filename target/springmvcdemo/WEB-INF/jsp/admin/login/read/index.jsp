<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%
    AdminLoginService adminLoginService = Env.getBean(AdminLoginService.class);
    RequestWrapper req = new RequestWrapper(pageContext);

    List<Login> list = adminLoginService.getLoginList();
    req.attr("list", list);
    out.clear();
%><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>在线列表 - 后台</title>
<link href="/res/css/login.css" rel="stylesheet" type="text/css" />
    <script src="/res/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="/res/js/func.js" type="text/javascript"></script>

    <style>
.inputText{width:100px;}
</style>
</head>
<body>
<jsp:include page="/common/menu.jsp?select=1" />
<div class="dwz">您现在的位置：在线列表</div>
<div class="list">
<!-- <div class="listlo">
</div> -->
<table width="100%" border="0" cellspacing="1" cellpadding="0" class="listtb">      	
   <tr>
    <th>ID</th>
    <th>用户</th>
    <th>令牌</th>
    <th>状态</th>
    <th>创建时间</th>
    <th>过期时间</th>
    <th>IP</th>
    <th>操作</th>
  </tr>
  <c:forEach var="o" items="${list}" varStatus="idx"> 
  <tr class="${idx.index%2==0?"bluetr":"" }">
      <td width="4%" align="center">${o.id}</td>
      <td width="5%" align="center">${o.user.truename}</td>
      <td width="" align="center">${o.token}</td>
      <td width="5%" align="center">${o.status==1?"环境异常":o.status==2?"密码过期":"正常登录" }</td>
      <td width="10%" align="center"><fmt:formatDate value="${o.createTime }" pattern="yyyy-MM-dd HH:mm"/></td>
      <td width="10%" align="center"><fmt:formatDate value="${o.expireTime }" pattern="yyyy-MM-dd HH:mm"/></td>
      <td width="11%" align="center">${o.ip }</td>
      <td width="5%" align="center">
      	<a href="javascript:deleteLogin('${o.id}')">退出登录</a>
      </td>      
  </tr>
  </c:forEach>
</table>
<jsp:include page="/common/pager.jsp"/>
<script>
function deleteLogin(id){
	if(!confirm('确定操作吗？')){
		return;
	}
	var data = {};
	data.id = id;
	data = Func.parseParam(data);
	$.post("/admin/login/delete/delete.json.jsp",data,function(j){
		alert(j.msg);
		if(j.code == 1){
			Func.reloadPage();
		}
	},"json");
}
</script>
</div>
</body>
</html>
