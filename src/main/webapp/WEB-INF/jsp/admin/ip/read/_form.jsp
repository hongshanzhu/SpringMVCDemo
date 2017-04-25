<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
out.clear();
IpService ipService = Env.getBean(IpService.class);
RequestWrapper req = new RequestWrapper(pageContext);
long id = req.getLong("id");
//当前用户
Ip ip = null;
if(id > 0){//修改
	ip = ipService.getIp(id);
	if(ip == null){
		out.println(getErrHtml("IP不存在"));
		return;
	}
}else{//新建	
	ip = new Ip();
	ip.setType(0);//缺省黑名单
	ip.setRegex(0);//缺省非正则
	ip.setExpire(Long.MAX_VALUE);
}
req.attr("ip",ip);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新建或修改IP设置- 后台</title>
<link href="/res/css/login.css" rel="stylesheet" type="text/css" />
<script src="/res/js/jquery-1.8.3.min.js"></script>
<script src="/res/js/func.js"></script>
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
<tr><td align="right" width="20%">IP：</td><td align="left"><input type="text" id="ip" name="ip" value="${ip.ip }" class="inputText"/><span style="color:red">*</span></td></tr>
<tr><td align="right">过期时间：</td><td align="left"><input type="text" id="expireTime" name="expireTime" value="<fmt:formatDate value="${ip.expireTime }" pattern="yyyy-MM-dd HH:mm"/>" class="inputText" onFocus="setday(this)"/><span style="color:red">*</span></td></tr>
<tr><td align="right">类型：</td><td align="left">
<select id="type">
<option value="0" ${ip.type==0?"selected":"" }>黑名单</option>
<option value="1" ${ip.type==1?"selected":"" }>白名单</option>
</select>
</td></tr>
<tr><td align="right">是否正则：</td><td align="left">
<select id="regex">
<option value="1" ${ip.regex==1?"selected":"" }>是</option>
<option value="0" ${ip.regex==0?"selected":"" }>否</option>
</select>
</td></tr>
</table>
<center style="margin-top:5px;"><input type="button" value="确 定" class="but1" onclick="saveIp()"></center>
</div>
</div>
</div>
<script type="text/javascript">
function saveIp(){
	var url = ("${ip.id}" != "0"?"/admin/ip/update/update.json.jsp":"/admin/ip/create/create.json.jsp");
	var data = {};
	data.id = "${ip.id}";
	data.ip = $("#ip").val();
	data.expireTime = $("#expireTime").val();
	data.regex = $("#regex").val();
	data.type = $("#type").val();
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
