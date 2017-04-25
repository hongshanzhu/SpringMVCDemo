<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="/res/css/login.css" rel="stylesheet" type="text/css" />
    <script src="/res/js/jquery-1.8.3.min.js"></script>
    <style>
        .inputText{width:100px;}
        .welcome{text-align:center;font-size:16px;margin-top:200px;}
    </style>
    <script>
        function chlickToMain(title,url){
            var topWin=window.parent.window.document.getElementById("main").contentWindow;
            if(topWin!=null){
                topWin.addTabs(title,url);
            }
        }
    </script>
</head>
<body>
<script src="/res/js/comm.js" type="text/javascript"></script>
<div class="topHeadB">
    <div class="headLogo headLogoB">
        <img src="${ROOT}/favicon.ico" style="width: 30px;height: 30px;"/>
        <a href="" style="font-size:22px">管理平台</a>
      <span>欢迎您：<b>${admin}</b>
          <%----%>
          <%--<a href="#" >场地管理</a>--%>
&nbsp; <a href="#" onclick="chlickToMain('修改密码','${ROOT}/auth/user/chgPwd.do?returl=${ROOT}/admin/login.do');">修改密码</a>
&nbsp; <a href="/passport/logout.do" target="_top">退出登录</a>
      </span>



    </div></div>
<div id="paginate-slider10" class="dmune pagination">

    <i class="toc" i="0"><a href="/admin/menu_left.do?index=0" target="submenu">系统管理</a></i>
    <%--<i class="toc" i="1"><a href="/admin/menu_left.do?index=1" target="submenu">运维监控</a></i>--%>
    <%--<i class="toc" i="2"><a href="/admin/menu_left.do?index=2" target="submenu">成本统计</a></i>--%>

    <%--<i class="toc" i="0">文章管理</i>--%>
    <%--<i class="toc" i="1">用户内容</i>--%>
    <%--<i class="toc" i="2">推荐管理</i>--%>
    <%--<i class="toc" i="3"><a href="/admin/menu_left.do?index=3" target="submenu">权限管理</a></i>--%>
    <%--<i class="toc" i="4">兑换管理</i>--%>
    <%--<i class="toc" i="4">后台权限</i>--%>
    <%--<i class="toc" i="4"><a href="/admin/menu_left.do?index=4" target="submenu">系统设置</a></i>--%>
    <%--<i class="toc" i="7">计数器</i>--%>
</div>

<%--<div id="slider10" class="sliderwrapper dnav">--%>
<%--<div class="contentdiv" i="0">--%>
<%--<ul>--%>
<%--<li><a href="/admin/article/read/latest.jsp">最新文章</a></li>--%>
<%--<li><a href="/admin/artSrc/read/index.jsp">文章出处</a></li>--%>
<%--<li><a href="/admin/codeBlock/read/index.jsp">代码块</a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--<div class="contentdiv" i="1">--%>
<%--<ul>--%>
<%--<li><a href="/admin/blog/read/index.jsp">用户文章</a></li>--%>
<%--<li><a href="/admin/question/read/index.jsp">提问管理</a></li>--%>
<%--<li><a href="/admin/answer/read/index.jsp">回答管理</a></li>--%>
<%--<li><a href="/admin/accountQAInfo/read/index.jsp">达人编辑列表</a></li>--%>
<%--<li><a href="/admin/cmt/read/index.jsp">评论管理</a></li>--%>
<%--</ul>--%>
<%--</div>--%>

<%--<div class="contentdiv" i="2">--%>
<%--<ul>--%>
<%--<li><a href="/admin/focus/read/index.jsp?type=0">礼品推荐</a></li>--%>
<%--<li><a href="/admin/focus/read/index.jsp?type=1">用户文章推荐</a></li>--%>
<%--<li><a href="/admin/focus/read/index.jsp?type=2">用户问答推荐</a></li>--%>
<%--</ul>--%>
<%--</div>--%>

