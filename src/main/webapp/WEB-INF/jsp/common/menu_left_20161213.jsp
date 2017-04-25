<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<html>
<head>
    <link rel="stylesheet" href="${ROOT}/css/menuleftnormalize.css">
    <link rel="stylesheet" href="${ROOT}/css/menuleftstyle.css" media="screen" type="text/css" />
    <script src="/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script>
        function chlickToMain(title,url){
            var topWin=window.parent.window.document.getElementById("main").contentWindow;
            if(topWin!=null){
                topWin.addTabs(title,url);
            }
        }
    </script>
</head>

<body style="margin: 0">
<c:if test="${index==0}">
<div class="container">
    <ul>
        <li class="dropdown open">
            <a href="#" data-toggle="dropdown">硬件</a>
            <ul class="dropdown-menu show">
                <li><a href="#" onclick="chlickToMain('设备管理','${ROOT}/resCenter/resDevice/list.do');">设备管理</a></li>
                <li><a href="#" onclick="chlickToMain('设备配件类别','${ROOT}/resCenter/resDeviceType/list.do');">设备配件类别</a></li>
                <li><a href="#" onclick="chlickToMain('设备配件型号','${ROOT}/resCenter/resDeviceModel/list.do');">设备配件型号</a></li>
                <li><a href="#" onclick="chlickToMain('设备配件列表','${ROOT}/resCenter/resDevicePart/list.do');">设备配件列表</a></li>
                <li><a href="#" onclick="chlickToMain('设备硬件库存','${ROOT}/resCenter/resDeviceStock/list.do');">设备硬件库存</a></li>
                <li><a href="#" onclick="chlickToMain('设备维修记录','${ROOT}/resCenter/resDeviceRepair/list.do');">设备维修记录</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" data-toggle="dropdown">网络</a>
            <ul class="dropdown-menu">
                <li><a href="#" onclick="chlickToMain('网络设备接口','${ROOT}/resCenter/resNetInteface/list.do');">网络设备接口</a></li>
                <li><a href="#" onclick="chlickToMain('链路管理','${ROOT}/resCenter/resNetLink/list.do');">链路管理</a></li>
                <li><a href="#" >网络拓扑图</a></li>
                <li><a href="#" onclick="chlickToMain('网络设备管理','${ROOT}/resCenter/resNet/list.do');">网络设备管理</a></li>
                <li><a href="#" onclick="chlickToMain('网络出口','${ROOT}/resCenter/resNetOut/list.do');">网络出口</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" data-toggle="dropdown">软件</a>
            <ul class="dropdown-menu">
                <li><a href="#" onclick="chlickToMain('软件信息','${ROOT}/resCenter/resSoftInfo/list.do');">软件信息</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" data-toggle="dropdown">机架</a>
            <ul class="dropdown-menu">
                <li><a href="#" onclick="chlickToMain('机架位管理','${ROOT}/resCenter/resRackInfo/list.do');">机架位管理</a></li>
                <li><a href="#" onclick="alert('暂无信息'); return false;">机架管理图</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" data-toggle="dropdown">应用&服务</a>
            <ul class="dropdown-menu">
                <li><a href="#"  onclick="chlickToMain('应用架构关系','${ROOT}/resCenter/resServerRelation/list.do');">应用架构关系</a></li>
                <li><a href="#" onclick="chlickToMain('服务器管理','${ROOT}/resCenter/resServer/list.do');">服务器管理</a></li>
                <li><a href="#" onclick="chlickToMain('服务管理','${ROOT}/resCenter/resServiceInfo/list.do');">服务管理</a></li>
                <li><a href="#" onclick="chlickToMain('服务类型','${ROOT}/resCenter/resServiceType/list.do');">服务类型</a></li>
                <li><a href="#" onclick="chlickToMain('应用管理','${ROOT}/resCenter/resApplicationInfo/list.do');">应用管理</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" data-toggle="dropdown">信息管理</a>
            <ul class="dropdown-menu">
                <li><a href="#" onclick="chlickToMain('VIP管理','${ROOT}/resCenter/resVip/list.do');">VIP管理</a></li>
                <li><a href="#" onclick="chlickToMain('运营商管理','${ROOT}/resCenter/resOperators/list.do');">运营商管理</a></li>
                <li><a href="#" onclick="chlickToMain('外围数据管理','${ROOT}/resCenter/resOutData/list.do');">外围数据管理</a></li>
                <li><a href="#" onclick="chlickToMain('设备经销商','${ROOT}/resCenter/resDealers/list.do');">设备经销商</a></li>
                <li><a href="#" onclick="chlickToMain('通讯录','${ROOT}/resCenter/resAddressBook/list.do');">通讯录</a></li>
                <li><a href="#" onclick="chlickToMain('IDC管理','${ROOT}/resCenter/resIdc/list.do');">IDC管理</a></li>
                <li><a href="#" onclick="chlickToMain('应用组','${ROOT}/resCenter/resApplicationGroup/list.do');">应用组</a></li>
                <li><a href="#" onclick="chlickToMain('应用部门','${ROOT}/resCenter/resApplicationDept/list.do');">应用部门</a></li>
                <li><a href="#" onclick="chlickToMain('域名管理','${ROOT}/resCenter/resDomainInfo/list.do');">域名管理</a></li>
                <li><a href="#" onclick="alert('暂无信息'); return false;">IP分段</a></li>
                <li><a href="#" onclick="alert('暂无信息'); return false;">IP管理</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" data-toggle="dropdown">工单信息</a>
            <ul class="dropdown-menu">
                <li><a href="#" onclick="chlickToMain('故障类型','${ROOT}/resCenter/resFaultType/list.do');">故障类型</a></li>
                <li><a href="#" onclick="chlickToMain('工单管理','${ROOT}/resCenter/resJob/list.do');">工单管理</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" data-toggle="dropdown">基础信息</a>
            <ul class="dropdown-menu">
                <li><a href="#" onclick="chlickToMain('使用类型','${ROOT}/resCenter/resDeviceUseState/list.do');">使用类型</a></li>
                <li><a href="#" onclick="chlickToMain('存放地点','${ROOT}/resCenter/resDeviceAddress/list.do');">存放地点</a></li>
                <li><a href="#" onclick="chlickToMain('存储类型','${ROOT}/resCenter/resDeviceStoreType/list.do');">存储类型</a></li>
                <li><a href="#" onclick="chlickToMain('存储类型','${ROOT}/resCenter/resDeviceDeadline/list.do');">使用期限</a></li>
                <li><a href="#" onclick="chlickToMain('扩展柜类型','${ROOT}/resCenter/resDeviceExtRack/list.do');">扩展柜类型</a></li>
                <li><a href="#" onclick="chlickToMain('操作系统','${ROOT}/resCenter/resDeviceOs/list.do');">操作系统</a></li>

                <li><a href="#" onclick="chlickToMain('网络设备类型','${ROOT}/resCenter/resNetType/list.do');">网络设备类型</a></li>
                <li><a href="#" onclick="chlickToMain('网络设备型号','${ROOT}/resCenter/resNetModel/list.do');">网络设备型号</a></li>

                <li><a href="#" onclick="chlickToMain('软件型号','${ROOT}/resCenter/resSoftInfoModel/list.do');">软件型号</a></li>

                <li><a href="#" onclick="chlickToMain('链路类别','${ROOT}/resCenter/resNetLinkType/list.do');">链路类别</a></li>
                <li><a href="#" onclick="chlickToMain('应用架构关系类型','${ROOT}/resCenter/resSoftInfoType/list.do');">应用架构关系类型</a></li>
                <li><a href="#" onclick="chlickToMain('应用架构关系状态','${ROOT}/resCenter/resSoftInfoState/list.do');">应用架构关系状态</a></li>
                <li><a href="#" onclick="chlickToMain('服务器类型','${ROOT}/resCenter/resServerType/list.do');">服务器类型</a></li>
                <li><a href="#" onclick="chlickToMain('服务器监控状态','${ROOT}/resCenter/resServerMonitorState/list.do');">服务器监控状态</a></li>
                <li><a href="#" onclick="chlickToMain('系统状态','${ROOT}/resCenter/resSystemState/list.do');">系统状态</a></li>
                <li><a href="#" onclick="chlickToMain('服务类型','${ROOT}/resCenter/resServiceType/list.do');">服务类型</a></li>
                <li><a href="#" onclick="chlickToMain('agent状态','${ROOT}/resCenter/resAgentState/list.do');">agent状态</a></li>
                <li><a href="#" onclick="chlickToMain('agent类型','${ROOT}/resCenter/resAgentType/list.do');">agent类型</a></li>
                <li><a href="#" onclick="chlickToMain('agent信息','${ROOT}/resCenter/resAgentInfo/list.do');">agent信息</a></li>
                <li><a href="#" onclick="chlickToMain('服务类型设定','${ROOT}/resCenter/resServiceTypeType/list.do');">服务类型设定</a></li>
                <li><a href="#" onclick="chlickToMain('服务级别','${ROOT}/resCenter/resServiceInfoLevel/list.do');">服务级别</a></li>
                <li><a href="#" onclick="chlickToMain('服务类别','${ROOT}/resCenter/resServiceInfoState/list.do');">服务类别</a></li>
                <li><a href="#" onclick="chlickToMain('服务健康度','${ROOT}/resCenter/resServiceInfoHealth/list.do');">服务健康度</a></li>
                <li><a href="#" onclick="chlickToMain('访问方式','${ROOT}/resCenter/resApplicationAccess/list.do');">访问方式</a></li>
                <li><a href="#" onclick="chlickToMain('应用类型','${ROOT}/resCenter/resApplicationType/list.do');">应用类型</a></li>
                <li><a href="#" onclick="chlickToMain('应用级别','${ROOT}/resCenter/resApplicationLevel/list.do');">应用级别</a></li>
                <li><a href="#" onclick="chlickToMain('应用状态','${ROOT}/resCenter/resApplicationState/list.do');">应用状态</a></li>
                <li><a href="#" onclick="chlickToMain('应用健康度','${ROOT}/resCenter/resApplicationHealth/list.do');">应用健康度</a></li>
                <li><a href="#" onclick="chlickToMain('运营状态','${ROOT}/resCenter/resApplicationOperate/list.do');">运营状态</a></li>
                <li><a href="#" onclick="chlickToMain('防护类型','${ROOT}/resCenter/resApplicationSafeType/list.do');">防护类型</a></li>
                <li><a href="#" onclick="chlickToMain('ip段','${ROOT}/resCenter/resIpInfo/list.do');">ip段</a></li>
                <li><a href="#" onclick="chlickToMain('架构','${ROOT}/resCenter/resFramework/list.do');">架构</a></li>
                <li><a href="#" onclick="chlickToMain('外围数据管理类型','${ROOT}/resCenter/resOutDataType/list.do');">外围数据管理类型</a></li>
                <li><a href="#" onclick="chlickToMain('外围数据状态','${ROOT}/resCenter/resOutDataState/list.do');">外围数据状态</a></li>
                <li><a href="#" onclick="chlickToMain('联系人类型','${ROOT}/resCenter/resAddressBookType/list.do');">联系人类型</a></li>
                <li><a href="#" onclick="chlickToMain('域名类型','${ROOT}/resCenter/resDomainInfoType/list.do');">域名类型</a></li>
                <li><a href="#" onclick="chlickToMain('工单检测层面','${ROOT}/resCenter/resJobCheck/list.do');">工单检测层面</a></li>
            </ul>
        </li>
    </ul>
