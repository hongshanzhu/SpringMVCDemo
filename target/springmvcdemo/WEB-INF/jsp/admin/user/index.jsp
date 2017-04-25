<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户 - 后台</title>
<link href="/res/css/login.css" rel="stylesheet" type="text/css" />
	<script src="/res/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script src="/res/js/layer/layer.js" type="text/javascript"></script>
	<script src="/res/js/func.js" type="text/javascript"></script>

<style>
.inputText{width:100px;}
</style>
</head>
<body>
<%--<jsp:include page="/common/menu.jsp?select=1" />--%>
<%--<div class="dwz">您现在的位置：用户列表</div>--%>
<div class="list">
<div class="listlo">
<form>
ID:<input name="id" value="${id}" class="inputText">
帐号：<input name="username" value="${username }" class="inputText">
类型：<select name="type">
<option value="0" ${type==0?"selected":"" }>全部</option>
<option value="1" ${type==1?"selected":"" }>全职</option>
<option value="2" ${type==2?"selected":"" }>兼职</option>
<option value="3" ${type==3?"selected":"" }>实习</option>
</select>
部门：<select name="departmentId">
<option value="0" ${departmentId==0?"selected":"" }>全部</option>
<c:forEach var="o" items="${deps }">
<option value="${o.id }" ${departmentId==o.id?"selected":"" }>${o.name }</option></c:forEach>
</select>
在职：<select name="status">
<option value="1" ${status==1?"selected":"" }>是</option>
<option value="0" ${status==0?"selected":"" }>否</option>
<option value="-1" ${status==-1?"selected":"" }>全部</option>
</select>
锁定：<select name="locked">
<option value="0" ${locked==0?"selected":"" }>否</option>
<option value="1" ${locked==1?"selected":"" }>是</option>
<option value="-1" ${locked==-1?"selected":"" }>全部</option>
</select>
排序：<select name="orderField">
<option value="0" ${orderField==0?"selected":"" }>帐号</option>
<option value="1" ${orderField==1?"selected":"" }>创建时间</option>
<option value="2" ${orderField==2?"selected":"" }>ID</option>
</select> <select name="order">
<option value="0" ${order==0?"selected":"" }>升序</option>
<option value="1" ${order==1?"selected":"" }>降序</option>
</select>
<input type="submit" value="查询" class="but1"> - 
<input type="button" value="新建用户" class="but1" onclick="createUser()">
</form>
</div>
<table width="100%" border="0" cellspacing="1" cellpadding="0" class="listtb">      	
   <tr>
    <th>ID</th>
    <th>帐号/真名</th>
    <th>部门/类型</th>
    <th>Email/状态</th>
    <th>最后登录/密码修改</th>
    <th>最后操作IP</th>
    <th>创建/更新</th>
	   <th>操作</th>
	   <th>-</th>
  </tr>
  <c:forEach var="o" items="${pager.resultList}" varStatus="idx"> 
  <tr class="${idx.index%2==0?"bluetr":"" }">
      <td width="3%" align="center">${o.id}</td>
      <td width="10%" align="center">${o.username}<br/>${o.truename}</td>
      <td width="10%" align="center">${depMap[o.departmentId]}<br/>${o.type==1?"全职":o.type==2?"兼职":o.type==3?"实习":"其它"}</td>
      <td width="" align="center">${o.email} <br/>
      <c:if test="${o.status == 0 }"><span style='color:red'>离职<c:if test="${!empty o.quitTime}"> @ <fmt:formatDate value="${o.quitTime}" pattern="yyyy-MM-dd"/></c:if></span></c:if>
      <c:if test="${o.status == 1 }">
      <c:if test="${o.locked == 1 }"><span style='color:#f60;'>锁定<c:if test="${!empty o.lockTime}"> @ <fmt:formatDate value="${o.lockTime}" pattern="yyyy-MM-dd"/></c:if></span></c:if>
      <c:if test="${o.locked == 0 }"><span style='color:black'>在职<c:if test="${!empty o.entryTime}"> @ <fmt:formatDate value="${o.entryTime}" pattern="yyyy-MM-dd"/></c:if></span></c:if>
      </c:if>
      </td>
      
      <td width="13%" align="center"><fmt:formatDate value="${o.lastLoginTime}" pattern="yyyy-MM-dd HH:mm"/><br/>
		  <fmt:formatDate value="${o.lastChgPwdTime}" pattern="yyyy-MM-dd HH:mm"/></td>
      <td width="8%" align="center">${o.lastActionIp}</td>
      <td width="16%" align="center"><font style="color:blue">${o.createBy}</font> @ <fmt:formatDate value="${o.createTime}" pattern="yyyy-MM-dd HH:mm"/><c:if test="${!empty o.updateBy }"><br>
      <font style="color:blue">${o.updateBy}</font> @ <fmt:formatDate value="${o.updateTime}" pattern="yyyy-MM-dd HH:mm"/></c:if></td>
      <td width="10%" align="center">
      	<a href="javascript:resetPwd('${o.id}')">重置密码</a> <br/>
      	<a href="javascript:modifyUser('${o.id}')">修改</a> <br/>
      	<a href="/auth/resource/userResource.do?uid=${o.id }">权限设置</a> <br/>
          <a href="/auth/user/userRole.do?uid=${o.id }">查看用户角色</a>
      </td>
	  <td width="5%" align="center">
		  <a href="javascript:deleteUser('${o.id}')">删除</a><br />
		  <a href="javascript:quitUser('${o.id}')">${o.status==1?"离职":"入职" }</a><br/>
		  <a href="javascript:lockUser('${o.id}')">${o.locked==0?"锁定":"解锁" }</a><br/>


	  </td>
  </tr>
  </c:forEach>
