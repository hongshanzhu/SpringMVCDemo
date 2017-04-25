<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
  <%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />--%>
  <%--<title>首页 - 后台</title>--%>
  <%--<link href="/res/css/login.css" rel="stylesheet" type="text/css" />--%>
  <%--<script src="/res/js/jquery-1.8.3.min.js"></script>--%>
  <%--<style>--%>
    <%--.inputText{width:100px;}--%>
    <%--.welcome{text-align:center;font-size:16px;margin-top:200px;}--%>
  <%--</style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/common/menu.jsp?select=0" />--%>
<%--<div class="welcome">--%>
  <%--欢迎访问后台！--%>
<%--</div>--%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <meta http-equiv="X-UA-Compatible" content="IE-edge,chrome=1">
    <title>管理平台</title>
</head>

<frameset id="top" name="top" rows="72,*" cols="*" frameborder="NO" border="0" framespacing="0">
    <frame name="menu" src='/admin/menu.do' scrolling="no" title="menu" noresize />

    <frameset framespacing="0" border="0" frameborder="NO" cols="180,*" name="contentframe" id="pr">
        <!-- <frame scrolling="auto" title="application navigation tree" src="/common/submenu.do" name="submenu"></frame> -->

        <%--<frameset framespacing="0" border="0" frameborder="NO" rows="66,*" name="submenuFrame">--%>
            <%--<frame scrolling="no" src="" name="submenuHeader"></frame>--%>
            <frame scrolling="auto" src="/admin/menu_left.do" name="submenu"/>
        <%--</frameset>--%>

        <%--<frame scrolling="no" src="/common/switcher.do" name="switcher"></frame>--%>

        <frame scrolling="no" title="content editing" src="${ROOT}/main.html" name="main" id="main"/>
    </frameset>

</frameset>
<noframes></noframes>

</html>
<%--</body>--%>
<%--</html>--%>