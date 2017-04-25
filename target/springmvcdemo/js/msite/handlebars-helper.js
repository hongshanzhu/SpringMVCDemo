define(['handlebars','config','md5'],function(Handlebars, config, md5){

	//注册加法函数
	Handlebars.registerHelper('add', function(v1, v2) {
		return v1 + v2;
	});

	Handlebars.registerHelper('sub', function(v1, v2) {
		return v1 - v2;
	});

	Handlebars.registerHelper('equal', function(v1, v2, options) {

		if (v1 == v2) {
			return options.fn(this);
		}

		return options.inverse(this);
	});

	Handlebars.registerHelper('gt', function(v1, v2, options) {

		if (v1 > v2) {
			return options.fn(this);
		}

		return options.inverse(this);
	});

	Handlebars.registerHelper('lt', function(v1, v2, options) {

		if (v1 < v2) {
			return options.fn(this);
		}

		return options.inverse(this);
	});

	Handlebars.registerHelper('notEqual', function(v1, v2, options) {

		if (v1 != v2) {
			return options.fn(this);
		}

		return options.inverse(this);
	});

	Handlebars.registerHelper('timestamp', function(timestamp) {
		if(!timestamp){
			return null ;
		}
		Date.prototype.format = function(fmt)
		{ //author: meizz
			var o = {
				"M+" : this.getMonth()+1,                 //月份
				"d+" : this.getDate(),                    //日
				"h+" : this.getHours(),                   //小时
				"m+" : this.getMinutes(),                 //分
				"s+" : this.getSeconds(),                 //秒
				"q+" : Math.floor((this.getMonth()+3)/3), //季度
				"S"  : this.getMilliseconds()             //毫秒
			};
			if(/(y+)/.test(fmt))
				fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
			for(var k in o)
				if(new RegExp("("+ k +")").test(fmt))
					fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
			return fmt;
		}

		return new Date(parseInt(timestamp)).format("yyyy-MM-dd hh:mm:ss") ;
	});

	Handlebars.registerHelper('getPageUrl',function(pageNum,pageSize){
		var obj = $.qweb.getParams();

		var pObj = {
			pageNum:pageNum,
			pageSize:pageSize
		}

		obj = $.extend(obj,pObj);

		var str = "" ;

		for(var key in obj){
			str=str + "&" + key + "=" + obj[key] ;
		}

		str = str.substr(1,str.length);

		var url = window.location.origin + window.location.pathname + "#" + $.qweb.getHashObject()['operation'] + "?" + str ;

		return url ;
	});

	Handlebars.registerHelper('getCurrentUrl',function(str){

		var o = eval("(" + str + ")");

		var obj = $.qweb.getParams();

		obj = $.extend(obj,o);

		var str = "" ;

		for(var key in obj){
			str=str + "&" + key + "=" + obj[key] ;
		}

		str = str.substr(1,str.length);

		var url = window.location.origin + window.location.pathname + "#" + $.qweb.getHashObject()['operation'] + "?" + str ;

		return url ;
	});

	Handlebars.registerHelper('getParam',function(name){
		var obj = $.qweb.getParams();
		try{
			if(obj[name]){

				return decodeURIComponent(obj[name]);
			}
		}catch(e){

		}

	});

	Handlebars.registerHelper('indexOf',function(array,e,options){

		if (array.indexOf(e) != -1) {
			return options.fn(this);
		}

		return options.inverse(this);

	});


	Handlebars.registerHelper('ifPlus',function(e,options){

		if (eval(e)) {
			return options.fn(this);
		}

		return options.inverse(this);

	});


	Handlebars.registerHelper('ldi',function(e){

		return !(eval(e));

	});

	Handlebars.registerHelper('getPath',function(path){

		return __ROOT__  + path;

	});


	//获取当前时间戳
	Handlebars.registerHelper('currentTimeStamp',function(){

		return new Date().getTime();

	});

	//从json中去
	Handlebars.registerHelper('json',function(e,key){

		if(!e){
			return {};
		}


		try{
			var json  = eval("(" + e + ")");
		}catch (e){

		}



		var keys = key.split(".");

		for(var i = 0 ; i < keys.length; i++){

			 if(!json){
				 break ;
			 }

			 json = json[keys[i]];
		}

		return json

	});


	//获取当前时间戳
	Handlebars.registerHelper('currentTimeStamp',function(){

		return new Date().getTime();

	});

	//计算年龄
	Handlebars.registerHelper('age',function(e){
		var birth = new Date();
		birth.setTime(e);
		var current = new Date();
		var age = current.getYear() - birth.getYear() ;

		return age ;

	});

	//返回格式“2015-04-13”
	Handlebars.registerHelper('timestamp1', function(timestamp) {
		if(!timestamp){
			return null ;
		}
		Date.prototype.format = function(fmt)
		{ //author: meizz
			var o = {
				"M+" : this.getMonth()+1,                 //月份
				"d+" : this.getDate(),                    //日
				"h+" : this.getHours(),                   //小时
				"m+" : this.getMinutes(),                 //分
				"s+" : this.getSeconds(),                 //秒
				"q+" : Math.floor((this.getMonth()+3)/3), //季度
				"S"  : this.getMilliseconds()             //毫秒
			};
			if(/(y+)/.test(fmt))
				fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
			for(var k in o)
				if(new RegExp("("+ k +")").test(fmt))
					fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
			return fmt;
		}

		return new Date(parseInt(timestamp)).format("yyyy-MM-dd");
	});


	//返回格式“2015-04-13”
	Handlebars.registerHelper('dateFormat', function(timestamp,format) {
		if(!timestamp){
			return null ;
		}
		Date.prototype.format = function(fmt)
		{ //author: meizz
			var o = {
				"M+" : this.getMonth()+1,                 //月份
				"d+" : this.getDate(),                    //日
				"h+" : this.getHours(),                   //小时
				"m+" : this.getMinutes(),                 //分
				"s+" : this.getSeconds(),                 //秒
				"q+" : Math.floor((this.getMonth()+3)/3), //季度
				"S"  : this.getMilliseconds()             //毫秒
			};
			if(/(y+)/.test(fmt))
				fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
			for(var k in o)
				if(new RegExp("("+ k +")").test(fmt))
					fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
			return fmt;
		};

		return new Date(parseInt(timestamp)).format(format);
	});



	Handlebars.registerHelper('default',function(value,defValue){

		return value ? value : defValue ;

	});


	//或者配置文件里的配置
	Handlebars.registerHelper('config',function(name){

		//配置文件里可以对象与函数两种配置
		if('function' == typeof config[name] ){
			return config[name]();
		}else{
			return config[name] ;
		}

	});

	Handlebars.registerHelper('getHashObject',function(name){

		return $.qweb.getHashObject()[name] ;

	});



	/**
	 * md5加密
	 */
	Handlebars.registerHelper('md5',function(v1){

		return md5(v1);
	});

	/**
	 * session保存
	 */
	Handlebars.registerHelper('session',function(v1){

		var keys = v1.split(".");

		var session = $.qweb.session(keys[0]);

		for(var i = 1 ; i < keys.length; i++){

			if(!session){
				break ;
			}

			session = session[keys[i]];
		}

		return session ;
	});






	return Handlebars ;


})