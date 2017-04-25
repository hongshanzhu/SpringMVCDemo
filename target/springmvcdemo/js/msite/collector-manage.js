define(['base-ctrl', 'layer','echarts','mobiletimer','mqtt'], function (BaseController, layer, echarts, mobiletimer, mqtt) {

    function CollectorManage() {
        init();
    }

    function init() {
        var self =this;
        //-----------------------------------------采集器监听-----------------
        //采集器实时监听初始化
        var failcount = 0;
        var client, destination="SATA/GATHERREALTIME";
        var host= 'mqtt.gdyftech.cn';
        var port = '61614';
        var clientId ='pc'+new Date().getTime();
        CollectorManage.client  = new Messaging.Client(host,Number(port), clientId);
        CollectorManage.client .onConnect = onConnect;
        var onConnect = function(frame) {
            console.log("success connect!");
            failcount = 0;
            CollectorManage.client .subscribe(destination);
        };
        CollectorManage.client .onMessageArrived = onMessageArrived;
        //消息到达  更新数据
        function onMessageArrived(message) {
            var collector_code  = $("#collector_selector").find("option:selected").val();
            var jsonDtd = JSON.parse(message.payloadString);
            var devices = jsonDtd.data.devices;
            var show_item;
            $.each(devices,function(index,item){
                if(item.id ==collector_code){
                    show_item = item;
                    $("#cur_airT").html(show_item.airT);
                    $("#cur_airH").html(show_item.airH);
                    $("#cur_soilT").html(show_item.soilT);
                    $("#cur_soilH").html(show_item.soilH);
                    $("#cur_lux").html(show_item.lux);
                    $("#cur_co2").html(show_item.co2);
                }
            });
        }
        CollectorManage.client.onConnectionLost = onConnectionLost;
        //连接中断
        function onConnectionLost(responseObject) {
            if (responseObject.errorCode !== 0) {
                failcount ++;
                if(failcount>=10) {

                    layer.msg("远程连接失败，请手动刷新！", function () {

                    });
                    return;
                }
                console.log(client.clientId + ": " + responseObject.errorCode + "\n");
            }
        }
        // 连接失败函数
        function onFailure(failure) {
            console.log("coonect fail "+failure.errorMessage);
            failcount ++;
            if(failcount>=10){
                layer.msg("远程连接失败，请手动刷新！", function () {
                });
                return;
            }
            CollectorManage.connect();

        }
        CollectorManage.connect =  function (){
           /* CollectorManage.client.disconnect();*/
            CollectorManage.client.connect({
                userName:'admin',
                password:'admin',
                onSuccess:onConnect,
                onFailure:onFailure
            });
        }


    }
    CollectorManage.client ;

    //继承基础控制器
    CollectorManage.prototype = new BaseController();


    //采集器首页
    CollectorManage.prototype.index = function () {
        this.list();
    };

    //采集终端列表
    CollectorManage.prototype.list = function () {

        var self = this ;
        //p判断请求
        //加载农场地
        var farmsDtd =$.qweb.ajaxGet(self.api.admin.farm.list,{onPage: false});
        var collectorDtd = $.qweb.ajaxGet(self.api.admin.collector.list ,$.qweb.getParams());
        var currenDtd =  $.qweb.ajaxGet(self.api.admin.collector.current,$.qweb.getParams());
        $.qweb.whenSuccess(farmsDtd,collectorDtd,currenDtd).done(function (farmsData,collectorDtd,currenDtd) {
            collectorDtd.data.farms = farmsData.data.places;
            collectorDtd.data.captureData = currenDtd.data.captureData;
            self.display(self.tpl.collector.list,collectorDtd).done(function() {

                bindEvents();
                //第一次自动绑定第一个采集器
               /* $("#collector_selector").trigger("change");*/
                $("#q-clt-farm").trigger("change");
                CollectorManage.connect();
            });
        });

        /*self.display(self.tpl.collector.list,{}).done(function() {
            bindEvents();
        });*/
        //事件绑定
        var bindEvents = function() {
            //筛选事件
            $("#q-clt-farm").on('change',function(){
                var deviceCode =$("#collector_selector").find("option:selected").attr("deviceCode");
                $.qweb.sendRedirectTo("#CollectorManage/list?placeCode=" + $(this).val()+"&deviceCode="+deviceCode);
            });
            $("#collector_selector").on('change',function(){
                var deviceCode = $(this).find("option:selected").attr("deviceCode");
                $.qweb.sendRedirectTo("#CollectorManage/list?placeCode=" + $("#q-clt-farm").val()+"&deviceCode="+deviceCode);
              /*  var currenDtd =  $.qweb.ajaxGet(self.api.admin.collector.current,"deviceCode="+deviceCode).done(function(data){
                    //初始化所有值
                   /!* $("#cur_airT").html("loading");
                    $("#cur_airH").html("loading");
                    $("#cur_soilT").html("loading");
                    $("#cur_soilH").html("loading");
                    $("#cur_lux").html("loading");
                    $("#cur_co2").html("loading");*!/
                });*/
                charshow();

            });
            //返回按钮
            $('#back_logo').on('click',function(){
                /*history.back();*/
                $.qweb.sendRedirectTo("#");

            });
           /* //-----------------------------------------采集器监听-----------------
            //采集器实时监听初始化
            var client, destination="SATA/GATHERREALTIME";
            var host= '103.212.32.66';
            var port = '61614';
            var clientId ='pc-client123'+Math.floor(Math.random()*10);
            client = new Messaging.Client(host,Number(port), clientId);
            client.onConnect = onConnect;
            var onConnect = function(frame) {
                console.log("success connect!")
                client.subscribe(destination);
            };
            client.onMessageArrived = onMessageArrived;
            //消息到达  更新数据
            function onMessageArrived(message) {
                var collector_code  = $("#collector_selector").find("option:selected").val();
               /!* console.log(collector_code);*!/
                var jsonDtd = JSON.parse(message.payloadString);
              /!*  console.log(message.payloadString);*!/
                var devices = jsonDtd.data.devices;
                var show_item;
                $.each(devices,function(index,item){
                    if(item.id ==collector_code){
                        show_item = item;
                        $("#cur_airT").html(show_item.airT);
                        $("#cur_airH").html(show_item.airH);
                        $("#cur_soilT").html(show_item.soilT);
                        $("#cur_soilH").html(show_item.soilH);
                        $("#cur_lux").html(show_item.lux);
                        $("#cur_co2").html(show_item.co2);
                    }
                });
            }
            client.onConnectionLost = onConnectionLost;
            //连接中断
            function onConnectionLost(responseObject) {
                if (responseObject.errorCode !== 0) {
                    layer.msg("远程连接失败，正在自动刷新！", function () {
                        self.list();
                    });
                    console.log(client.clientId + ": " + responseObject.errorCode + "\n");
                }
            }
            // 连接失败函数
            function onFailure(failure) {
                console.log("coonect fail "+failure.errorMessage);
                layer.msg("远程连接失败，正在自动刷新！", function () {
                    self.list();
                });
            }
            client.connect({
                userName:'admin',
                password:'admin',
                onSuccess:onConnect,
                onFailure:onFailure
            });
            */
            //------------------------------------------chart---------------------------------
            //日历组件
            var currYear = (new Date()).getFullYear();
            var opt={};
            opt.date = {preset : 'date'};
            opt.datetime = {preset : 'datetime'};
            opt.time = {preset : 'time'};
            opt.default = {
                theme: 'android-ics light', //皮肤样式
                display: 'modal', //显示方式
                mode: 'scroller', //日期选择模式
                dateFormat: 'yyyy-mm-dd',
                lang: 'zh',
                showNow: true,
                nowText: "今天",
                startYear: currYear - 100, //开始年份
                endYear: currYear + 100 //结束年份
            };
            $("#startDate").mobiscroll($.extend(opt['date'], opt['default']));
            $("#endtDate").mobiscroll($.extend(opt['date'], opt['default']));
            //默认时间
            var d = new Date();
            var date = d.getFullYear()+'-'+(d.getMonth()+1)+'-'+ d.getDate();
            $("#startDate").val(date);
            $("#endtDate").val(date);

            //图表响应事件
            $("#startDate").on('change',function () {
                charshow();
            })
            $("#endtDate").on('change' ,function () {
                charshow();
            })
            $("#show-obj").on("change",function(){   //展示参数（温度，湿度，光照）按钮
                charshow();
            });
            $("#t-radio").change(function () { //单选按钮
                charshow();
            });


            var myChart = echarts.init(document.getElementById('chartdata')); //不能用$()
           /* var myChart = echarts.init($('#chartdata'));*/
            myChart.setOption(defoption);
            //图表渲染处理
            var charshow = function () {
                //传感器id
                var deviceCode =$("#collector_selector").find("option:selected").attr("deviceCode");
                //选择对象
                var show_obj =  $('#show-obj').find("option:selected").val();
                var show_name = $('#show-obj').find("option:selected").html();
                //1按小时，2按天
                var timer_val =$("#t-radio option:checked").val();
                var show_timer = timer_val==1?"按小时":"按天";
                //开始结束时间
                var beginTime = $("#startDate").val()+" 00:00:00";
                var endTime = $("#endtDate").val()+" 23:59:59";
                if(beginTime.length<=0 || endTime.length<=0){
                    layer.msg("请选择一个时间范围!");
                }
                var param ={
                    'deviceCode':deviceCode,
                    'beginTime':beginTime,
                    'endTime':endTime,
                }

                var url = timer_val==1?self.api.admin.collector.listByHour:self.api.admin.collector.listByDate;
                console.log(url)
                var danwei ;
                $.qweb.ajaxGet(url,param).done(function (data) {
                    console.log(data.data.captureDataHourList);
                    var yAxis_format ;
                    if(show_obj=='airT' || show_obj== 'soilT' ) {yAxis_format ='{value}'; danwei="°C"}
                    else if(show_obj=='airH' || show_obj== 'soilH') {yAxis_format ='{value}';danwei="RH";}
                    else if(show_obj=='lux') {yAxis_format ='{value}';danwei="lux";}
                    else if(show_obj=='co2') {yAxis_format ='{value}';danwei="ppm";}
                    var xAxis_data = new Array() ;
                    var searies_data = new Array();
                    var list ;
                    if (timer_val ==1){
                        list = data.data.captureDataHourList;
                    }else{
                        list = data.data.captureDataDayList;
                    }
                    $.each( list,function(index,item) {
                        //获取x坐标时间点
                        if(timer_val ==1){
                            var timepoint = item.timePoint;
                            xAxis_data.push(timepoint);
                        }else{
                            var timepoint = item.timePoint.split(" ")[0];
                            xAxis_data.push(timepoint);
                        }
                        //获取y坐标
                        searies_data.push(item[show_obj]);

                    });


                    var dataopt={
                        title:{
                            text:show_name,
                            subtext:"变化情况（"+show_timer+",单位："+danwei+")",
                        },
                        legend:{
                            data:[show_name],
                        },
                        yAxis: {
                            axisLabel: {
                                formatter: yAxis_format,
                            }
                        },
                        xAxis: {
                            type: 'category',
                            boundaryGap: false,
                            data: xAxis_data,
                        },
                        series: [
                            {
                                name: show_name,
                                type: 'line',
                                data: searies_data,
                            }
                        ]
                    } ; //dataopt
                    dataopt =$.extend(defoption,dataopt);
                    myChart.setOption(dataopt);

                });//  $.qweb.ajaxGet(url,param)
            }// chartshow

            //-------------defaultopt-----

            //图表


        }//bind
        var defoption = {
            title: {
                text: '空气温度',
                subtext: '一天内气温变化',
                left: 'center',
                top:"-5px",
            },
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data:['空气温度'],
                left:"20px",
                top:"5px"
            },
            toolbox: {
                show: true,
                feature: {
                    /*dataZoom: {
                        yAxisIndex: 'none'
                    },
                    dataView: {readOnly: false},*/
                    magicType: {type: ['line', 'bar']},
                    restore: {},
                    saveAsImage: {}
                }
            },
            xAxis:  {
                type: 'category',
                boundaryGap: false,
                data:['0:01','4:00','8:00','12:00','16:00','18:00','20:00','24:00']
            },
            yAxis: {
                type: 'value',
                axisLabel: {
                    formatter: '{value} °C'
                }
            },
            /*visualMap: {
                top: 20,
                right: 10,
                pieces: [{
                    gt: 0,
                    lte: 10,
                    color: '#FF0000 '
                }, {
                    gt: 10,
                    lte: 30,
                    color: '#00CC00'
                }, {
                    gt: 30,
                    lte: 100,
                    color: '#FF0000'
                }, ],
            },*/
            series: [
                {
                    name:'空气温度',
                    type:'line',
                    data:[11, 15, 25, 33, 28, 16, 8,2],
                    itemStyle:{
                        normal: {
                            color:"#FFCC00",
                            label : {
                                show: true
                            }
                        }
                    },
                    markPoint: {
                        symbol:"pin",
                        symbolSize:40,
                        itemStyle:{
                            normal: {
                                color:"#009999",
                            }
                        },
                        data: [
                            {type: 'max', name: '最大值'},
                            {type: 'min', name: '最小值'}
                        ]
                    },
                    markLine: {
                        lineStyle:{
                            normal:{
                                color:"#00CC00"
                            }
                        },
                        data: [
                            {type: 'average', name: '平均值'}
                        ]
                    }
                },

            ]
        };//defoption



    };
    CollectorManage.prototype.search = function () {
        self = this;
        $.qweb.ajaxGet(self.api.admin.collector.listName,{}).done(function(data ){
            var dataArray= data.data.captureDevicesName;
            console.log(dataArray)
            /*$.each(data,function(index,item){
                dataArray.push(item.)
            });*/
            self.display(self.tpl.common.search,{}).done(function() {
                bindEvents(dataArray);
            });
        });

        var bindEvents  = function(data){
            //返回按钮
            $('#back_logo').on('click',function(){
                history.back();
            });
            //搜索按钮 serach
            $("#search_text").on("click",function(){
               var search = $("#search_input").val()
                $.qweb.sendRedirectTo("#CollectorManage/list?search="+search);
            });
            //搜索框自动提示
            $("#search_input").on('keyup',function(){
                var key = $(this).val();
                key = $.trim(key);
                $("#tipsul li").remove();
                if(key == null || key == undefined ||key==""){
                    $("#tipsul").attr("style","display:block");
                    return;
                }
                var count = 0
                $.each(data, function(index,item){
                    if(item.indexOf(key)>=0){
                        count++;
                        if(count<5) {
                            var li_item = $("<li>" + item + "</li>");
                            li_item.on("click",function(){
                                $("#search_input").val(item);
                            });
                            $("#tipsul").append(li_item);

                        }
                    }
                });
                $("#tipsul").attr("style","display:block");

            });
        }
    };






    return CollectorManage;
});