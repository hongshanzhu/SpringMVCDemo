<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE html>
<!-- saved from url=(0052)http://mqtt.gdyftech.cn/wechat/index.html#Video/list -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style class="vjs-styles-defaults">
        .video-js {
            width: 300px;
            height: 150px;
        }

        .vjs-fluid {
            padding-top: 56.25%
        }
    </style>
    <style class="vjs-styles-dimensions">
        .dimensions-3031b71aa30f4ee6b6fc451d4c5620e3 {
            width: 480px;
            height: 270px;
        }

        .dimensions-3031b71aa30f4ee6b6fc451d4c5620e3.vjs-fluid {
            padding-top: 56.25%;
        }
    </style>
    <style class="vjs-styles-dimensions">
        .dimensions-1bc54246c8de44c9aacb65dfdb273504 {
            width: 480px;
            height: 270px;
        }

        .dimensions-1bc54246c8de44c9aacb65dfdb273504.vjs-fluid {
            padding-top: 56.25%;
        }
    </style>
    <style class="vjs-styles-dimensions">
        .dimensions-02eb2c04b3424b92bb06593eb5a42afb {
            width: 480px;
            height: 270px;
        }

        .dimensions-02eb2c04b3424b92bb06593eb5a42afb.vjs-fluid {
            padding-top: 56.25%;
        }
    </style>

    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>农业4.0管理平台</title>
    <link type="text/css" rel="stylesheet" href="/js/msite/style.css">
    <link type="text/css" rel="stylesheet" href="/js/msite/font-awesome.min.css">
    <script src="/res/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="jquery-slim-scroll" src="/js/msite/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="handlebars"
            src="/js/msite/handlebars.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="md5"
            src="/js/msite/md5.min.js"></script>
    <link type="text/css" rel="stylesheet" href="/js/msite/video-js.min.css">
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="myvideojs"
            src="/js/msite/video(1).js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="myvideo-hls"
            src="/js/msite/videojs-contrib-hls.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="ctrl/home"
            src="/js/msite/home.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
            data-requiremodule="ctrl/collector-manage" src="/js/msite/collector-manage.js"></script>

    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="echarts" src="/js/msite/echarts.min.js"></script>--%>
    <script src="http://echarts.baidu.com/build/dist/echarts.js"></script>



    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="mqtt"
            src="/js/msite/mqttws31.js"></script>
    <link type="text/css" rel="stylesheet" href="/js/msite/mobiscroll.css">
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="mobiletimer"
            src="/js/msite/mobiscroll.js"></script>
    <%--<script id="load-script" module="Home" method="index" src="/js/msite/require.js" data-main="js/app"></script>--%>
    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="app"--%>
            <%--src="/js/msite/app.js"></script>--%>
    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="config"--%>
            <%--src="/js/msite/config.js"></script>--%>
    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="ctrl-loader"--%>
            <%--src="/js/msite/ctrl-loader.js"></script>--%>
    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"--%>
            <%--data-requiremodule="lib/requirejs/css" src="/js/msite/css.js"></script>--%>
    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="qweb/main"--%>
            <%--src="/js/msite/main.js"></script>--%>
    <%--<link type="text/css" rel="stylesheet" href="/js/msite/style.css">--%>
    <%--<link type="text/css" rel="stylesheet" href="/js/msite/font-awesome.min.css">--%>
    <%--<script src="/res/js/jquery-1.8.3.min.js" type="text/javascript"></script>--%>
    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"--%>
            <%--data-requiremodule="jquery-slim-scroll" src="/js/msite/jquery.slimscroll.min.js"></script>--%>
    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="init"--%>
            <%--src="/js/msite/init.js"></script>--%>
    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="base-ctrl"--%>
            <%--src="/js/msite/base-ctrl.js"></script>--%>
    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="handlebars"--%>
            <%--src="/js/msite/handlebars.js"></script>--%>
    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="hbs-helper"--%>
            <%--src="/js/msite/handlebars-helper.js"></script>--%>
    <%--<link type="text/css" rel="stylesheet" href="/js/msite/layer.css">--%>
    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="md5"--%>
            <%--src="/js/msite/md5.min.js"></script>--%>
    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="layer"--%>
            <%--src="/js/msite/layer.js"></script>--%>
    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="ctrl/video"--%>
            <%--src="/js/msite/video.js"></script>--%>
    <%--<link type="text/css" rel="stylesheet" href="/js/msite/video-js.min.css">--%>
    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="myvideojs"--%>
            <%--src="/js/msite/video(1).js"></script>--%>
    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="myvideo-hls"--%>
            <%--src="/js/msite/videojs-contrib-hls.js"></script>--%>
    <link rel="stylesheet" href="/css/tinyselect-m.css">
    <script src="/js/tinyselect.js"></script>
    <script src="/res/js/func.js"></script>
