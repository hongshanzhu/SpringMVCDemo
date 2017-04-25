<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
out.clear();
IpService ipService = Env.getBean(IpService.class);
RequestWrapper req = new RequestWrapper(pageContext);
long id = req.getLong("id");
Ip ip = ipService.getIp(id);
if(ip == null){
	out.print(getJson(-1, "找不到IP"));
	return;
}
ipService.delete(ip);
LogService.log("删除IP:"+ip.getIp());
out.print(getJson(1, "操作成功"));
%>