<%--<div class="contentdiv" i="3">--%>
<%--<ul>--%>
<%--<li><a href="/admin/area/read/index.jsp">地区管理</a></li>--%>
<%--<li><a href="/admin/account/read/index.jsp">用户列表</a></li>--%>
<%--<li><a href="/admin/account/read/contact.jsp">联系方式</a></li>--%>
<%--<li><a href="/admin/scorerule/read/index.jsp">职分规则</a></li>--%>
<%--<li><a href="/admin/rank/read/list.jsp">用户等级</a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--<div class="contentdiv" i="4">--%>
<%--<ul>--%>
<%--<li><a href="/admin/gift/read/index.jsp">礼品管理</a></li>--%>
<%--<li><a href="/admin/exchange/read/index.jsp">兑换记录</a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--<div class="contentdiv" i="5">--%>
<%--<ul>--%>
<%--<li><a href="/admin/user/read/index.jsp">后台用户</a></li>--%>
<%--<li><a href="/admin/department/read/index.jsp">部门列表</a></li>--%>
<%--<li><a href="/admin/role/read/index.jsp">角色管理</a></li>--%>
<%--<li><a href="/admin/resource/read/index.jsp">资源设置</a></li>--%>
<%--<li><a href="/admin/ip/read/index.jsp">IP设置</a></li>--%>
<%--<li><a href="/admin/login/read/index.jsp">在线用户</a></li>--%>
<%--<li><a href="/admin/loginEnv/read/index.jsp">认证环境</a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--<div class="contentdiv" i="6">--%>
<%--<ul>--%>
<%--<li><a href="/admin/channel/read/index.jsp">栏目管理</a></li>--%>
<%--<li><a href="/admin/type/read/index.jsp">分类管理</a></li>--%>
<%--<li><a href="/admin/setting/read/index.jsp">系统配置</a></li>--%>
<%--&lt;%&ndash;<li><a href="/admin/cache/read/index.jsp">系统缓存</a></li>&ndash;%&gt;--%>
<%--<li><a href="/admin/log/read/index.jsp">系统日志</a></li>--%>
<%--<li><a href="/admin/updateRes/read/index.jsp">更新静态资源</a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--<div class="contentdiv" i="7">--%>
<%--<ul>--%>
<%--<li><a href="${ROOT}/admin/overview/read/show.jsp?cntChannelId=1" >流量统计</a></li>--%>
<%--<!--         <li><a href="/admin/channel/read/index.jsp">时计</a></li>--%>
<%--<li><a href="/admin/type/read/index.jsp">日计</a></li>--%>
<%--<li><a href="/admin/setting/read/index.jsp">月计</a></li> -->--%>
<%--<!--  <li><a href="/admin/cache/read/index.jsp">来源统计</a></li> -->--%>
<%--<li><a href="${ROOT}/admin/cntChannel/read/list.jsp" >计数栏目设置</a></li>--%>
<%--</ul>--%>
<%--</div>--%>

<%--<div class="contentdiv" i="8">--%>
<%--<ul>--%>
<%--<li><a href="/admin/user/read/index.jsp">后台用户</a></li>--%>
<%--<li><a href="/admin/department/read/index.jsp">部门列表</a></li>--%>
<%--<li><a href="/admin/role/read/index.jsp">角色管理</a></li>--%>
<%--<li><a href="/admin/resource/read/index.jsp">资源设置</a></li>--%>
<%--<li><a href="/admin/ip/read/index.jsp">IP设置</a></li>--%>
<%--<li><a href="/admin/login/read/index.jsp">在线用户</a></li>--%>
<%--<li><a href="/admin/loginEnv/read/index.jsp">认证环境</a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--<div class="contentdiv" i="9">--%>
<%--<ul>--%>
<%--<li><a href="/admin/user/read/index.jsp">后台用户</a></li>--%>
<%--<li><a href="/admin/department/read/index.jsp">部门列表</a></li>--%>
<%--<li><a href="/admin/role/read/index.jsp">角色管理</a></li>--%>
<%--<li><a href="/admin/resource/read/index.jsp">资源设置</a></li>--%>
<%--<li><a href="/admin/ip/read/index.jsp">IP设置</a></li>--%>
<%--<li><a href="/admin/login/read/index.jsp">在线用户</a></li>--%>
<%--<li><a href="/admin/loginEnv/read/index.jsp">认证环境</a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--<div class="contentdiv" i="10">--%>
<%--<ul>--%>
<%--<li><a href="/admin/user/read/index.jsp">后台用户</a></li>--%>
<%--<li><a href="/admin/department/read/index.jsp">部门列表</a></li>--%>
<%--<li><a href="/admin/role/read/index.jsp">角色管理</a></li>--%>
<%--<li><a href="/admin/resource/read/index.jsp">资源设置</a></li>--%>
<%--<li><a href="/admin/ip/read/index.jsp">IP设置</a></li>--%>
<%--<li><a href="/admin/login/read/index.jsp">在线用户</a></li>--%>
<%--<li><a href="/admin/loginEnv/read/index.jsp">认证环境</a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<script type="text/javascript">
    featuredcontentslider.init({
        id: "slider10",
        contentsource: ["inline", ""],
        toc: "markup",
        nextprev: ["", ""],
        revealtype: "mousedown",
        enablefade: [false, 0.15],
        autorotate: [false, 3500],
        onChange: function (previndex, curindex) {
        }
    })

    function positionMenu(){
        var dirs = location.pathname.split("/");
        if(dirs.length < 3){
//        console.log("------------  dirs.length="+dirs.length );
            return;
        }
        var sindex=0;
        var sdir = "/admin/"+dirs[2]+"/";
//      console.log("------sdir="+sdir);
        var sectionCnt = $("i.toc"); // 目录节的数目
//      console.log("------------  sectionCnt="+sectionCnt.length);
        for(var i=0;i<sectionCnt.length;i++){
            var asection = $("div.contentdiv[i="+i+"] > ul > li > a");
//        console.log("------i="+i+ " asection="+asection.length);
            for(var ai=0;ai<asection.length;ai++){
                var href = $(asection[ai]).attr("href");
//          console.log("------sdir="+ sdir +"   href="+href);
                if(href.indexOf(sdir) > -1){
//            console.log("------------   this is the fuck good:"+href);
                    sindex = i;
                    break;
                }
            }
            if(sindex > 0){
                break;
            }
        }
        $($("i.toc[i="+sindex+"]")[0]).mousedown();


    }

    $(function(){
        positionMenu();
    });
</script>
</div>
</body>
</html>