</div>
</c:if>


<c:if test="${index==1}">
    <div class="container">
        <ul>
            <li class="dropdown open">
                <a href="#" data-toggle="dropdown">硬件</a>
                <ul class="dropdown-menu show">
                    <li><a href="#">告警监控页</a></li>
                    <li><a href="#">应用-主机健康度</a></li>
                    <li><a href="#">信息显示页</a></li>
                    <li><a href="#">存储资源状况</a></li>
                </ul>
            </li>
            <li class="dropdown open">
                <a href="#" data-toggle="dropdown">网络</a>
                <ul class="dropdown-menu show">
                    <li><a href="#">网络实时状态图</a></li>
                    <li><a href="#">网络告警查询</a></li>
                    <li><a href="#">网络性能图</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" data-toggle="dropdown">流量</a>
                <ul class="dropdown-menu">
                    <li><a href="#">告警流量</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" data-toggle="dropdown">告警</a>
                <ul class="dropdown-menu">
                    <li><a href="#">实时告警</a></li>
                    <li><a href="#">告警查询</a></li>
                    <li><a href="#">告警统计</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" data-toggle="dropdown">检测</a>
                <ul class="dropdown-menu">
                    <li><a href="#">实时检测</a></li>
                    <li><a href="#">常规检测</a></li>
                    <li><a href="#">检测模板</a></li>
                    <li><a href="#">检测点设置</a></li>
                    <li><a href="#">检测统计</a></li>
                    <li><a href="#">Uptime统计</a></li>
                </ul>
            </li>
        </ul>
    </div>
