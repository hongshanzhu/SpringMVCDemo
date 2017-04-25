<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
out.clear();
IpService ipService = Env.getBean(IpService.class);
RequestWrapper req = new RequestWrapper(pageContext);
long id = req.getLong("id");
String ip = req.getString("ip");
Date expireTime = req.getDate("expireTime",null);
long expire = 0;
if(expireTime == null){
	expire = Long.MAX_VALUE;
}else{
	expire = expireTime.getTime();
}

int type = req.getInt("type");
int regex = req.getInt("regex");

if(Stringer.isAnyEmpty(ip)){
	out.print(getJson(-1, "必填项不能为空"));
	return;
}

Ip obj = ipService.getIp(id);
if(obj == null){
	out.print(getJson(-1, "找不到IP"));
	return;
}
obj.setIp(ip);
obj.setExpire(expire);
obj.setRegex(regex);
obj.setType(type);
ipService.update(obj);
LogService.log( "修改IP:"+ip);
out.print(getJson(1, "操作成功"));
%>
