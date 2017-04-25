<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%@include file="/WEB-INF/jsp/common/func.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新建或修改用户- 后台</title>
<link href="/res/css/login.css" rel="stylesheet" type="text/css" />
	<script src="/res/js/jquery-1.8.3.min.js"></script>
<script src="/res/js/func.js"></script>
<script src="/res/js/datetime/WdatePicker.js"></script>
<style>
.padC{ padding:15px 0 15px 0px;}
.butpad{padding:0;}
.edittbl tr {height:24px; line-height:24px; padding:0px;}
.inputText{width:90%;}
</style>
</head>
<body>

<div class="bg login box" style="width:95% ;height:360px">
<div class="list">
<div class="padC">
<span style="color:red">注：*为必填项<br>Email必须真实，安全验证时要用到<br>用户初始密码为其帐号名称，长度不足8位的，后面补数字0</span>
<table width="100%" border="0" cellspacing="1" cellpadding="0" class="edittbl">
<c:if test="${user.id != 0 }"><tr><td align="right" width="20%">ID：</td><td align="left">${user.id }</td></tr></c:if>
<tr><td align="right" width="20%">帐号：</td><td align="left"><input type="text" id="username" name="username" value="${fn:escapeXml(user.username) }" class="inputText"/><span style="color:red">*</span></td></tr>
<%-- 
<tr><td align="right">密码：</td><td align="left"><input type="password" id="password" name="password" value="${user.password }" class="inputText"/><span style="color:red">*</span></td></tr>
<tr><td align="right">密码确认：</td><td align="left"><input type="password" id="repassword" name="repassword" value="${user.password }" class="inputText"/><span style="color:red">*</span></td></tr>
<tr><td align="right">密码提示：</td><td align="left"><input type="checkbox" value="1" id="pwdWarning" name="pwdWarning" ${user.id==0?"checked":"" }> 用户登录提示其修改密码</td></tr>
 --%>
<tr><td align="right">真名：</td><td align="left"><input type="text" id="truename" name="truename" value="${user.truename }" class="inputText"/><span style="color:red">*</span></td></tr>
<tr><td align="right">Email：</td><td align="left"><input type="text" id="email" name="email" value="${user.email }" class="inputText"/><span style="color:red">*</span></td></tr>
<tr><td align="right">入职时间：</td><td align="left"><input type="text" id="entryTime" name="entryTime" value="<fmt:formatDate value="${user.entryTime }" pattern="yyyy-MM-dd"/>" class="inputText" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/></td></tr>
<tr><td align="right">类型：</td><td align="left">
<select id="type">
<option value="1" ${user.type==1?"selected":"" }>全职</option>
<option value="2" ${user.type==2?"selected":"" }>兼职</option>
<option value="3" ${user.type==3?"selected":"" }>实习</option>
</select>
</td></tr>
<tr><td align="right">部门：</td><td align="left">
<select id="departmentId"><c:forEach var="o" items="${deps }">
<option value="${o.id }" ${user.departmentId==o.id?"selected":"" }>${o.name }</option></c:forEach>
</select>
</td></tr>
</table>
<center style="margin-top:5px;"><input type="button" value="确 定" class="but1" onclick="saveUser()"></center>
</div>
</div>
</div>
<script type="text/javascript">
function saveUser(){
	var url = "/auth/user/save.do";
	var data = {};
	data.id = "${user.id}";
	data.username = $("#username").val();
	data.truename = $("#truename").val();
	data.password = $("#password").val();
	data.repassword = $("#repassword").val();
	data.email = $("#email").val();
	data.entryTime = $("#entryTime").val();
	data.type = $("#type").val();
	data.departmentId = $("#departmentId").val();
	data.pwdWarning = $("#pwdWarning").attr("checked")?"1":"0";
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