</c:if>
<c:if test="${index==2}">
    <div class="container">
        <ul>
            <li class="dropdown open">
                <a href="#" data-toggle="dropdown">网络资源统计</a>
                <ul class="dropdown-menu show">
                    <li><a href="#">总流量趋势统计</a></li>
                    <li><a href="#">流量排名统计</a></li>
                    <li><a href="#">指定IP流量趋势统计</a></li>
                    <li><a href="#">无线资源统计</a></li>
                    <li><a href="#">AP资源统计</a></li>
                </ul>
            </li>
            <li class="dropdown open">
                <a href="#" data-toggle="dropdown">运维资源成本统计</a>
                <ul class="dropdown-menu show">
                    <li><a href="#">申请资源统计</a></li>
                    <li><a href="#">回收资源统计</a></li>
                    <li><a href="#">系统资源统计</a></li>
                    <li><a href="#">空闲资源统计</a></li>
                    <li><a href="#">单网成本统计</a></li>
                    <li><a href="#">网间成本统计</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" data-toggle="dropdown">运维工作量统计</a>
                <ul class="dropdown-menu">
                    <li><a href="#">工单报表</a></li>
                    <li><a href="#">项目周报表</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" data-toggle="dropdown">网络健康度</a>
                <ul class="dropdown-menu">
                    <li><a href="#">网络健康度报表</a></li>
                </ul>
            </li>
        </ul>
    </div>
