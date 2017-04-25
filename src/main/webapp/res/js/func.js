var Func = {
	batchCheck: function(cbxName,checkFlag){
		$("input[name='"+cbxName+"']").attr("checked", checkFlag); 
	},
	getCheckedValues: function(cbxName){
		var ret = new Array();
		$("input[name='"+cbxName+"']:checked").each(function(i,n){
			ret[ret.length] = n.value;
		});
		return ret;
	},
	reloadPage: function(useReload){
		if(useReload){

			location.reload();
		}else{
			var h = location.href;
			location.href = h;
		}
	},
	urlAppendSuffix: function(src,ext){
		var srcExt1=src.substring(0,src.lastIndexOf("."));
		var srcExt2=src.substring(src.lastIndexOf("."));
		return srcExt1+"_"+ext+srcExt2;
	},
	urlReplaceParam: function(src,paramName,paramValue){
		var reg=new RegExp("[&\\?]"+paramName+"=[^&]*","gmi");
		var ret = src.replace(reg,"");
		if(ret.indexOf("?")==-1){
			ret += "?"+escape(paramName)+"="+escape(paramValue);
		}else{
			ret += "&"+escape(paramName)+"="+escape(paramValue);
		}
		return ret;
	},
	parseParam: function(o){
		var arr = new Array();
		$.each(o,function(n,v){
			if($.isArray(v)){
				$.each(v,function(n1,v1){
					arr[arr.length] = n+"="+escape(v1);
				});
			}else{
				arr[arr.length] = n+"="+escape(v);
			}
		});
		return arr.join("&");
	},
	clearInputTips: function(input,tips){
		if(input.value == tips){
			input.value = "";
		}
	},
	addFavorite: function()
	{
	   if (document.all)
	   {
	      window.external.addFavorite(window.location.href,document.title);
	   }
	   else if (window.sidebar)
	   {
	      window.sidebar.addPanel(document.title,document.location.href,'');
	   }
	},
	replaceUrlParam: function (url, paramName, paramValue) {
		var pattern = new RegExp('(' + paramName + '=).*?(&|$)')
		var newUrl = url
		if (url.search(pattern) >= 0) {
			newUrl = url.replace(pattern, '$1' + paramValue + '$2');
		}
		else {
			newUrl = newUrl + (newUrl.indexOf('?') > 0 ? '&' : '?') + paramName + '=' + paramValue
		}
		return newUrl
	}
};