</table>
<jsp:include page="/WEB-INF/jsp/common/pager.jsp"/>
<script>
function modifyUser(uid){
	var param = {};
	param.uid = uid;
	doOpenForm(param);
}

function createUser(){
	var param = {};
	doOpenForm(param);
}

function doOpenForm(param){
	var formName;
	if(param.uid != ""){
		formName = "修改用户"
	}else{
		formName = "新建用户";
	}
	var p = Func.parseParam(param);
	layer.open({
		type: 2,
		title: formName,
		maxmin: true,
		shadeClose: true, //点击遮罩关闭层
		area : ['600px' , '400px'],
		content: '/auth/user/form.do?'+p
	});
}

function quitUser(uid){
	if(!confirm('确定操作吗？')){
		return;
	}
	var data = {};
	data.uid = uid;
	data = Func.parseParam(data);
	$.post("/admin/user/update/updateQuit.json.jsp",data,function(j){
		alert(j.msg);
		if(j.code == 1){
			Func.reloadPage();
		}
	},"json");
}

function deleteUser(uid){
	if(!confirm('确定操作吗？')){
		return;
	}
	var data = {};
	data.uid = uid;
	data = Func.parseParam(data);
	$.post("/admin/user/delete/delete.json.jsp",data,function(j){
		alert(j.msg);
		if(j.code == 1){
			Func.reloadPage();
		}
	},"json");
}

function lockUser(uid){
	if(!confirm('确定操作吗？')){
		return;
	}
	var data = {};
	data.uid = uid;
	data = Func.parseParam(data);
	$.post("/admin/user/update/updateLocked.json.jsp",data,function(j){
		alert(j.msg);
		if(j.code == 1){
			Func.reloadPage();
		}
	},"json");
}

function resetPwd(uid){
	if(!confirm('此操作会将用户密码重置为其帐号名称，不足8位的后面补数字0，确定操作？')){
		return;
	}
	var data = {};
	data.uid = uid;
	data = Func.parseParam(data);
	$.post("/auth/user/resetPwd.do",data,function(j){
		alert(j.msg);
		if(j.code == 1){
			//Func.reloadPage();
		}
	},"json");
}
</script>
</div>
</body>
</html>
