<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%
IpService ipService = Env.getBean(IpService.class);
RequestWrapper req = new RequestWrapper(pageContext);
long id = req.getLong("id");
String ip = req.getString("ip");
int regex = req.getInt("regex",-1);
int type = req.getInt("type",-1);
int expire = req.getInt("expire",0);
int pageNo = req.getInt("pageNo",1);
int pageSize = req.getInt("pageSize",50);
Pager<Ip> pager = ipService.query(ip, type, regex, expire, pageNo, pageSize);
req.attr("pager", pager);

req.attr("ip",ip);
req.attr("id",id==0?"":String.valueOf(id));
req.attr("regex",regex);
req.attr("expire",expire);
req.attr("type",type);
out.clear();
%><!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>IP设置 - 后台</title>
	<link href="/res/css/login.css" rel="stylesheet" type="text/css"/>
	<script src="/res/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script src="/res/js/layer/layer.js" type="text/javascript"></script>
	<script src="/res/js/func.js" type="text/javascript"></script>
	<style>
		.inputText {
			width: 100px;
		}
	</style>
</head>
<body>
<jsp:include page="/common/menu.jsp?select=1" />
<div class="dwz">您现在的位置：IP设置</div>
<div class="list">
<div class="listlo">
<form>
ID:<input name="id" value="${id}" class="inputText">
IP：<input name="ip" value="${ip }" class="inputText">
类型：<select name="type">
<option value="-1" ${type==-1?"selected":"" }>不限</option>
<option value="0" ${type==0?"selected":"" }>黑名单</option>
<option value="1" ${type==1?"selected":"" }>白名单</option>
</select>
正则式：<select name="regex">
<option value="1" ${regex==1?"selected":"" }>是</option>
<option value="0" ${regex==0?"selected":"" }>否</option>
<option value="-1" ${regex==-1?"selected":"" }>不限</option>
</select>

<input type="submit" value="查询" class="but1"> - 
<input type="button" value="新建IP" class="but1" onclick="createIp()">
</form>
</div>
<table width="100%" border="0" cellspacing="1" cellpadding="0" class="listtb">      	
   <tr>
    <th>ID</th>
    <th>IP</th>
    <th>正则式</th>
    <th>类型</th>
    <th>过期时间</th>
    <th>创建时间</th>
    <th>创建者</th>
    <th>操作</th>
  </tr>
  <c:forEach var="o" items="${pager.resultList}" varStatus="idx"> 
  <tr class="${idx.index%2==0?"bluetr":"" }">
      <td width="5%" align="center">${o.id}</td>
      <td width="" align="left">${o.ip}</td>
      <td width="7%" align="center">${o.regex==1?"是":"否"}</td>
      <td width="5%" align="center">${o.type==1?"白名单":"黑名单"}</td>
      <td width="10%" align="center"><fmt:formatDate value="${o.expireTime}" pattern="yyyy-MM-dd HH:mm"/></td>
      <td width="10%" align="center"><fmt:formatDate value="${o.createTime}" pattern="yyyy-MM-dd HH:mm"/></td>
      <td width="7%" align="center">${o.createBy}</td>
      <td width="5%" align="center">
      	<a href="javascript:modifyIp('${o.id}')">修改</a>
      	<a href="javascript:deleteIp('${o.id}')">删除</a>
      </td>      
  </tr>
  </c:forEach>
</table>
<jsp:include page="/common/pager.jsp"/>
<script>
function modifyIp(id){
	var param = {};
	param.id = id;
	doOpenForm(param);
}

function createIp(){
	var param = {};
	doOpenForm(param);
}

function doOpenForm(param){
	var formName;
	if(param.id != undefined){
		formName = "修改IP"
	}else{
		formName = "新建IP";
	}
	var p = Func.parseParam(param);
	layer.open({
		type: 2,
		title: formName,
		maxmin: true,
		shadeClose: true, //点击遮罩关闭层
		area : ['400px' , '250px'],
		content: '/admin/ip/read/_form.jsp?'+p
	});
}

function deleteIp(id){
	if(!confirm('确定操作吗？')){
		return;
	}
	var data = {};
	data.id = id;
	data = Func.parseParam(data);
	$.post("/admin/ip/delete/delete.json.jsp",data,function(j){
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