</head>

<body style="visibility: visible;">
<div id="wrap" class="wrap">
    <div id="video">
        <div class="com-head">
            <a id="back_logo" class="back_logo"></a>
            <script>
                $('#back_logo').on('click',function(){
                    history.back(-1);
                });
            </script>
            <span>视频监控</span>
            <!--<a href="#Video/search" class="search_logo"></a>-->
        </div>
        <div class="content">
            <div style="padding-top: 10px;padding-left: 20px;padding-right:20px; align-content: center;width: 100%;">
                <div class="collector-head clearfix" >
                    <div class="com-helf-select fl" style="float: left">
                        <span style="">场地:</span>

                        <input type='hidden' id='agrSpaceName' name='agrSpaceName' value='${agrSpaceName}'/>
                        <select id='agrSpaceId' name='agrSpaceId' style="width: 120px;">
                            <c:if test='${not empty agrSpaceId}'>
                                <option value='${agrSpaceId}'>${agrSpaceName}</option>
                            </c:if>
                            <c:if test='${empty agrSpaceIdId}'>
                                <option value='-1'>全部</option>
                            </c:if>
                        </select>
                        <script>
                            function agrSpaceIdDataParser(data, selected) {
                                retval = [ { val: '-1' , text: '全部' } ];
                                list=data.result;
                                list.forEach(function(v){retval.push({ val: v.id , text: v.name });});
                                return retval;
                            }
                            $('#agrSpaceId').tinyselect({ dataUrl: '/resCenter/agrSpace/getAgrSpaceListJsonByUser.do?userId=${user.id}' , dataParser: agrSpaceIdDataParser});
                            $('#agrSpaceId').on('change',function() {
                                var agrSpaceId=$('#agrSpaceId').val();
                                if(agrSpaceId==-1){
                                    var h = "${ROOT}/m/video.do";
                                    location.href = h;
                                }else{
                                    var h = "${ROOT}/m/video.do?agrSpaceId="+agrSpaceId;
                                    location.href = h;
                                }
                            });
                        </script>
                    </div>
                </div>
            </div>

            <div class="videoList">
                <ul>
                    <c:forEach var="o" items="${list}" varStatus="idx">
                    <li>
                        <span>
                             <div id="play${abc.count}">
                                 <%--<div id="player${o.id}">--%>
                                        <%--<script type="text/javascript" charset="utf-8" src="http://yuntv.letv.com/player/live/blive.js"></script>--%>
                                         <%--<script>--%>
                                         <%--var player${o.id} = new CloudLivePlayer();--%>
                                         <%--var w=Math.min(620,$(window).width()-20);--%>
                                         <%--var h=w/1.667;--%>
                                         <%--player${o.id}.init({activityId:'${o.url}',autoplay:0,width:w,height:h});--%>
                                         <%--</script>--%>
                                 <%--</div>--%>
                                     <center>
                                         <video src="${o.url}" height="300" width="400"  >
                                         </video>
                                     </center>

                             </div>
                              <p>${o.id}</p>
                              <p>${o.name}</p>
                        </span>
                            <script>
                            var w=Math.min(620,$(window).width()-20);
                            var h=w/1.667;
                            $("#play${idx.count}").width(w);
                            $("#play${idx.count}").height(h);
                            </script>
                    </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
</div>

</body>
</html>