</c:if>


<c:if test="${index==3}">
    <div class="container">
        <ul>
            <li class="dropdown open">
                <a href="#" data-toggle="dropdown">权限管理</a>
                <ul class="dropdown-menu show">
                    <li><a href="#">后台用户</a></li>
                    <li><a href="#">部门列表</a></li>
                    <li><a href="#">角色管理</a></li>
                    <li><a href="#">资源设置</a></li>
                    <li><a href="#">IP设置</a></li>
                    <li><a href="#">在线用户</a></li>
                    <li><a href="#">认证环境</a></li>
                </ul>
            </li>
        </ul>
    </div>
</c:if>

<c:if test="${index==4}">
    <div class="container">
        <ul>
            <li class="dropdown open">
                <a href="#" data-toggle="dropdown">系统设置</a>
                <ul class="dropdown-menu show">
                    <li><a href="#">系统配置</a></li>
                    <li><a href="#">系统缓存</a></li>
                    <li><a href="#">系统日志</a></li>
                    <li><a href="#">更新静态资源</a></li>
                    <li><a href="#">流量统计</a></li>
                    <li><a href="#">计数栏目设置</a></li>
                </ul>
            </li>
        </ul>
    </div>
</c:if>


<script src="${ROOT}/js/menuleftindex.js"></script>

</body>
</html>
