<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>农业4.0管理平台</title>
    <script id="load-script" module="Home" method="index" src="/js/msite/require.js" data-main="js/app"></script>

    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="config"
            src="/js/msite/config.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="ctrl-loader"
            src="/js/msite/ctrl-loader.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
            data-requiremodule="lib/requirejs/css" src="/js/msite/css.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="qweb/main"
            src="/js/msite/main.js"></script>
    <link type="text/css" rel="stylesheet" href="/js/msite/style.css">
    <link type="text/css" rel="stylesheet" href="/js/msite/font-awesome.min.css">
    <script src="/res/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
            data-requiremodule="jquery-slim-scroll" src="/js/msite/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="init"
            src="/js/msite/init.js">
    </script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="base-ctrl"
            src="/js/msite/base-ctrl.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="handlebars"
            src="/js/msite/handlebars.js"></script>
    <link type="text/css" rel="stylesheet" href="/js/msite/layer.css">
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="hbs-helper"
            src="/js/msite/handlebars-helper.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="md5"
            src="/js/msite/md5.min.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="layer"
            src="/js/msite/layer.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="ctrl/home"
            src="/js/msite/home.js"></script>

    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="mqtt"
            src="/js/msite/mqttws31.js"></script>
    <link rel="stylesheet" href="/css/tinyselect-m.css">
    <script src="/js/tinyselect.js"></script>
    <script src="/res/js/func.js"></script>
    <script>
        // <!-----------------2016-12-14 14:38:41.169---------------------->
        !(function (document, undefined) {
            if ("undefined" == typeof SOTool)var SOTool = {}, SOTool = {
                PluginStack: {}, JsList: {}, shareObj: function (a, b) {
                    "undefined" == typeof window.CloudSdkPlugin && (window.CloudSdkPlugin = {});
                    window.CloudSdkPlugin.hasOwnProperty("STK") || (window.CloudSdkPlugin.STK = {});
                    window.CloudSdkPlugin.STK[a] = b
                }, getObj: function (a) {
                    "undefined" == typeof window.CloudSdkPlugin && (window.CloudSdkPlugin = {});
                    if (!window.CloudSdkPlugin.hasOwnProperty("STK"))throw Error("no " + a + " Obj");
                    return window.CloudSdkPlugin.STK[a]
                }, creatPlugin: function (a,
                                          b) {
                    "undefined" == typeof window.CloudSdkPlugin && (window.CloudSdkPlugin = {});
                    window.CloudSdkPlugin[a] = b
                }, getPlugin: function (a, b) {
                    if ("STK" == a)throw Error(a + " is not support");
                    window.CloudSdkPlugin && "undefined" != typeof window.CloudSdkPlugin[a] ? b && b(window.CloudSdkPlugin[a]) : SOTool.JsList.hasOwnProperty(SOTool.PluginStack[a]) ? b && SOTool.JsList[SOTool.PluginStack[a]].push(b) : (SOTool.JsList[SOTool.PluginStack[a]] = [], b && SOTool.JsList[SOTool.PluginStack[a]].push(b), videoSdkTool.getJS(SOTool.PluginStack[a], function () {
                        var c =
                                videoSdkTool.clone(SOTool.JsList[SOTool.PluginStack[a]]);
                        delete SOTool.JsList[SOTool.PluginStack[a]];
                        for (var b = 0; b < c.length; b++) {
                            var f = c[b];
                            f && f(window.CloudSdkPlugin[a])
                        }
                    }, function () {
                        var c = videoSdkTool.clone(SOTool.JsList[SOTool.PluginStack[a]]);
                        delete SOTool.JsList[SOTool.PluginStack[a]];
                        for (var b = 0; b < c.length; b++) {
                            var f = c[b];
                            f && f(null)
                        }
                    }, this, "utf-8"))
                }, setPluginStack: function (a, b) {
                    if (videoSdkTool.isArray(a))for (var c = 0; c < a.length; c++)arguments.callee(a[c], b); else if (a.hasOwnProperty("name") &&
                            a.hasOwnProperty("url"))SOTool.PluginStack[a.name] = a.url, "http" != a.url.substr(0, 4) && (SOTool.PluginStack[a.name] = "https:" == window.location.protocol ? window.location.protocol + SOTool.PluginStack[a.name].replace(/{domain}/g, "s.yuntv.letv.com") : "http:" + SOTool.PluginStack[a.name].replace(/{domain}/g, "yuntv.letv.com"), SOTool.PluginStack[a.name] = SOTool.PluginStack[a.name].replace(/{LANG}/g, b)); else throw Error(a + "must has name and url");
                }, preload: function () {
                    for (var a = arguments, b = 0; b < a.length; b++)SOTool.getPlugin(a[b])
                }
            };
            SOTool.shareObj("common.SOTool", SOTool);
            var Message = function () {
                return {NoSupportPano: 0, Drm: 1, NoStart: 2, INTERRUPT: 3, END: 4}
            }();
            SOTool.shareObj("model.Message", Message);
            var DomainTool = function () {
                function a(a, d) {
                    b.hasOwnProperty(a) && b[a].hasOwnProperty(d) && (a = b[a][d]);
                    return a
                }

                var b = {
                    "api.mms.lecloud.com": {en_US: "api.usmms.lecloud.com"},
                    "apple.www.letv.com": {en_US: "apple.us.www.letv.com"}
                };
                return {
                    getDomain: function (b, d) {
                        var f = b, f = "";
                        if (-1 != b.indexOf("http://")) {
                            for (var f = b.substring(7), f = f.split(""), e = "", g = 0; g < f.length; g++)if ("/" != f[g])e += f[g]; else break;
                            f = b.replace(e, a(e, d))
                        } else f = a(b, d);
                        return f
                    }
                }
            }();
            SOTool.shareObj("common.DomainTool", DomainTool);
            var LangTool = function () {
                var a = !1, b;
                return {
                    loadLang: a, toMessage: function (c, d, f) {
                        if (a)return b.hasOwnProperty(f) ? {message: b[f]} : {message: f};
                        SOTool.getPlugin("lang.message.plugin." + d, function (f) {
                            f && (b = f, a = !0);
                            c()
                        });
                        return !1
                    }, ms: b
                }
            }();
            SOTool.shareObj("common.LangTool", LangTool);
            var videoSdkTool = function () {
                function a(a) {
                    for (var b = [{name: "ie", test: /msie/}, {name: "opera", test: /opera/}, {
                        name: "firefox",
                        test: /firefox/
                    }, {name: "safari", test: /safari.*(?!chrome)/}, {name: "chrome", test: /chrome/}, {
                        name: "wph",
                        test: /windows phone/
                    }, {name: "ps", test: /playstation/}, {name: "uc", test: /ucbrowser|ucweb/}, {
                        name: "ps",
                        test: /playstation/
                    }, {name: "xiaomi", test: /xiaomi/}, {name: "qq", test: /qqbrowser/}, {
                        name: "weixin",
                        test: /micromessenger/
                    }, {name: "360", test: /360browser/}, {name: "baidu", test: /baidu/}, {
                        name: "qqwebview",
                        test: / qq/
                    }, {name: "sougou", test: /sougou/}, {name: "liebao", test: /liebaofast/}, {
                        name: "letv",
                        test: /eui browser/
                    }], c = "un", d = 0; d < b.length; d++) {
                        var k = b[d];
                        k.test.test(a) && (c = k.name)
                    }
                    return c
                }

                function b(a) {
                    var b = "Win32" == navigator.platform || "Windows" == navigator.platform, c = "Mac68K" == navigator.platform || "MacPPC" == navigator.platform || "Macintosh" == navigator.platform || "MacIntel" == navigator.platform;
                    if (c)return "mac";
                    if (b) {
                        if (-1 < a.indexOf("windows nt 5.0") || -1 < a.indexOf("windows 2000"))return "win2000";
                        if (-1 < a.indexOf("windows nt 5.1") ||
                                -1 < a.indexOf("windows XP"))return "winXP";
                        if (-1 < a.indexOf("windows nt 5.2") || -1 < a.indexOf("windows 2003"))return "win2003";
                        if (-1 < a.indexOf("windows nt 6.0") || -1 < a.indexOf("windows vista"))return "winVista";
                        if (-1 < a.indexOf("windows nt 6.1") || -1 < a.indexOf("windows 7"))return "win7"
                    }
                    return /android/.test(a) ? "android" : a.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/) || a.match(/iphone/) || a.match(/ipad/) ? "ios" : "X11" != navigator.platform || b || c ? -1 < String(navigator.platform).indexOf("Linux") ? "linux" : "un" : "unix"
                }

                var c = navigator.userAgent.toLowerCase(),
                        d = {br: "", device: "", ver: "", params: null, os: ""};
                return {
                    br: d, getOs: function () {
                        "" == d.os && (d.os = b(c));
                        return d.os
                    }, getUrlParams: function (a) {
                        if (null == d.params) {
                            var b = window.location.search, c = {};
                            if (-1 != b.indexOf("?"))for (var b = b.substr(1).split("&"), h = 0; h < b.length; h++) {
                                var k = b[h].substr(0, b[h].indexOf("=")), l = b[h].substr(b[h].indexOf("=") + 1);
                                c[k] = l
                            }
                            d.params = c
                        }
                        return d.params && d.params.hasOwnProperty(a) ? d.params[a] : !1
                    }, getDevice: function () {
                        if ("" == d.device) {
                            var a;
                            a:{
                                a = [{name: "wph", test: /windows phone/}, {
                                    name: "ipad",
                                    test: /ipad/
                                }, {name: "iphone", test: /iphone/}, {
                                    name: "androidPad",
                                    test: /(?!.*mobile)android/
                                }, {name: "androidPhone", test: /android.*mobile/}, {
                                    name: "android",
                                    test: /android/
                                }, {name: "pc", test: /windows/}, {name: "mac", test: /macintosh|mac os x/}];
                                for (var b = 0; b < a.length; b++) {
                                    var g = a[b];
                                    if (g.test.test(c)) {
                                        a = g.name;
                                        break a
                                    }
                                }
                                a = "un"
                            }
                            d.device = a
                        }
                        return d.device
                    }, getBrowser: function () {
                        "" == d.br && (d.br = a(c));
                        return d.br
                    }, getBrowserVersion: function () {
                        "" == d.br && (d.br = a(c));
                        if ("" == d.ver) {
                            var b = {}, e;
                            (e = c.match(/msie ([\d.]+)/)) ?
                                    b.msie = e[1] : (e = c.match(/firefox\/([\d.]+)/)) ? b.firefox = e[1] : (e = c.match(/360browser/)) ? b.b360 = e[1] ? e[1] : "-" : (e = c.match(/qqbrowser\/([\d.]+)/)) ? b.bqq = e[1] : (e = c.match(/ucbrowser\/([\d.]+)/)) ? b.buc = e[1] : (e = c.match(/baidubrowser\/([\d.]+)/)) ? b.bbaidu = e[1] : (e = c.match(/sogoumobilebrowser\/([\d.]+)/)) ? b.bsgm = e[1] : (e = c.match(/liebaofast\/([\d.]+)/)) ? b.blbfast = e[1] : (e = c.match(/mb2345browser\/([\d.]+)/)) ? b.b2345 = e[1] : (e = c.match(/4g explorer\/([\d.]+)/)) ? b.b4g = e[1] : (e = c.match(/huohoubrowser\/([\d.]+)/)) ? b.bhuohou =
                                    e[1] : (e = c.match(/maxthon[\/ ]([\d.]+)/)) ? b.maxthon = e[1] : (e = c.match(/(opera)|(opr)\/([\d.]+)/)) ? b.opera = e[3] : (e = c.match(/chrome\/([\d.]+)/)) ? b.chrome = e[1] : (e = c.match(/version\/([\d.]+).*safari/)) ? b.safari = e[1] : b.other = "-";
                            e = "";
                            for (var g in b)e = b[g];
                            d.ver = e
                        }
                        return d.br + d.ver
                    }, now: Date.now || function () {
                        return +new Date
                    }, getJS: function (b, a, c, d, k, l) {
                        if ("undefined" != typeof b) {
                            var m = document.head || document.getElementsByTagName("head")[0] || document.documentElement, n = document.createElement("script"), r;
                            n.type =
                                    "text/javascript";
                            k && (n.charset = k);
                            n.onload = n.onreadystatechange = function () {
                                n.readyState && "loaded" != n.readyState && "complete" != n.readyState || (n = n.onreadystatechange = n.onload = n.onerror = null, clearTimeout(r), "function" == typeof a && a.call(d))
                            };
                            n.onerror = function () {
                                n = n.onload = n.onreadystatechange = n.onerror = null;
                                clearTimeout(r);
                                "function" == typeof c && c.call(d)
                            };
                            n.src = b;
                            m.appendChild(n);
                            l || (l = 1E4);
                            r = setTimeout(function () {
                                clearTimeout(r);
                                "function" == typeof c && c()
                            }, l)
                        }
                    }, getJSON: function (b, a, c, d, k, l) {
                        var m = this.now(),
                                n = "letvcloud" + m + Math.floor(100 * Math.random()), r = "$1" + n + "$2", s = 0, p = 0, t = this, q, u = -1, v = document.head || document.getElementsByTagName("head")[0] || document.documentElement, w = this.urlToObj(b);
                        w.hasOwnProperty("callback") ? n = w.callback : (/_r=/i.test(b) || (b += "&callback=?"), b = b.replace(/(\=)\?(&|$)|\?\?/i, r));
                        d = d || 5E3;
                        var A = k || 2, B = l || 1E3;
                        window[n] = function (b) {
                            x();
                            window[n] = null;
                            u = -1;
                            a.call(this, b, {responseTime: t.now() - m, retryCount: s})
                        };
                        var x = function () {
                            clearTimeout(p);
                            q && q.parentNode && (v.removeChild(q), q.onload =
                                    q.onreadystatechange = null, q.onerror = null, q = void 0)
                        }, C = function () {
                            x();
                            s >= A ? (clearTimeout(p), window[n] = null, c && c.call(this, null, {
                                responseTime: t.now() - m,
                                retryCount: s,
                                error: u
                            })) : setTimeout(z, B)
                        }, z = function () {
                            x();
                            s++;
                            b = b.replace(/&_r=[\d|\?]+/i, "&_r=" + s);
                            q = document.createElement("script");
                            q.setAttribute("type", "text/javascript");
                            q.setAttribute("src", b);
                            q.setAttribute("charset", "utf-8");
                            q.onload = q.onreadystatechange = function (b) {
                                q.onload = q.onreadystatechange = null;
                                clearTimeout(p)
                            };
                            v.insertBefore(q, v.firstChild);
                            u = 1;
                            p = setTimeout(C, d)
                        };
                        z()
                    }, getJSONbyAjax: function (b, a, c, d, k, l) {
                        var m = this.now(), n = 0, r = this, s = -1, p;
                        d = d || 5E3;
                        var t = k || 2, q = l || 1E3, u = function () {
                            clearTimeout(0);
                            p && (p.onreadystatechange = null)
                        }, v = function () {
                            u();
                            n >= t ? (clearTimeout(0), c && c.call(this, null, {
                                responseTime: r.now() - m,
                                retryCount: n,
                                error: s
                            })) : setTimeout(w, q)
                        }, w = function () {
                            u();
                            n++;
                            p = new XMLHttpRequest;
                            p.timeout = d;
                            p.onreadystatechange = function (b) {
                                4 == p.readyState && (200 == p.status ? (b = p.responseText, u(), s = -1, a.call(this, b, {
                                    responseTime: r.now() - m,
                                    retryCount: n
                                })) :
                                        v())
                            };
                            p.ontimeout = v;
                            p.open("GET", b, !0);
                            p.send();
                            s = 1
                        };
                        w()
                    }, creatUuid: function () {
                        var b = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".split(""), a = [], c, d;
                        d = 16;
                        for (c = 0; 32 > c; c++)a[c] = b[0 | Math.random() * d];
                        return a.join("")
                    }, urlToObj: function (b) {
                        var a = {}, c = b;
                        -1 != b.indexOf("?") && (c = b.substr(1));
                        b = c.split("&");
                        for (c = 0; c < b.length; c++) {
                            var d = b[c].substr(0, b[c].indexOf("=")), k = b[c].substr(b[c].indexOf("=") + 1);
                            a[d] = k
                        }
                        return a
                    }, objectParseToString: function (b) {
                        if (null == b)return "";
                        var a = "", c = 0,
                                d;
                        for (d in b)a = 0 < c ? a + ("&" + d + "=" + b[d]) : a + (d + "=" + b[d]), c++;
                        return a
                    }, cookie: function (b, a, c) {
                        if ("undefined" != typeof a) {
                            c = c || {};
                            null === a && (a = "", c.expires = -1);
                            var d = "";
                            c.expires && ("number" == typeof c.expires || c.expires.toUTCString) && ("number" == typeof c.expires ? (d = new Date, d.setTime(d.getTime() + 864E5 * c.expires)) : d = c.expires, d = "; expires=" + d.toUTCString());
                            var k = c.path ? "; path=" + c.path : "", l = c.domain ? "; domain=" + c.domain : "";
                            c = c.secure ? "; secure" : "";
                            document.cookie = [b, "=", encodeURIComponent(a), d, k, l, c].join("")
                        } else {
                            a =
                                    null;
                            if (document.cookie && "" != document.cookie)for (c = document.cookie.split(";"), d = 0; d < c.length; d++)if (k = c[d], k.substring(0, b.length + 1) == b + "=") {
                                a = decodeURIComponent(k.substring(b.length + 1));
                                break
                            }
                            return a
                        }
                        return null
                    }, setLocal: function (b, a, c) {
                        "undefined" == typeof c && (c = !0);
                        if (window.localStorage)try {
                            localStorage.setItem(b, a)
                        } catch (d) {
                        }
                        c && this.cookie(b, a, c)
                    }, getLocal: function (b, a) {
                        "undefined" == typeof a && (a = !0);
                        if (window.localStorage)try {
                            if (localStorage.getItem(b))return localStorage.getItem(b)
                        } catch (c) {
                        }
                        return a ?
                                this.cookie(b) : -1
                    }, num2Time: function (b) {
                        var a;
                        a = 10 > parseInt(b / 60) ? "0" + parseInt(b / 60) + ":" : parseInt(b / 60) + ":";
                        b = 10 > parseInt(b % 60) ? "0" + parseInt(b % 60) + "" : parseInt(b % 60) + "";
                        return a + b
                    }, clone: function (b) {
                        var a, c, d;
                        if ("object" != typeof b || null === b)return b;
                        if (b instanceof Array)for (a = [], c = 0, d = b.length; c < d; c++)a[c] = "object" == typeof b[c] && null != b[c] ? arguments.callee(b[c]) : b[c]; else for (c in a = {}, b)a[c] = "object" == typeof b[c] && null != b[c] ? arguments.callee(b[c]) : b[c];
                        return a
                    }, isHttps: function () {
                        try {
                            return "https:" ==
                                    window.location.protocol
                        } catch (b) {
                        }
                        return !1
                    }, isArray: function (b) {
                        return "[object Array]" === Object.prototype.toString.call(b)
                    }, isFunction: function (b) {
                        return "[object Function]" === Object.prototype.toString.call(b)
                    }, addUrlParams: function (b, a) {
                        for (var c = 0; c < b.length; c++) {
                            var d = b[c], k;
                            for (k in a)-1 == d.indexOf("&" + k + "=") && -1 == d.indexOf("?" + k + "=") && (d = -1 != d.indexOf("?") ? d + ("&" + k + "=" + a[k]) : d + ("?" + k + "=" + a[k]));
                            b[c] = d
                        }
                    }, bindFun: function (b, a) {
                        return b.bind ? b.bind(a) : function () {
                            return b.apply(a, arguments)
                        }
                    }, split: function (b,
                                        a, c) {
                        b = b.split(a);
                        var d = [];
                        if ("undefined" == typeof c || c >= b.length)return b;
                        for (; d.length < c - 1;)d.push(b[0]), b.shift();
                        d[c - 1] = b.join(a);
                        return d
                    }
                }
            }();
            SOTool.shareObj("common.videoSdkTool", videoSdkTool);
            videoSdkTool.checkPano = function () {
                try {
                    var a = document.createElement("canvas");
                    if (window.WebGLRenderingContext && (a.getContext("webgl") || a.getContext("experimental-webgl")))switch (videoSdkTool.getDevice()) {
                        case "androidPad":
                        case "androidPhone":
                        case "android":
                            if ("chrome" == videoSdkTool.getBrowser() || "firefox" == videoSdkTool.getBrowser())return !0;
                            break;
                        case "pc":
                            return !0
                    }
                } catch (b) {
                }
                return !1
            };
            SOTool.shareObj("common.videoSdkTool", videoSdkTool);
            var WIN = window, DC = document, ApiList = "playNewId getVideoSetting getVideoTime pauseVideo resumeVideo seekTo replayVideo closeVideo setVolume shutDown startUp getBufferPercent setDefinition getDefinition getDefaultDefinition getDefinitionList getDefList setVideoPercent getVideoPercent setVideoScale getVideoScale resetVideoScale fullVideoScale setVideoRect getLoadPercent getDownloadSpeed getPlayRecord getPlayState setVideoColor getVideoColor getVersion setAutoReplay feedback getLog getServerTime setTipInfo setPlayerInfo setHorseRaceLampInfo barrageInput barrageStop barrageStart barrageResume barragePause callFlash".split(" "), BaseCode =
            {
                decode: function (a) {
                    var b, c, d, f, e, g = 0, h = 0;
                    f = "";
                    var k = [];
                    if (!a)return a;
                    a += "";
                    do b = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".indexOf(a.charAt(g++)), c = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".indexOf(a.charAt(g++)), f = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".indexOf(a.charAt(g++)), e = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".indexOf(a.charAt(g++)), d = b << 18 | c << 12 | f << 6 | e, b = d >> 16 & 255, c = d >> 8 & 255, d &= 255,
                            64 == f ? k[h++] = String.fromCharCode(b) : 64 == e ? k[h++] = String.fromCharCode(b, c) : k[h++] = String.fromCharCode(b, c, d); while (g < a.length);
                    return f = k.join("")
                }, encode: function (a) {
                var b, c, d, f, e = 0, g = 0, h = "", h = [];
                if (!a)return a;
                a = this.utf8_encode(a + "");
                do b = a.charCodeAt(e++), c = a.charCodeAt(e++), d = a.charCodeAt(e++), f = b << 16 | c << 8 | d, b = f >> 18 & 63, c = f >> 12 & 63, d = f >> 6 & 63, f &= 63, h[g++] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(b) + "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(c) +
                        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(d) + "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(f); while (e < a.length);
                h = h.join("");
                switch (a.length % 3) {
                    case 1:
                        h = h.slice(0, -2) + "==";
                        break;
                    case 2:
                        h = h.slice(0, -1) + "="
                }
                return h
            }, utf8to16: function (a) {
                var b, c, d, f, e, g;
                b = "";
                d = a.length;
                for (c = 0; c < d;)switch (f = a.charCodeAt(c++), f >> 4) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                        b += a.charAt(c - 1);
                        break;
                    case 12:
                    case 13:
                        e = a.charCodeAt(c++);
                        b += String.fromCharCode((f &
                                31) << 6 | e & 63);
                        break;
                    case 14:
                        e = a.charCodeAt(c++), g = a.charCodeAt(c++), b += String.fromCharCode((f & 15) << 12 | (e & 63) << 6 | (g & 63) << 0)
                }
                return b
            }
            }, MD5 = function () {
                function a(b, a, c, d, l, m) {
                    b = f(f(a, b), f(d, m));
                    return f(b << l | b >>> 32 - l, c)
                }

                function b(b, c, d, f, l, m, n) {
                    return a(c & d | ~c & f, b, c, l, m, n)
                }

                function c(b, c, d, f, l, m, n) {
                    return a(c & f | d & ~f, b, c, l, m, n)
                }

                function d(b, c, d, f, l, m, n) {
                    return a(d ^ (c | ~f), b, c, l, m, n)
                }

                function f(b, a) {
                    var c = (b & 65535) + (a & 65535);
                    return (b >> 16) + (a >> 16) + (c >> 16) << 16 | c & 65535
                }

                return {
                    hash: function (e) {
                        for (var g = [],
                                     h = 0; h < 8 * e.length; h += 8)g[h >> 5] |= (e.charCodeAt(h / 8) & 255) << h % 32;
                        e = 8 * e.length;
                        g[e >> 5] |= 128 << e % 32;
                        g[(e + 64 >>> 9 << 4) + 14] = e;
                        e = 1732584193;
                        for (var h = -271733879, k = -1732584194, l = 271733878, m = 0; m < g.length; m += 16) {
                            var n = e, r = h, s = k, p = l;
                            e = b(e, h, k, l, g[m + 0], 7, -680876936);
                            l = b(l, e, h, k, g[m + 1], 12, -389564586);
                            k = b(k, l, e, h, g[m + 2], 17, 606105819);
                            h = b(h, k, l, e, g[m + 3], 22, -1044525330);
                            e = b(e, h, k, l, g[m + 4], 7, -176418897);
                            l = b(l, e, h, k, g[m + 5], 12, 1200080426);
                            k = b(k, l, e, h, g[m + 6], 17, -1473231341);
                            h = b(h, k, l, e, g[m + 7], 22, -45705983);
                            e = b(e, h, k, l, g[m +
                            8], 7, 1770035416);
                            l = b(l, e, h, k, g[m + 9], 12, -1958414417);
                            k = b(k, l, e, h, g[m + 10], 17, -42063);
                            h = b(h, k, l, e, g[m + 11], 22, -1990404162);
                            e = b(e, h, k, l, g[m + 12], 7, 1804603682);
                            l = b(l, e, h, k, g[m + 13], 12, -40341101);
                            k = b(k, l, e, h, g[m + 14], 17, -1502002290);
                            h = b(h, k, l, e, g[m + 15], 22, 1236535329);
                            e = c(e, h, k, l, g[m + 1], 5, -165796510);
                            l = c(l, e, h, k, g[m + 6], 9, -1069501632);
                            k = c(k, l, e, h, g[m + 11], 14, 643717713);
                            h = c(h, k, l, e, g[m + 0], 20, -373897302);
                            e = c(e, h, k, l, g[m + 5], 5, -701558691);
                            l = c(l, e, h, k, g[m + 10], 9, 38016083);
                            k = c(k, l, e, h, g[m + 15], 14, -660478335);
                            h = c(h, k,
                                    l, e, g[m + 4], 20, -405537848);
                            e = c(e, h, k, l, g[m + 9], 5, 568446438);
                            l = c(l, e, h, k, g[m + 14], 9, -1019803690);
                            k = c(k, l, e, h, g[m + 3], 14, -187363961);
                            h = c(h, k, l, e, g[m + 8], 20, 1163531501);
                            e = c(e, h, k, l, g[m + 13], 5, -1444681467);
                            l = c(l, e, h, k, g[m + 2], 9, -51403784);
                            k = c(k, l, e, h, g[m + 7], 14, 1735328473);
                            h = c(h, k, l, e, g[m + 12], 20, -1926607734);
                            e = a(h ^ k ^ l, e, h, g[m + 5], 4, -378558);
                            l = a(e ^ h ^ k, l, e, g[m + 8], 11, -2022574463);
                            k = a(l ^ e ^ h, k, l, g[m + 11], 16, 1839030562);
                            h = a(k ^ l ^ e, h, k, g[m + 14], 23, -35309556);
                            e = a(h ^ k ^ l, e, h, g[m + 1], 4, -1530992060);
                            l = a(e ^ h ^ k, l, e, g[m + 4], 11, 1272893353);
                            k = a(l ^ e ^ h, k, l, g[m + 7], 16, -155497632);
                            h = a(k ^ l ^ e, h, k, g[m + 10], 23, -1094730640);
                            e = a(h ^ k ^ l, e, h, g[m + 13], 4, 681279174);
                            l = a(e ^ h ^ k, l, e, g[m + 0], 11, -358537222);
                            k = a(l ^ e ^ h, k, l, g[m + 3], 16, -722521979);
                            h = a(k ^ l ^ e, h, k, g[m + 6], 23, 76029189);
                            e = a(h ^ k ^ l, e, h, g[m + 9], 4, -640364487);
                            l = a(e ^ h ^ k, l, e, g[m + 12], 11, -421815835);
                            k = a(l ^ e ^ h, k, l, g[m + 15], 16, 530742520);
                            h = a(k ^ l ^ e, h, k, g[m + 2], 23, -995338651);
                            e = d(e, h, k, l, g[m + 0], 6, -198630844);
                            l = d(l, e, h, k, g[m + 7], 10, 1126891415);
                            k = d(k, l, e, h, g[m + 14], 15, -1416354905);
                            h = d(h, k, l, e, g[m + 5], 21, -57434055);
                            e = d(e,
                                    h, k, l, g[m + 12], 6, 1700485571);
                            l = d(l, e, h, k, g[m + 3], 10, -1894986606);
                            k = d(k, l, e, h, g[m + 10], 15, -1051523);
                            h = d(h, k, l, e, g[m + 1], 21, -2054922799);
                            e = d(e, h, k, l, g[m + 8], 6, 1873313359);
                            l = d(l, e, h, k, g[m + 15], 10, -30611744);
                            k = d(k, l, e, h, g[m + 6], 15, -1560198380);
                            h = d(h, k, l, e, g[m + 13], 21, 1309151649);
                            e = d(e, h, k, l, g[m + 4], 6, -145523070);
                            l = d(l, e, h, k, g[m + 11], 10, -1120210379);
                            k = d(k, l, e, h, g[m + 2], 15, 718787259);
                            h = d(h, k, l, e, g[m + 9], 21, -343485551);
                            e = f(e, n);
                            h = f(h, r);
                            k = f(k, s);
                            l = f(l, p)
                        }
                        g = [e, h, k, l];
                        e = "";
                        for (h = 0; h < 4 * g.length; h++)e += "0123456789abcdef".charAt(g[h >>
                                        2] >> h % 4 * 8 + 4 & 15) + "0123456789abcdef".charAt(g[h >> 2] >> h % 4 * 8 & 15);
                        return e
                    }
                }
            }(), UiTool = {
                getTemplate: function (a, b, c, d) {
                    "undefined" != typeof c && (c = c.replace(/{#}/g, d), b = b.replace(/{#}/g, d), UiTool.loadCss(c));
                    c = (new Date).getTime();
                    d = b.match(/#{[a-z_A-Z0-9]{1,}}/g)||[];for(var f=[],e=0;e<d.length;e++){var g=d[e].replace(/^#{?|}$/g,"");b=b.replace(d[e],g+c);f.push(g)}a.innerHTML=b;for(e=0;e<f.length;e++)g=f[e],a[g]=UiTool.$E(g+c);return f},loadCss:function(a){var b=document.head||document.getElementsByTagName("head")[0]||
                            document.documentElement, c = document.createElement("style");
                    c.setAttribute("type", "text/css");
                    c.innerHTML = a;
                    b.appendChild(c)
                }, $E: function (a) {
                    a = "string" == typeof a ? document.getElementById(a) : a;
                    return null != a ? a : null
                }, $C: function (a) {
                    return document.createElement(a)
                }, hasClassName: function (a, b) {
                    if (a) {
                        var c = a.className;
                        return 0 == c.length ? !1 : c == b || c.match(new RegExp("(^|\\s)" + b + "(\\s|$)")) ? !0 : !1
                    }
                }, addClassName: function (a, b) {
                    if (a) {
                        var c = a.className;
                        0 == c.length ? a.className = c : c == b || c.match(new RegExp("(^|\\s)" +
                                b + "(\\s|$)")) || (a.className = c + " " + b)
                    }
                }, removeClassName: function (a, b) {
                    if (a) {
                        var c = a.className;
                        0 != c.length && (c == b ? a.className = "" : c.match(new RegExp("(^|\\s)" + b + "(\\s|$)")) && (a.className = c.replace(new RegExp("(^|\\s)" + b + "(\\s|$)"), " ")))
                    }
                }, addEvent: function (a, b, c) {
                    if (-1 != b.indexOf(",")) {
                        b = b.split(",");
                        for (var d = 0, f = b.length; d < f; d++) {
                            var e = b[d];
                            if ("" == e)break;
                            a.attachEvent ? a.attachEvent("on" + e, c) : a.addEventListener(e, c, !1)
                        }
                    } else a.attachEvent ? a.attachEvent("on" + b, c) : a.addEventListener(b, c, !1)
                }, removeEvent: function (a,
                                          b, c) {
                    a = this.$E(a);
                    if (null != a && "function" == typeof c && "undefined" != typeof b)if (-1 != b.indexOf(",")) {
                        b = b.split(",");
                        for (var d = 0, f = b.length; d < f; d++) {
                            var e = b[d];
                            if ("" == e)break;
                            a.addEventListener ? a.removeEventListener(e, c, !1) : a.attachEvent && a.detachEvent("on" + e, c)
                        }
                    } else a.addEventListener ? a.removeEventListener(b, c, !1) : a.attachEvent && a.detachEvent("on" + b, c)
                }, getPos: function (a) {
                    a = this.$E(a);
                    if (a.getBoundingClientRect) {
                        var b = "CSS1Compat" == document.compatMode ? document.documentElement : document.body;
                        a = a.getBoundingClientRect();
                        return {x: a.left + b.scrollLeft, y: a.top + b.scrollTop}
                    }
                    for (b = y_ = 0; a.offsetParent;)b += a.offsetLeft, y_ += a.offsetTop, a = a.offsetParent;
                    b += a.offsetLeft;
                    y_ += a.offsetTop;
                    return {x: b, y: y_}
                }, getMousePoint: function (a) {
                    var b = "createTouch"in document, c = y = 0, d = document.documentElement, f = document.body;
                    a || (a = window.event);
                    window.pageYOffset ? (c = window.pageXOffset, y = window.pageYOffset) : (c = (d && d.scrollLeft || f && f.scrollLeft || 0) - (d && d.clientLeft || f && f.clientLeft || 0), y = (d && d.scrollTop || f && f.scrollTop || 0) - (d && d.clientTop || f &&
                            f.clientTop || 0));
                    b ? (a = a.touches.item(0), c = a.pageX, y = a.pageY) : (c += a.clientX, y += a.clientY);
                    return {x: c, y: y}
                }, preventDefault: function (a) {
                    a ? a.preventDefault() : window.event.returnValue = !1
                }, turnEvent: function (a) {
                    var b = {
                        mousedown: "touchstart",
                        mousemove: "touchmove",
                        mouseup: "touchend",
                        mouseover: "touchstart",
                        mouseout: "-",
                        click: "touchstart"
                    };
                    return UiTool.isSupportsTouches() && b.hasOwnProperty(a) ? b[a] : a
                }, isSupportsTouches: function (a) {
                    return "createTouch"in document
                }, drag: function (a, b) {
                    var c = "createTouch"in document,
                            d = UiTool.turnEvent("mousedown"), f = UiTool.turnEvent("mousemove"), e = UiTool.turnEvent("mouseup");
                    "string" == typeof a && (a = document.getElementById(a));
                    a.orig_index = a.style.zIndex;
                    a.startX = 0;
                    a.startY = 0;
                    a["on" + d] = function (d) {
                        var h, k;

                        function l(d) {
                            d || (d = window.event);
                            c ? (d = d.touches.item(0), h = d.pageX - r, k = d.pageY - s) : (h = d.pageX ? d.pageX - r : d.clientX + document.body.scrollLeft - r, k = d.pageY ? d.pageY - s : d.clientY + document.body.scrollTop - s);
                            h = t.x + h;
                            k = t.x + k;
                            p && (h < p.x ? h = p.x : h > p.x + p.w && (h = p.x + p.w), k < p.y ? k = p.y : k > p.y + 0 + p.h &&
                            (k = p.y + p.h));
                            a.style.left = h + "px";
                            a.style.top = k + "px";
                            b.onMove && b.onMove((parseInt(a.style.left) - p.x) / p.w);
                            return !1
                        }

                        function m() {
                            a.releaseCapture ? a.releaseCapture() : window.captureEvents && window.captureEvents(Event.MOUSEMOVE | Event.MOUSEUP);
                            UiTool.removeEvent(n, f, l);
                            UiTool.removeEvent(n, e, m);
                            a.style.zIndex = a.orig_index;
                            b.onUp && b.onUp((parseInt(a.style.left) - p.x) / p.w)
                        }

                        var n = document;
                        k = h = void 0;
                        var r, s, p;
                        this.style.zIndex = 1E4;
                        b.rect && (p = b.rect());
                        d || (d = window.event);
                        d.preventDefault();
                        c ? (d = d.touches.item(0),
                                r = d.pageX, s = d.pageY) : (r = d.clientX + n.body.scrollLeft, s = d.clientY + n.body.scrollTop);
                        var t = {x: parseInt(a.offsetLeft), y: parseInt(a.offsetTop)};
                        n.ondragstart = "return false;";
                        n.onselectstart = "return false;";
                        n.onselect = "document.selection.empty();";
                        a.setCapture ? a.setCapture() : window.captureEvents && window.captureEvents(Event.MOUSEMOVE | Event.MOUSEUP);
                        b.onDown && b.onDown((parseInt(a.style.left) - p.x) / p.w);
                        UiTool.addEvent(n, f, l);
                        UiTool.addEvent(n, e, m);
                        return !1
                    }
                }, fullScreen: function (a) {
                    if (a.requestFullscreen)return a.requestFullscreen();
                    if (a.mozRequestFullScreen)return a.mozRequestFullScreen();
                    if (a.webkitRequestFullscreen)return a.webkitRequestFullScreen();
                    if (a.msRequestFullscreen)return a.msRequestFullscreen();
                    if (a.oRequestFullscreen)return a.oRequestFullscreen()
                }, isFullScreen: function () {
                    return document.webkitIsFullScreen || document.fullscreen || document.mozFullScreen || document.msFullscreenElement ? !0 : !1
                }, cancelFullScreen: function () {
                    document.cancelFullscreen ? document.cancelFullscreen() : document.exitFullscreen ? document.exitFullscreen() :
                            document.msExitFullscreen ? document.msExitFullscreen() : document.mozCancelFullScreen ? document.mozCancelFullScreen() : document.webkitExitFullscreen ? document.webkitExitFullscreen() : document.webkitCancelFullScreen && element.webkitCancelFullScreen()
                }, supportFullScreen: function () {
                    var a = document.documentElement;
                    return "requestFullscreen"in a || "mozRequestFullScreen"in a && document.mozFullScreenEnabled || "webkitRequestFullscreen"in a || "msRequestFullscreen"in a
                }, getClientWidth: function () {
                    return document.body.clientWidth
                },
                getImgRealRect: function (a) {
                    var b = a.width, c = a.height;
                    "undefined" != typeof a.naturalWidth && (b = a.naturalWidth, c = a.naturalHeight);
                    return {width: b, height: c}
                }, isMobileEvent: function (a) {
                    return -1 != ["touchstart", "touchmove", "touchend"].indexOf(a)
                }, hexToRgba: function (a, b) {
                    var c = a.toLowerCase(), d = /^#([0-9a-fA-f]{3}|[0-9a-fA-f]{6})$/;
                    if (c && d.test(c)) {
                        if (4 === c.length) {
                            for (var f = "#", d = 1; 4 > d; d += 1)f += c.slice(d, d + 1).concat(c.slice(d, d + 1));
                            c = f
                        }
                        f = [];
                        for (d = 1; 7 > d; d += 2)f.push(parseInt("0x" + c.slice(d, d + 2)));
                        return "RGBA(" +
                                f.join(",") + "," + b + ")"
                    }
                    return c
                }, setCanvasColor: function (a, b) {
                    for (var c = a.getContext("2d"), d = c.getImageData(0, 0, a.width, a.height), f = 0; f < d.data.length; f += 4)if (0 != d.data[f + 3]) {
                        var e = b.toLocaleLowerCase(), e = e.replace(/rgba\(|\)/g, "").split(",");
                        d.data[f] = e[0];
                        d.data[f + 1] = e[1];
                        d.data[f + 2] = e[2]
                    }
                    c.putImageData(d, 0, 0)
                }
            };
            SOTool.shareObj("common.UiTool", UiTool);
            var jsonTool = {
                isString: function (a) {
                    return "string" === typeof a
                }, stringToJson: function (a) {
                    if (this.isString(a))try {
                        return window.JSON.parse(a)
                    } catch (b) {
                        return {}
                    } else return a
                }, isJson: function (a) {
                    return a && "object" === typeof a && "Object" === a.constructor ? !0 : !1
                }, jsonToString: function (a) {
                    var b = "";
                    try {
                        b = window.JSON.stringify(a)
                    } catch (c) {
                        b = c
                    }
                    return b
                }
            }, logTool = function () {
                var a = "", b = [];
                return {
                    log: function (c, d, f) {
                        d = "undefined" != typeof d ? "[" + d.constructor.name + "]" : "-";
                        f = "undefined" != typeof f ? f : "-";
                        if (a != c)try {
                            var e =
                                    new Date, g = "[" + e.getFullYear() + "-" + e.getMonth() + "-" + e.getDate() + " " + e.getHours() + ":" + e.getMinutes() + ":" + e.getSeconds() + ":" + e.getMilliseconds() + "]";
                            b.push(g + c + "  target--\x3e" + d);
                            1E3 < b.length && b.shift();
                            if (-1 != window.location.href.indexOf("#dSDK=1") || "file" == window.location.href.substr(0, 4).toLocaleLowerCase())-1 != window.location.href.indexOf("#stack=1") && console.log(Error().stack), window.console && window.console.log(c, d, f, g);
                            if (-1 != window.location.href.indexOf("#dSDK=2")) {
                                if (document.getElementById("log"))var h =
                                        document.createElement("DIV"); else {
                                    var k = document.createElement("DIV");
                                    k.id = "log";
                                    document.body.appendChild(k);
                                    h = document.createElement("DIV")
                                }
                                h.innerHTML = c + d + g;
                                document.getElementById("log").appendChild(h);
                                a = c
                            }
                        } catch (l) {
                        }
                    }, getLog: function (a) {
                        return b.join("<br>\r\n")
                    }
                }
            }();
            logTool.log("js \u52a0\u8f7d\u6210\u529f  ua:" + window.navigator.userAgent);
            var ReportTool = function () {
                        var a = document.createElement("DIV");
                        a.style.cssText = "width:85%;height:80%;position:fixed;left:0px;top:0px;z-index: 3000;background-color:rgba(255, 255, 255, 1);";
                        var b = document.createElement("IFRAME");
                        b.name = "submit";
                        b.style.cssText = "display:none;position:absolute;";
                        var c = document.createElement("form");
                        return {
                            print: function (b, c) {
                                a.innerHTML = '<div style="width:100%;"><span>\u7528\u6237id:</span><input type="text" style="width:300px;"><input style="float:right;" type="button" value="\u5173\u95ed"></div><textarea class="input" style="width: 100%;height: 100%"  placeholder="Once upon a time..."></textarea>';
                                document.body.appendChild(a);
                                a.style.display = "";
                                a.getElementsByTagName("textarea")[0].innerHTML = b;
                                var e = a.getElementsByTagName("input")[0];
                                a.getElementsByTagName("input")[1].onclick = function () {
                                    a.style.display = "none"
                                };
                                e.value = c
                            }, report: function (a, f) {
                                document.body.appendChild(b);
                                c.innerHTML = "";
                                c.action = a;
                                c.method = "post";
                                c.target = "submit";
                                c.style.display = "none";
                                for (var e in f) {
                                    var g = document.createElement("textarea");
                                    g.name = e;
                                    g.value = f[e];
                                    c.appendChild(g)
                                }
                                document.body.appendChild(c);
                                c.submit()
                            }
                        }
                    }(),
                    FlashPlayer = {
                        isSupportFlash: !1, isEmdbed: !1, num: 0, check: function (a) {
                            var b = "";
                            if ("undefined" != typeof window.ActiveXObject || "ActiveXObject"in window)try {
                                b = (new ActiveXObject("ShockwaveFlash.ShockwaveFlash")).GetVariable("$version")
                            } catch (c) {
                            }
                            if (window.navigator.plugins && window.navigator.plugins["Shockwave Flash"])try {
                                b = window.navigator.plugins["Shockwave Flash"].description, this.isEmdbed = !0
                            } catch (d) {
                            }
                            "" == b && (this.isSupportFlash = !1);
                            for (var b = b.split(/\s+/), f = 0, e = b.length; f < e; f++)parseInt(b[f]) > a && (this.isSupportFlash = !0);
                            return this.isSupportFlash
                        }, getPlayer: function (a) {
                            return this.isEmdbed ? document[a] || window[a] : document.getElementById(a)
                        }, create: function (a, b, c) {
                            var d = "cloudPlayer" + (new Date).getTime() + this.num;
                            this.num++;
                            var f = {
                                bgcolor: "#000000",
                                allowscriptaccess: "always",
                                wmode: "Opaque",
                                width: "100%",
                                height: "100%",
                                align: "middle",
                                quality: "high",
                                allowFullScreen: !0,
                                version: 10
                            }, e;
                            for (e in b)f[e] = b[e];
                            f.flashvars = c;
                            b = "";
                            if (this.check(f.version)) {
                                if (this.isEmdbed)for (e in c = ["<embed name='" + d + "'src='" + f.url + "' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash' width='" +
                                f.width + "' height='" + f.height + "' ", " />"], b = "", f)"width" != e && "height" != e && "url" != e && (b += e + "='" + f[e] + "' "); else for (e in b = "", c = ["<object id='" + d + "' classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000'codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,45,0' type='application/x-shockwave-flash' width='" + f.width + "' height='" + f.height + "'><param name='movie' value='" + f.url + "'/>", "</object>"], f)"width" != e && "height" != e && "url" != e && (b += "<param name='" + e + "' value='" + f[e] +
                                        "'/>");
                                b = c.join(b)
                            } else b = '<div style="width:' + f.width + "px; height:" + f.height + 'px; text-align:center;"><span style="line-height:200%; font-size:18px">\u5b89\u88c5\u6216\u8005\u66f4\u65b0\u7248\u672c\u4e0d\u5c0f\u4e8e<b style="color:red">' + f.version + '</b>\u7684flash\u64ad\u653e\u5668, \u8bf7\u70b9\u51fb<a href="http://get.adobe.com/cn/flashplayer/" target="_blank">\u8fd9\u91cc</a>\u5b89\u88c5</span></div>';
                            "string" == typeof a && "" != a && document.getElementById(a) ? document.getElementById(a).innerHTML = b :
                                    document.write(b);
                            return d
                        }
                    }, ClassTool = function () {
                        var a = {};
                        return {
                            inherits: function (b, a) {
                                function d() {
                                }

                                try {
                                    d.prototype = a.prototype, b.prototype = new d, b.prototype.constructor = b, b.prototype.superClass = a.prototype
                                } catch (f) {
                                    debugger
                                }
                            }, provideClass: function (b, a) {
                                var d = b.split(".");
                                if (1 < d.length)for (var f = 0; f < d.length - 1; f++) {
                                    var e = d[f];
                                    last.hasOwnProperty(e) || (last[e] = {});
                                    last = last[e]
                                }
                                last[d[d.length - 1]] = a
                            }, importClass: function (b) {
                                for (var c = b.split("."), d = a, f = 0; f < c.length - 1; f++) {
                                    var e = c[f];
                                    if (!d.hasOwnProperty(e))throw"the " +
                                    b + "--" + e + " class is not provide";
                                    d = d[e]
                                }
                                return d
                            }
                        }
                    }();
            SOTool.shareObj("common.ClassTool", ClassTool);
            var GlobalHandler = function () {
                var a = "liveId sid mmsid pic title url nextvid nextpic nexttitle nexturl nextchapter duration total percent rotation fullscreen color volume jump continuePlay gpu gpuing definition defaultDefinition trylook fullScale originalScale originalRect".split(" "), b = {
                    10: "180",
                    13: "350",
                    16: "1000",
                    19: "1300",
                    99: "yuanhua",
                    22: "720p",
                    25: "1080p",
                    28: "k4"
                };
                return {
                    defList: "180 350 1000 1300 yuanhua 720p 1080p k4".split(" "), settingList: function () {
                        return a
                    }, liveInfoMap: {
                        0: Message.NoStart, 2: Message.INTERRUPT,
                        3: Message.END
                    }, def2Type: function (b, a) {
                        return a.hasOwnProperty(b) ? a[b] : b
                    }, type2Def: function (a) {
                        return b.hasOwnProperty(a) ? b[a] : a
                    }, initTypeDefObj: function (a, d) {
                        for (var f = 0; f < a.length; f++) {
                            var e = a[f];
                            b.hasOwnProperty(e) && (d[b[e]] = e)
                        }
                    }
                }
            }(), PlayState = {PLAY: 0, PAUSE: 1, STOP: 2}, ERR = {
                PARAMS: "1",
                NOSTART: "2",
                INTERRUPT: "3",
                END: "7",
                NOPLAN: "4",
                PEOPLE_OUT: "5",
                WHITE_LIST: "6",
                ACTIVITY_IO: "60",
                ACTIVITY_TIMEOUT: "61",
                ACTIVITY_ANALY: "63",
                NOSTREAM: "64",
                LIVE_ANALY: "50",
                LIVE_IO: "51",
                LIVE_TIMEOUT: "53",
                PLAY_IO: "480",
                PLAY_TIMEOUT: "481",
                VOD_CONFIG_IO: "150",
                VOD_CONFIG_TIMEOUT: "152",
                VOD_MMSID_ANALY: "153",
                VOD_CONFIG_DRM: "154",
                GSLB_IO: "470",
                GSLB_ANALY: "473",
                NOSupport: "490"
            };
            SOTool.shareObj("manager.ColorManager", function () {
                function a() {
                    this.managerDsipayList = [];
                    this.cList = [];
                    this.colorConfig = {bgColor: "#000000", fault: "#aaaaaa", active: "#208ac3"}
                }

                var b = SOTool.getObj("common.UiTool");
                a.prototype.setColor = function (a, d, f, e) {
                    "undefined" == typeof f && (f = "bg");
                    "undefined" == typeof e && (e = 1);
                    a.setColor(b.hexToRgba(this.colorConfig[d], e), f);
                    var g = this.managerDsipayList.indexOf(a);
                    -1 == g ? (this.managerDsipayList.push(a), this.cList.push({
                        display: a,
                        key: d,
                        type: f,
                        alpha: e
                    })) : (this.cList[g].key =
                            d, this.cList[g].type = f, this.cList[g].alpha = e)
                };
                a.prototype.register = function (b) {
                    for (var a in b)this.colorConfig.hasOwnProperty(a) && ("0x" == b[a].substr(0, 2) && (b[a] = b[a].substr(2)), "#" != b[a].substr(0, 1) ? this.colorConfig[a] = "#" + b[a] : this.colorConfig[a] = b[a])
                };
                a.prototype.refresh = function (a) {
                    this.register(a);
                    for (a = 0; a < this.cList.length; a++)this.cList[a].display.setColor(b.hexToRgba(this.colorConfig[this.cList[a].key], this.cList[a].alpha), this.cList[a].type)
                };
                return a
            }());
            var ClassObject = function () {
                function a() {
                    this.init()
                }

                a.prototype = {
                    init: function () {
                    }, addEventListener: function (b, a, d, f) {
                        if ("undefined" == typeof b)throw this.log(b), Error("type is undefined");
                        if ("undefined" == typeof a)throw this.log(a), Error("handler is undefined");
                        "undefined" == typeof d && (d = this);
                        this.hasOwnProperty("EventMap") || (this.EventMap = {});
                        this.EventMap.hasOwnProperty(b) || (this.EventMap[b] = []);
                        this.hasEventListener(b, a, d) || this.EventMap[b].push({fun: a, target: d})
                    }, hasEventListener: function (b, a,
                                                   d) {
                        if ("undefined" == typeof b)throw this.log(b), Error("type is undefined");
                        if ("undefined" == typeof a)throw this.log(a), Error("handler is undefined");
                        if ("undefined" == typeof d)throw this.log(d), Error("handlerThis is undefined");
                        if (this.hasOwnProperty("EventMap") && this.EventMap.hasOwnProperty(b))for (var f = 0; f < this.EventMap[b].length; f++) {
                            var e = this.EventMap[b][f];
                            if (e.fun == a && e.target == d)return !0
                        }
                        return !1
                    }, dispatchEvent: function (b) {
                        var a = b.type;
                        b.target = this;
                        this.hasOwnProperty("EventMap") || (this.EventMap =
                        {});
                        if (this.EventMap.hasOwnProperty(a)) {
                            for (var d = [], f = 0; f < this.EventMap[a].length; f++)d.push(this.EventMap[a][f]);
                            for (f = 0; f < d.length; f++)d[f].fun.call(this.EventMap[a][f].target, b)
                        }
                    }, removeEventListener: function (b, a, d) {
                        this.hasOwnProperty("EventMap") || (this.EventMap = {});
                        if (this.EventMap.hasOwnProperty(b))for (var f = 0; f < this.EventMap[b].length; f++)if (this.EventMap[b][f].fun == a && this.EventMap[b][f].target == d) {
                            this.EventMap[b].splice(f, 1);
                            0 == this.EventMap[b].length && delete this.EventMap[b];
                            break
                        }
                    }, destroy: function () {
                        for (var b in this.EventMap)delete this.EventMap[b];
                        this.EventMap = null
                    }, log: function (b) {
                        logTool.log(b, this)
                    }
                };
                return a
            }();
            SOTool.shareObj("core.ClassObject", ClassObject);
            var Control = function () {
                function a(b, a) {
                    this.init(b, a)
                }

                ClassTool.inherits(a, ClassObject);
                a.prototype.init = function (b, a) {
                    this.facade = b;
                    this.model = a
                };
                return a
            }(), Event = function () {
                return function () {
                    this.type = arguments[0];
                    this.args = arguments
                }
            }();
            SOTool.shareObj("core.Event", Event);
            var Facade = function () {
                function a() {
                }

                var b = SOTool.getObj("manager.ColorManager");
                ClassTool.inherits(a, SOTool.getObj("core.ClassObject"));
                a.prototype.init = function (a) {
                    this.color = new b;
                    this.color.register(a)
                };
                return a
            }();
            SOTool.shareObj("core.Facade", Facade);
            var Proxy = function () {
                function a() {
                }

                ClassTool.inherits(a, ClassObject);
                a.prototype.load = function (b) {
                    this.loader = new AutoLoader;
                    this.isClose = !1;
                    b = this.getRequestList();
                    2 == this.requestType ? this.loader.load2(b, this.loadCmp, this.loadError, this) : this.loader.load(b, this.loadCmp, this.loadError, this)
                };
                a.prototype.getUrl = function (b) {
                    return 1 < this.loader.urlList.length ? this.loader.urlList[0].url : ""
                };
                a.prototype.getRequestList = function (b) {
                    return []
                };
                a.prototype.unload = function (b) {
                    this.loader && this.loader.destroy();
                    this.isClose = !0
                };
                a.prototype.loadCmp = function (b, a) {
                    !this.isClose && this.dispatchEvent(new Event(LoadEvent.LOADCMP, [b, a]))
                };
                a.prototype.loadError = function (b, a) {
                    !this.isClose && this.dispatchEvent(new Event(LoadEvent.LOADERROR, [b, a]))
                };
                return a
            }(), Plugin = function () {
                function a() {
                }

                ClassTool.inherits(a, ClassObject);
                a.prototype.initPlugin = function (a, c, d) {
                    this.pluginCmpFun = c;
                    this.REConf = d;
                    if (this.REConf.hasOwnProperty(a.type))if (c = this.REConf[a.type], c.hasOwnProperty("check"))if ("function" == typeof c.check)if (c.check())this.load(a);
                    else a.onerror(c.err); else if (c.check)this.load(a); else a.onerror(c.err); else this.load(a); else this.pluginCmpFun(null), a.onstart()
                };
                a.prototype.load = function (a) {
                    var c = this;
                    c.pl = this.REConf[a.type];
                    SOTool.getPlugin(c.pl.name, function (d) {
                        if (d)c.pluginCmpFun(d); else a.onerror({
                            code: 420,
                            message: "\u63d2\u4ef6\u52a0\u8f7d\u9519\u8bef"
                        })
                    })
                };
                return a
            }(), View = function () {
                function a(a, c) {
                    this.facade = a;
                    this.model = c;
                    this.init()
                }

                ClassTool.inherits(a, ClassObject);
                a.prototype.init = function () {
                    this.tplKey = "view";
                    this.addEvent = !0
                };
                a.prototype.setUp = function (a, c, d) {
                    "undefined" == typeof d && (d = "");
                    d = SkinRender.SkinTpl[this.tplKey] || d;
                    this.el = UiTool.$E(a);
                    this.skin = new DisplayObject(this.el);
                    a = UiTool.getTemplate(this.el, d);
                    if (c)for (c = 0; c < a.length; c++)this.el[a[c]] = new DisplayObject(this.el[a[c]]);
                    this.addEvent && this.facade.addEventListener(SkinEvent.EVENT, this.skinHandler, this)
                };
                a.prototype.skinHandler = function (a) {
                };
                a.prototype.setSize = function (a, c) {
                };
                a.prototype.show = function () {
                    this.skin.setVisible(!0)
                };
                a.prototype.hide =
                        function () {
                            this.skin.setVisible(!1)
                        };
                return a
            }();
            SOTool.shareObj("core.View", View);
            var DisplayObject = function () {
                function a(a, b) {
                    this.init(a);
                    "undefined" == typeof b && (b = window.CloudSdkPlugin.skinUuid);
                    this.sid = b
                }

                var b = SOTool.getObj("common.ClassTool"), c = SOTool.getObj("core.ClassObject"), d = SOTool.getObj("common.UiTool");
                b.inherits(a, c);
                a.prototype.init = function (a) {
                    this.el = a
                };
                a.prototype.render = function (a) {
                    if (this.el.hasAttribute("render-data")) {
                        var b = videoSdkTool.split(this.el.getAttribute("render-data"), ";", 3), c = b[1], h = b[2];
                        switch (b[0]) {
                            case "canvas":
                                if ("img" == c)if (this.renderCanvas)this.el.hasOwnProperty("renderOption") ?
                                        this.el.renderOption = a : d.setCanvasColor(this.renderCanvas, a.color); else {
                                    var b = videoSdkTool.split(h, ";", 3), k = document.createElement("img"), l = document.createElement("canvas");
                                    k.width = b[0];
                                    k.height = b[1];
                                    this.el.appendChild(l);
                                    l.width = k.width;
                                    l.height = k.height;
                                    this.renderCanvas = l;
                                    this.el.renderOption = a;
                                    k.onload = videoSdkTool.bindFun(function () {
                                        l.getContext("2d").drawImage(k, 0, 0);
                                        d.setCanvasColor(l, this.el.renderOption.color);
                                        delete this.el.renderOption
                                    }, this);
                                    k.src = b[2]
                                }
                        }
                    }
                };
                a.prototype.addEventListener =
                        function (a, b, c) {
                            a = d.turnEvent(a);
                            "-" != a && d.addEvent(this.el, a, b)
                        };
                a.prototype.removeEventListener = function (a, b, c) {
                    a = d.turnEvent(a);
                    d.removeEvent(this.el, a, b)
                };
                a.prototype.drag = function (a) {
                    d.drag(this.el, a)
                };
                a.prototype.setButtonMode = function (a) {
                    this.el.style.cursor = a ? "pointer" : "default"
                };
                a.prototype.setEnabled = function (a) {
                    this.el.style.pointerEvents = a ? "auto" : "none"
                };
                a.prototype.setVisible = function (a) {
                    a ? (this.el.style.display = "block", this.setAttribute({
                        orgwidth: this.el.offsetWidth,
                        orgheight: this.el.offsetHeight
                    })) :
                            this.el.style.display = "none"
                };
                a.prototype.getVisible = function () {
                    return "none" != this.el.style.display
                };
                a.prototype.setWidth = function (a) {
                    a += "";
                    -1 != a.indexOf("%") ? this.el.style.width = a : this.el.style.width = a + "px"
                };
                a.prototype.getWidth = function () {
                    return 0 == this.el.offsetWidth ? this.getAttribute("orgwidth") : this.el.offsetWidth
                };
                a.prototype.setHeight = function (a) {
                    a += "";
                    -1 != a.indexOf("%") ? this.el.style.height = a : this.el.style.height = a + "px"
                };
                a.prototype.getHeight = function () {
                    return 0 == this.el.offsetHeight ? this.getAttribute("orgheight") :
                            this.el.offsetHeight
                };
                a.prototype.setX = function (a) {
                    a += "";
                    -1 != a.indexOf("%") ? this.el.style.left = a : this.el.style.left = a + "px"
                };
                a.prototype.getX = function () {
                    return this.el.offsetLeft
                };
                a.prototype.setY = function (a) {
                    a += "";
                    -1 != a.indexOf("%") ? this.el.style.top = a : this.el.style.top = a + "px"
                };
                a.prototype.getY = function () {
                    return this.el.offsetTop
                };
                a.prototype.appendChild = function (a) {
                    a.hasOwnProperty("el") && (a = a.el);
                    this.el.appendChild(a)
                };
                a.prototype.setColor = function (a, b) {
                    "bg" == b ? this.el.hasAttribute("render-data") ?
                            this.render({color: a}) : this.el.style.backgroundColor = a : "text" == b && (this.el.style.color = a)
                };
                a.prototype.html = function (a) {
                    this.el.innerHTML = a
                };
                a.prototype.gethtml = function (a) {
                    return this.el.innerHTML
                };
                a.prototype.setClassName = function (a) {
                    a = a.split(" ").join(this.sid + " ");
                    a += this.sid;
                    this.el.className = a
                };
                a.prototype.hasClassName = function (a) {
                    a = a.split(" ").join(this.sid + " ");
                    a += this.sid;
                    return d.hasClassName(this.el, a)
                };
                a.prototype.addClassName = function (a) {
                    a = a.split(" ").join(this.sid + " ");
                    a += this.sid;
                    d.addClassName(this.el, a)
                };
                a.prototype.removeClassName = function (a) {
                    a = a.split(" ").join(this.sid + " ");
                    a += this.sid;
                    d.removeClassName(this.el, a)
                };
                a.prototype.getAttribute = function (a) {
                    return this.el.getAttribute(a)
                };
                a.prototype.hasAttribute = function (a) {
                    return this.el.hasAttribute(a)
                };
                a.prototype.setAttribute = function (a) {
                    for (var b in a)this.el.setAttribute(b, a[b])
                };
                a.prototype.removeAttribute = function (a) {
                    if (videoSdkTool.isArray(a))for (var b = 0; b < a.length; b++)this.el.removeAttribute(a[b]); else this.el.removeAttribute(a)
                };
                a.prototype.setStyle = function (a) {
                    for (var b in a)this.el.style[b] = a[b]
                };
                return a
            }();
            SOTool.shareObj("core.view.DisplayObject", DisplayObject);
            SOTool.shareObj("core.view.display.DisplayObject", DisplayObject);
            var DragBar = function () {
                function a(a, b, c) {
                    this.init(a, c);
                    "undefined" == typeof b && (b = window.CloudSdkPlugin.skinUuid);
                    this.sid = b
                }

                var b = SOTool.getObj("common.ClassTool"), c = SOTool.getObj("core.ClassObject");
                SOTool.getObj("common.UiTool");
                b.inherits(a, c);
                a.prototype.init = function (a, b) {
                    this.percent = 0;
                    this.view = a;
                    this.rect = {
                        x: 0.5 * -this.view.el.sliderOver.getWidth(),
                        y: this.view.el.sliderOver.getY(),
                        w: this.view.el.trackBg.getWidth(),
                        h: 0
                    };
                    this.addEvents()
                };
                a.prototype.reSetRect = function () {
                    this.rect = {
                        x: 0.5 * -this.view.el.sliderOver.getWidth(),
                        y: this.view.el.sliderOver.getY(), w: this.view.el.trackBg.getWidth(), h: 0
                    }
                };
                a.prototype.render = function (a) {
                };
                a.prototype.setPercent = function (a) {
                    this.percent = a;
                    this.updateView()
                };
                a.prototype.updateView = function (a) {
                    a = this.percent * this.view.el.trackBg.getWidth();
                    this.view.el.track.setWidth(a);
                    this.view.el.sliderOver.setX(this.rect.x + a)
                };
                a.prototype.addEvents = function (a, b, c) {
                    var g = this;
                    this.view.el.sliderOver.drag({
                        rect: function () {
                            (!g.rect.w || 0 >= g.rect.w) && g.reSetRect();
                            return g.rect
                        }, onDown: function (a) {
                            g.isSeeking = !0
                        }, onMove: function (a) {
                            g.seekHanler.apply(g, [!1])
                        }, onUp: function (a) {
                            g.seekHanler.apply(g, [!0]);
                            g.isSeeking = !1
                        }
                    })
                };
                a.prototype.seekHanler = function (a) {
                    this.percent = (this.view.el.sliderOver.getX() - this.rect.x) / this.view.el.trackBg.getWidth();
                    this.updateView();
                    this.dispatchEvent(new Event("change", this.percent))
                };
                return a
            }();
            SOTool.shareObj("core.view.conttrols.DragBar", DragBar);
            var AutoLoader = function () {
                function a() {
                }

                a.prototype = {
                    load: function (a, c, d, f) {
                        this.urlList = a;
                        var e = this, g = 0, h = videoSdkTool.now(), k = function () {
                            clearTimeout(e.delayID);
                            var a = e.getRealUrl(e.urlList[0]);
                            e.log("load url:" + a);
                            videoSdkTool.getJSON(a, function (a, b) {
                                g += b.retryCount;
                                c && c.call(f, a, {responseTime: videoSdkTool.now() - h, retryCount: g})
                            }, function (a, b) {
                                1 < e.urlList.length ? (g += e.urlList[0].maxCount, e.urlList.shift(), e.delayID = setTimeout(k, e.urlList[0].retryTime)) : (g += b.retryCount, d && d.call(f, null, {
                                    responseTime: videoSdkTool.now() -
                                    h, retryCount: g
                                }))
                            }, e.urlList[0].timeout, e.urlList[0].maxCount, e.urlList[0].retryTime)
                        };
                        k()
                    }, load2: function (a, c, d, f) {
                        this.urlList = a;
                        var e = this, g = 0, h = videoSdkTool.now(), k = function () {
                            clearTimeout(e.delayID);
                            var a = e.getRealUrl(e.urlList[0]);
                            e.log("load url:" + a);
                            videoSdkTool.getJSONbyAjax(a, function (a, b) {
                                g += b.retryCount;
                                c && c.call(f, a, {responseTime: videoSdkTool.now() - h, retryCount: g})
                            }, function (a, b) {
                                1 < e.urlList.length ? (g += e.urlList[0].maxCount, e.urlList.shift(), e.delayID = setTimeout(k, e.urlList[0].retryTime)) :
                                        (g += b.retryCount, d && d.call(f, null, {
                                            responseTime: videoSdkTool.now() - h,
                                            retryCount: g
                                        }))
                            }, e.urlList[0].timeout, e.urlList[0].maxCount, e.urlList[0].retryTime)
                        };
                        k()
                    }, getRealUrl: function (a) {
                        return videoSdkTool.isFunction(a.url) ? a.hasOwnProperty("args") ? a.url(a.args) : a.url() : a.url
                    }, destroy: function () {
                        clearTimeout(this.delayID)
                    }, log: function (a) {
                        logTool.log(a, this)
                    }
                };
                return a
            }(), Timer = function () {
                function a(a, c, d, f) {
                    this.delay = a;
                    this.timerHandler = d;
                    this.handlerThis = c;
                    "undefined" == typeof f && (f = 0);
                    this.max = f;
                    this.currentCount =
                            this.T = 0;
                    this.running = !0
                }

                a.prototype = {
                    start: function () {
                        this.running = !0;
                        this.checkTime(!1)
                    }, checkTime: function (a) {
                        var c = this;
                        clearTimeout(this.T);
                        if (a && (c.currentCount++, c.timerHandler.call(c.handlerThis), 0 < c.max && c.currentCount >= c.max)) {
                            c.stop();
                            return
                        }
                        c.T = setTimeout(function () {
                            c.checkTime.call(c, !0)
                        }, c.delay)
                    }, stop: function () {
                        this.running = !1;
                        clearTimeout(this.T)
                    }, reset: function () {
                        this.stop();
                        this.currentCount = 0
                    }, clear: function () {
                        this.handlerThis = this.timerHandler = this.delay = null;
                        this.T = 0
                    }
                };
                return a
            }();
            SOTool.shareObj("core.util.Timer", Timer);
            var SkinRender = {
                SkinTpl: "", setPlayerCss: function (a) {
                    "" != a && (a = "." + a + " ");
                    a = "{id} img{width: auto !important;height: auto !important;}".replace(/{id}/g, a);
                    UiTool.loadCss(a)
                }, setMediacontrols: function (a, b) {
                    var c;
                    "" != a && (a = "." + a + " ");
                    c = "{id}video::-webkit-media-controls-enclosure,{id}video::-webkit-media-controls {display: {dislay} !important;}".replace(/{id}/g, a);
                    c = b ? c.replace("{dislay}", "") : c.replace("{dislay}", "none");
                    UiTool.loadCss(c)
                }, setMediafullscreen: function (a, b) {
                    var c;
                    "" != a && (a = "." + a + " ");
                    c = "{id}video::-webkit-media-controls-fullscreen-button {display: {dislay} !important;}".replace(/{id}/g, a);
                    c = b ? c.replace("{dislay}", "") : c.replace("{dislay}", "none");
                    UiTool.loadCss(c)
                }, getSkinTpl: function (a, b, c, d) {
                    if ("" == SkinRender.SkinTpl) {
                        "undefined" == typeof window.CloudSdkPlugin && (window.CloudSdkPlugin = {});
                        window.CloudSdkPlugin.skinUuid = videoSdkTool.creatUuid();
                        var f = window.CloudSdkPlugin.skinUuid;
                        b = b.replace(/{#BGP}/g, c);
                        b = b.replace(/{#}/g, f);
                        UiTool.loadCss(b);
                        for (var e in a)for (a[e] = a[e].replace(/{#}/g,
                                f), b = a[e].match(/{[a-z_A-Z0-9]{1,}\.[a-z_A-Z0-9]{1,}}/g) || [], c = 0; c < b.length; c++) {
                            var g = b[c].replace(/{|}/g, "").split("."), h = g[0], g = g[1];
                            d && d.hasOwnProperty(h) && d[h].hasOwnProperty(g) && (h = [h, d[h][g].width, d[h][g].height, d[h][g].src].join(";"), a[e] = a[e].replace(b[c], h))
                        }
                        SkinRender.SkinTpl = a
                    }
                }
            };
            SOTool.shareObj("core.SkinRender", SkinRender);
            var AdEvent = function () {
                return {
                    EVENT: "adEvent",
                    HEADSTART: "adHeadPlayStart",
                    HEADEND: "adHeadPlayComplete",
                    NOAD: "adHeadPlayNone"
                }
            }();
            SOTool.shareObj("event.AdEvent", AdEvent);
            var LoadEvent = function () {
                return {LOADCMP: "loadcmp", LOADERROR: "loaderror"}
            }();
            SOTool.shareObj("event.LoadEvent", LoadEvent);
            var PlayerEvent = function () {
                return {
                    EVENT: "playerEvent",
                    INIT: "playerInit",
                    VIDEO_AUTH_VALID: "videoAuthValid",
                    VIDEO_DATA_START: "videoDataStart",
                    VIDEO_DATA_CMP: "videoDataCmp",
                    GSLB_START: "gslbStart",
                    GSLB_CMP: "gslbCmp",
                    VPH: "videoPageHide",
                    VPS: "videoPageShow",
                    WPH: "webPageHide",
                    ERROR: "playerError",
                    RESIZE: "playerResize",
                    VIDEO_INFO: "videoInfo",
                    FULLSCREEN: "fullscreen",
                    PRESIZE: "resize",
                    VIDEO_LIVESTOP: "videoLiveStop",
                    VIDEO_INTERRUPT: "videoLiveInterupt",
                    USER_INFO: "user_info"
                }
            }();
            SOTool.shareObj("event.PlayerEvent", PlayerEvent);
            var MediaEvent = function () {
                return {
                    EVENT: "MediaEvent",
                    CONNECT: "videoConnect",
                    START: "videoStart",
                    PLAY: "videoResume",
                    STOP: "videoStop",
                    PAUSE: "videoPause",
                    BUFFEREMPTY: "videoEmpty",
                    BUFFEREFULL: "videoFull",
                    SEEK: "videoSeek",
                    SEEKEMPTY: "videoSeekEmpty",
                    PLAYING: "videoPlaying",
                    LODING: "videoLoading",
                    METADATA: "MetaData",
                    DURATION: "videoDuration",
                    DEFSTART: "swapDefinition",
                    ERROR: "videoError",
                    VOL: "vol",
                    REPLAY: "videoReplay"
                }
            }();
            SOTool.shareObj("event.MediaEvent", MediaEvent);
            var SkinEvent = function () {
                return {
                    EVENT: "skinEvent",
                    PLAY: "skinPlay",
                    PAUSE: "skinPause",
                    SETDEFINITION: "setDefinition",
                    SEEK: "skinSeek",
                    VOLUME: "skinVolume",
                    FULLSCREEN: "skinFullScreen",
                    REPLAY: "skinReplay"
                }
            }();
            SOTool.shareObj("event.SkinEvent", SkinEvent);
            var Model = function () {
                        function a() {
                            for (var a = "mac nt os osv app bd xh ro cs ssid lo la".split(" "), b = this, c = 0; c < a.length; c++)this[a[c]] = "";
                            this.refresh = function (a) {
                                for (var c in a)b[c] = a[c]
                            }
                        }

                        function b() {
                            var a = this;
                            this.autoplay = 0;
                            this.refresh = function (b) {
                                for (var c in b)a[c] = b[c]
                            }
                        }

                        function c() {
                            var a = this;
                            this.refresh = function (b) {
                                for (var c in b)a[c] = b[c]
                            }
                        }

                        function d() {
                            for (var a = ["userId"], b = this, c = 0; c < a.length; c++)this[a[c]] = "";
                            this.refresh = function (a) {
                                for (var c in a)b[c] = a[c]
                            }
                        }

                        function f() {
                            for (var a =
                                    "title duration volume definition defaultDefinition fullscreen percent time url videoWidth videoHeight".split(" "), b = this, c = 0; c < a.length; c++)this[a[c]] = "";
                            this.definitionCount = 0;
                            this.refresh = function (a) {
                                for (var c in a)b[c] = a[c]
                            }
                        }

                        function e() {
                            this.systemData = new a;
                            this.config = new b;
                            this.reportParam = {};
                            this.clear()
                        }

                        e.prototype = {
                            init: function (a) {
                                switch (this.platform) {
                                    case "sdk":
                                        this._uuid = "";
                                        this.playType = a.ptype;
                                        delete a.ptype;
                                        for (var b = "autoplay uu vu liveId streamId activityId lang".split(" "), c =
                                                0; c < b.length; c++) {
                                            var d = b[c];
                                            a.hasOwnProperty(d) && (this.config[d] = a[d], delete a[d])
                                        }
                                        this.systemData.refresh(a);
                                        logTool.log("[Stat K]  model init:" + this.systemData.deviceId + "  _2016-12-14 14:38:41.169");
                                        this._apprunid = this.systemData.deviceId + "_" + videoSdkTool.now();
                                        break;
                                    case "html5":
                                        this.systemData.refresh(a), this._apprunid = this.lc() + "_" + videoSdkTool.now()
                                }
                            }, clear: function () {
                                this._uuid = "";
                                this._lc = videoSdkTool.getLocal("lc");
                                this.userData = new d;
                                this.videoSetting = new f;
                                this.playerConfig = new c;
                                this.platform = "html5";
                                this.playType = "vod"
                            }, uuid: function () {
                                if ("sdk" == this.platform) {
                                    if (this.videoSetting.hasOwnProperty("uuid") && 6 < this.videoSetting.uuid.length)return this.videoSetting.uuid;
                                    var a = ExternalInterface.callSDK(this.systemData.os, "getVideoSetting", "");
                                    this.videoSetting.refresh(a);
                                    if (this.videoSetting.hasOwnProperty("uuid") && 6 < this.videoSetting.uuid.length)return this.videoSetting.uuid
                                }
                                "" == this._uuid && (this._uuid = videoSdkTool.creatUuid());
                                return this._uuid + "_" + this.videoSetting.definitionCount
                            }, clearUuid: function () {
                                this._uuid =
                                        ""
                            }, lc: function () {
                                null == this._lc && (this._lc = videoSdkTool.creatUuid(), videoSdkTool.setLocal("lc", this._lc));
                                return this._lc
                            }, getTypeFrom: function () {
                                var a = videoSdkTool.getUrlParams("ch");
                                if (a)return a.toString();
                                try {
                                    if ("" != this.userInfo().userId)return "bcloud_" + this.userInfo().userId
                                } catch (b) {
                                }
                                return "letv"
                            }, apprunid: function () {
                                return this._apprunid
                            }, auid: function () {
                                return this.systemData.deviceId
                            }, pcode: function () {
                                return "-"
                            }, videoInfo: function () {
                                switch (this.platform) {
                                    case "sdk":
                                        var a = ExternalInterface.callSDK(this.systemData.os,
                                                "getVideoSetting", "");
                                        a.hasOwnProperty("cid") && "" != a.cid || (a.cid = 100);
                                        a.hasOwnProperty("liveid") && (a.lid = a.liveid, delete a.liveid);
                                        a.hasOwnProperty("time") && "" == a.time && (a.time = "0");
                                        this.videoSetting.refresh(a);
                                        return a;
                                    case "html5":
                                        return a = this.api.getVideoInfo(), this.videoSetting.refresh(a), a
                                }
                            }, userInfo: function () {
                                switch (this.platform) {
                                    case "sdk":
                                        if ("" == this.userData.userId) {
                                            var a = ExternalInterface.callSDK(this.systemData.os, "getUserSetting", "");
                                            this.userData.refresh(a)
                                        }
                                        return this.userData;
                                    case "html5":
                                        return this.userData
                                }
                            }
                        };
                        return e
                    }(), UrlProxy = function () {
                        function a(a) {
                            this.model = a;
                            this.model.defaultDefinitionList = []
                        }

                        ClassTool.inherits(a, Proxy);
                        a.prototype.load = function (a) {
                            var c = this.model;
                            c.playerConfig.refresh({mloadingUrl: "", logo: {pic: ""}});
                            var d = {ark: 0, gslb: !1}, f = {350: {}};
                            f["350"].vtype = "350";
                            f["350"].definition = "\u539f\u753b";
                            f["350"].urls = [c.config.url];
                            d.isdrm = 0;
                            c.defaultDefinitionList.push("350");
                            d.media = f;
                            c.videoSetting.refresh(d);
                            this.dispatchEvent(new Event(LoadEvent.LOADCMP, [a]))
                        };
                        a.prototype.reload = function () {
                            this.unload();
                            this.superClass.load.call(this)
                        };
                        return a
                    }(), ConfigProxy = function () {
                        function a(a) {
                            this.model = a
                        }

                        var b = ["//106.39.244.239/", "//111.206.211.221/", "//223.95.79.18/"];
                        ClassTool.inherits(a, Proxy);
                        a.prototype.getRequestList = function () {
                            for (var a = [], d = "http://api.live.letvcloud.com/rtmp/getPlayerConfigeration?ver=v4", f = ["activityId"], e = 0; e < f.length; e++) {
                                var g = f[e];
                                this.model.config.hasOwnProperty(g) ? d = "domain" == g ? d + ("&key=" + this.model.config[g]) : d + ("&" + g + "=" + this.model.config[g]) : this.model.videoSetting.hasOwnProperty(g) &&
                                (d += "&" + g + "=" + this.model.videoSetting[g])
                            }
                            d += "&clientType=4";
                            a.push({url: d, timeout: 5E3, maxCount: 3, retryTime: 0});
                            for (e = 0; e < b.length; e++)-1 != a[0].url.indexOf("//api.live.letvcloud.com/") && (f = d.replace("//api.live.letvcloud.com/", b[e]), a.push({
                                url: f,
                                timeout: 5E3,
                                maxCount: 3,
                                retryTime: 0
                            }));
                            return a
                        };
                        a.prototype.loadCmp = function (a, b) {
                            if (!this.isClose) {
                                a = BaseCode.decode(a.value);
                                a = jsonTool.stringToJson(a);
                                this.log("config data" + jsonTool.jsonToString(a) + "----time:" + jsonTool.jsonToString(b));
                                var f = this.model,
                                        e = {};
                                e.userId = a.customerId;
                                f.userData.refresh(e);
                                e = {};
                                e.liveId = a.liveId;
                                for (var g = {}, h = 0; h < a.streams.length; h++) {
                                    var k = a.streams[h];
                                    if (1 == k.streamState) {
                                        g.hasOwnProperty(k.rateType) || (g[k.rateType] = {}, g[k.rateType].videoWidth = k.width, g[k.rateType].videoHeight = k.height, g[k.rateType].sid = k.streamId, g[k.rateType].definition = k.rateName, g[k.rateType].urls = []);
                                        g[k.rateType].urls.push(k.streamUrl);
                                        break
                                    }
                                }
                                e.media = g;
                                f.videoSetting.refresh(e);
                                this.dispatchEvent(new Event(LoadEvent.LOADCMP, [a, b]))
                            }
                        };
                        return a
                    }(),
                    ActiveIdProxy = function () {
                        function a(a) {
                            this.model = a
                        }

                        var b = ["//106.39.244.239/", "//111.206.211.221/", "//223.95.79.18/"];
                        ClassTool.inherits(a, Proxy);
                        a.prototype.getRequestList = function () {
                            var a = [], d = "http://api.live.letvcloud.com/rtmp/getActivityInfoForPlayer?ver=v4&keyType=1", f = ["activityId", "domain", "p", "customerId"];
                            this.getP();
                            for (var e = 0; e < f.length; e++) {
                                var g = f[e];
                                this.model.config.hasOwnProperty(g) && (d = "domain" == g ? d + ("&key=" + this.model.config[g]) : d + ("&" + g + "=" + this.model.config[g]))
                            }
                            d += "&cf=" + this.getCf();
                            a.push({url: d, timeout: 5E3, maxCount: 3, retryTime: 0});
                            for (e = 0; e < b.length; e++)-1 != a[0].url.indexOf("//api.live.letvcloud.com/") && (f = d.replace("//api.live.letvcloud.com/", b[e]), a.push({
                                url: f,
                                timeout: 5E3,
                                maxCount: 3,
                                retryTime: 0
                            }));
                            return a
                        };
                        a.prototype.getCf = function () {
                            switch (videoSdkTool.getDevice()) {
                                case "ipad":
                                    return "h5-ipad";
                                case "iphone":
                                    return "h5-ios";
                                case "androidPad":
                                    return "h5-androidpad";
                                case "androidPhone":
                                    return "h5-android";
                                case "wph":
                                case "pc":
                                    return "h5-win";
                                case "mac":
                                    return "h5-mac"
                            }
                            return this.model.config.hasOwnProperty("cf") ?
                                    this.model.config.cf : "other"
                        };
                        a.prototype.getP = function (a) {
                            this.model.config.hasOwnProperty("p") || (this.model.config.p = 100)
                        };
                        a.prototype.loadCmp = function (a, b) {
                            if (!this.isClose) {
                                this.log("activeProxy data" + jsonTool.jsonToString(a) + "----time:" + jsonTool.jsonToString(b));
                                var f = this.model, e = {};
                                e.activityId = a.activityId;
                                e.title = a.activityName;
                                e.isdrm = 0;
                                e.ark = a.ark;
                                e.hasAd = a.isNeedAd;
                                e.pic = a.coverImgUrl;
                                f.config.hasOwnProperty("customerId") && f.userData.refresh({userId: f.config.customerId});
                                a.hasOwnProperty("businessline") ?
                                        e.p = a.businessline : this.model.config.hasOwnProperty("p") && (e.p = this.model.config.p);
                                "http" != e.pic.substr(0, 4) && (e.pic = "");
                                for (; 0 < a.lives.length;) {
                                    e.liveId = a.lives[0].liveId;
                                    break
                                }
                                f.playerConfig.refresh({
                                    mloadingUrl: "",
                                    loadingUrl: "",
                                    logo: {pic: "", pos: "", url: ""}
                                });
                                var g = 1;
                                a.hasOwnProperty("activityState") && (g = a.activityState, e.activityStatus = g + "");
                                if (1 == g || f.config.hasOwnProperty("endToLiveback") && f.config.endToLiveback && 3 == g)f.videoSetting.refresh(e), this.dispatchEvent(new Event(LoadEvent.LOADCMP, [a,
                                    b])); else {
                                    f = {code: ERR.INTERRUPT};
                                    switch (g + "") {
                                        case "2":
                                            f = {code: ERR.INTERRUPT};
                                            break;
                                        case "3":
                                            f = {code: ERR.END};
                                            break;
                                        case "0":
                                            f = {code: ERR.NOSTART}
                                    }
                                    f.message = GlobalHandler.liveInfoMap[g];
                                    this.dispatchEvent(new Event(LoadEvent.LOADERROR, [f, b]))
                                }
                            }
                        };
                        a.prototype.loadError = function (a, b) {
                            this.isClose || this.dispatchEvent(new Event(LoadEvent.LOADERROR, [{
                                code: ERR.ACTIVITY_TIMEOUT,
                                errInfo: "url:" + this.getUrl()
                            }, b]))
                        };
                        return a
                    }(), LiveIdProxy = function () {
                        function a(a) {
                            this.model = a
                        }

                        var b = ["//183.247.178.242/v3", "//111.206.211.222/v3",
                            "//106.39.244.240/v3"];
                        ClassTool.inherits(a, Proxy);
                        a.prototype.getRequestList = function () {
                            for (var a = [], d = "http://api.live.letvcloud.com/v3/rtmp/rtmplive/playInfo?playType=2&keyType=1", f = ["liveId", "domain", "p", "customerId"], e = 0; e < f.length; e++) {
                                var g = f[e];
                                this.model.config.hasOwnProperty(g) ? d = "domain" == g ? d + ("&key=" + this.model.config[g]) : d + ("&" + g + "=" + this.model.config[g]) : this.model.videoSetting.hasOwnProperty(g) && (d += "&" + g + "=" + this.model.videoSetting[g])
                            }
                            if (this.model.config.hasOwnProperty("utoken") &&
                                    this.model.config.hasOwnProperty("cuid"))d += "&utoken=" + this.model.config.utoken, d += "&cuid=" + this.model.config.cuid; else if (this.model.config.hasOwnProperty("callbackJs")) {
                                var h;
                                videoSdkTool.isFunction(WIN[this.model.config.callbackJs]) && (h = WIN[this.model.config.callbackJs](PlayerEvent.USER_INFO));
                                h && h.hasOwnProperty("utoken") && h.hasOwnProperty("cuid") && (d += "&utoken=" + h.utoken, d += "&cuid=" + h.cuid)
                            }
                            d += "&clientType=4";
                            a.push({url: d, timeout: 5E3, maxCount: 3, retryTime: 0});
                            for (e = 0; e < b.length; e++)-1 != a[0].url.indexOf("//api.live.letvcloud.com/v3") &&
                            (f = d.replace("//api.live.letvcloud.com/v3", b[e]), a.push({
                                url: f,
                                timeout: 5E3,
                                maxCount: 3,
                                retryTime: 0
                            }));
                            return a
                        };
                        a.prototype.loadCmp = function (a, b) {
                            if (!this.isClose) {
                                a = BaseCode.utf8to16(BaseCode.decode(a.value));
                                a = jsonTool.stringToJson(a);
                                this.log("liveid data" + jsonTool.jsonToString(a) + "----time:" + jsonTool.jsonToString(b));
                                var f = this.model, e = {};
                                e.userId = a.customerId;
                                f.userData.refresh(e);
                                e = {};
                                e.liveId = a.liveId;
                                this.model.config.hasOwnProperty("activityId") || (e.ark = 0, e.hasAd = !1, e.pic = "", e.isdrm = 0, f.playerConfig.refresh({
                                    mloadingUrl: "",
                                    loadingUrl: "", logo: {pic: "", pos: "", url: ""}
                                }));
                                var g = {}, h = !1;
                                this.model.defaultDefinitionList = [];
                                f.liveback = !1;
                                f.config.hasOwnProperty("activityId") && f.videoSetting.hasOwnProperty("activityStatus") && 3 == f.videoSetting.activityStatus && (f.liveback = !0);
                                for (var k = 0; k < a.streams.length; k++) {
                                    var l = a.streams[k];
                                    if (!f.liveback && 1 == l.streamState || f.liveback && 0 < l.streamState)g.hasOwnProperty(l.rateType) || (g[l.rateType] = {}, g[l.rateType].videoWidth = l.width, g[l.rateType].videoHeight = l.height, g[l.rateType].sid = l.streamId,
                                            g[l.rateType].definition = l.rateName, g[l.rateType].vtype = l.rateType, g[l.rateType].urls = []), g[l.rateType].urls.push(l.streamUrl), this.model.defaultDefinitionList.push(l.rateType), h = !0
                                }
                                h ? (e.defaultDefinition = this.model.defaultDefinitionList[0], e.media = g, f.videoSetting.refresh(e), this.dispatchEvent(new Event(LoadEvent.LOADCMP, [a, b]))) : (f = a.streams[0], e = {code: ERR.INTERRUPT}, 0 == f.streamState ? e = {code: ERR.NOSTART} : 2 == f.streamState ? e = {code: ERR.INTERRUPT} : 3 == f.streamState && (e = {code: ERR.END}), e.message = GlobalHandler.liveInfoMap[f.streamState],
                                        e.errInfo = "url:" + this.getUrl() + " respponse:" + jsonTool.jsonToString(a), this.dispatchEvent(new Event(LoadEvent.LOADERROR, [e, b])))
                            }
                        };
                        a.prototype.loadError = function (a, b) {
                            this.isClose || this.dispatchEvent(new Event(LoadEvent.LOADERROR, [{
                                code: ERR.LIVE_IO,
                                errInfo: "url:" + this.getUrl()
                            }, b]))
                        };
                        return a
                    }(), StreamIdProxy = function () {
                        function a(a) {
                            this.model = a
                        }

                        var b = ["//183.247.178.242/v3", "//111.206.211.222/v3", "//106.39.244.240/v3"];
                        ClassTool.inherits(a, LiveIdProxy);
                        a.prototype.getRequestList = function () {
                            for (var a =
                                    [], d = "http://api.live.letvcloud.com/v3/rtmp/rtmplive/playInfo?playType=2&keyType=1", f = ["streamId", "domain"], e = 0; e < f.length; e++) {
                                var g = f[e];
                                this.model.config.hasOwnProperty(g) && (d = "domain" == g ? d + ("&key=" + this.model.config[g]) : d + ("&" + g + "=" + this.model.config[g]))
                            }
                            d += "&clientType=4";
                            a.push({url: d, timeout: 5E3, maxCount: 3, retryTime: 0});
                            for (e = 0; e < b.length; e++)-1 != a[0].url.indexOf("//api.live.letvcloud.com/v3") && (f = d.replace("//api.live.letvcloud.com/v3", b[e]), a.push({
                                url: f,
                                timeout: 5E3,
                                maxCount: 3,
                                retryTime: 0
                            }));
                            return a
                        };
                        return a
                    }(), ActStatusProxy = function () {
                        function a(a) {
                            this.model = a;
                            this.needLiveId = !0
                        }

                        var b = ["//106.39.244.239/", "//111.206.211.221/", "//223.95.79.18/"];
                        ClassTool.inherits(a, Proxy);
                        a.prototype.getRequestList = function () {
                            var a = [], d = "http://api.live.letvcloud.com/rtmp/getActivityStatus?ver=v4", f = ["activityId", "liveId", "streamId"];
                            this.needLiveId || (f = ["activityId"]);
                            for (var e = 0; e < f.length; e++) {
                                var g = f[e];
                                this.model.config.hasOwnProperty(g) ? d += "&" + g + "=" + this.model.config[g] : this.model.videoSetting.hasOwnProperty(g) &&
                                (d += "&" + g + "=" + this.model.videoSetting[g])
                            }
                            d += "&clientType=4";
                            a.push({url: d, timeout: 5E3, maxCount: 3, retryTime: 0});
                            for (e = 0; e < b.length; e++)-1 != a[0].url.indexOf("//api.live.letvcloud.com/") && (f = d.replace("//api.live.letvcloud.com/", b[e]), a.push({
                                url: f,
                                timeout: 5E3,
                                maxCount: 3,
                                retryTime: 0
                            }));
                            return a
                        };
                        a.prototype.loadCmp = function (a, b) {
                            this.isClose || (this.log("\u76f4\u64ad\u72b6\u6001\u63a5\u53e3\u8fd4\u56de\uff1a" + a), a.hasOwnProperty("errCode") || a.hasOwnProperty("status") && this.dispatchEvent(new Event(LoadEvent.LOADCMP,
                                    [a.status, b])))
                        };
                        return a
                    }(), HttpDNSProxy = function () {
                        function a(a) {
                            this.model = a;
                            this.requestType = 2
                        }

                        var b = [];
                        ClassTool.inherits(a, Proxy);
                        a.prototype.getRequestList = function () {
                            var a = [];
                            a.push({
                                url: "http://hdns.lecloud.com/d?dn=r.gslb.lecloud.com",
                                timeout: 2E3,
                                maxCount: 2,
                                retryTime: 0
                            });
                            for (var d = 0; d < b.length; d++)if (-1 != a[0].url.indexOf(replace)) {
                                var f = "http://hdns.lecloud.com/d?dn=r.gslb.lecloud.com".replace(replace, b[d]);
                                a.push({url: f, timeout: 2E3, maxCount: 2, retryTime: 0})
                            }
                            return a
                        };
                        a.prototype.loadCmp =
                                function (a, b) {
                                    this.isClose || this.dispatchEvent(new Event(LoadEvent.LOADCMP, [a, b]))
                                };
                        a.prototype.loadError = function (a, b) {
                            this.isClose || this.dispatchEvent(new Event(LoadEvent.LOADERROR, [{
                                code: ERR.ACTIVITY_TIMEOUT,
                                errInfo: "url:" + this.getUrl()
                            }, b]))
                        };
                        return a
                    }(), GslbProxy = function () {
                        function a(a) {
                            this.model = a
                        }

                        ClassTool.inherits(a, Proxy);
                        a.prototype.getRequestList = function () {
                            var a = [], c = videoSdkTool.clone(this.model.videoSetting.urls);
                            videoSdkTool.addUrlParams(c, {jsonp: "?", _r: "jsonp", format: 1, expect: 3});
                            for (var d = 0; d < c.length; d++) {
                                var f = this.checkGslbUrl(c[d]);
                                a.push({url: f, timeout: 1E4, maxCount: 3, retryTime: 0})
                            }
                            return a
                        };
                        a.prototype.checkGslbUrl = function (a) {
                            "ios" == this.model.vodPlayType && -1 == a.indexOf("&tss=ios&") && (a = -1 != a.indexOf("&tss=no&") ? a.replace("&tss=no&", "&tss=ios&") : a + "&tss=ios");
                            "mp4" == this.model.vodPlayType && -1 == a.indexOf("&tss=no&") && (a = -1 != a.indexOf("&tss=ios&") ? a.replace("&tss=ios&", "&tss=no&") : a + "&tss=no");
                            return a
                        };
                        a.prototype.loadCmp = function (a, c) {
                            if (!this.isClose)if (this.log("gslb data:" +
                                            jsonTool.jsonToString(a) + " time" + jsonTool.jsonToString(c)), 200 == a.status) {
                                a.ercode = "0";
                                for (var d = [a.location], f = 0; f < a.nodelist.length; f++)a.nodelist[f].location != d[0] && d.push(a.nodelist[f].location);
                                this.dispatchEvent(new Event(LoadEvent.LOADCMP, d))
                            } else this.dispatchEvent(new Event(LoadEvent.LOADERROR, [{
                                code: ERR.GSLB_ANALY,
                                message: "\u8c03\u5ea6\u9519\u8bef"
                            }, c]))
                        };
                        a.prototype.loadError = function (a, c) {
                            this.isClose || this.dispatchEvent(new Event(LoadEvent.LOADERROR, [{
                                code: ERR.GSLB_IO, errInfo: "url:" +
                                this.getUrl()
                            }, c]))
                        };
                        return a
                    }(), Reporter = function () {
                        function a() {
                            this.lastTime = this.pt = 0;
                            this.isStartPlay = this.isPauseRecord = !1;
                            this.state = "";
                            this.replaytype = 1
                        }

                        function b(a) {
                            this.model = a;
                            this.reset()
                        }

                        var c = {
                            pc: {value: 30, sub: {value: 300}},
                            sdk: {value: 32, sub: {value: 321, ios: {value: 321}, android: {value: 322}}},
                            html5: {
                                value: 31,
                                sub: {value: 310, ios: {value: 311}, android: {value: 312}, pc: {value: 310}}
                            }
                        }, d = {android: 600, ios: 601};
                        b.prototype = {
                            init: function () {
                                this.model.reportParam.p1 = 3;
                                this.model.reportParam.p2 = c[this.model.platform.toLowerCase()].value;
                                c[this.model.platform.toLowerCase()].sub.hasOwnProperty(this.model.systemData.os.toLowerCase()) ? this.model.reportParam.p3 = c[this.model.platform.toLowerCase()].sub[this.model.systemData.os.toLowerCase()].value : this.model.reportParam.p3 = c[this.model.platform.toLowerCase()].sub.value
                            }, reset: function () {
                                this.heartTimer && (this.heartTimer.stop(), this.heartTimer = null);
                                this.reportParam = new a
                            }, onStateChanged: function (a, b) {
                                b = jsonTool.stringToJson(b);
                                logTool.log("[Stat K \u65e5\u5fd7\u6570\u636e]  type:" + a + " data:" +
                                        b);
                                switch (a) {
                                    case "init":
                                        this.reportParam.isStartPlay = !1;
                                        this.model.init(b);
                                        this.init();
                                        this.sendEnvStat();
                                        break;
                                    case "start":
                                        this.reportParam.isStartPlay = !1;
                                        this.sendPlayStat("init");
                                        break;
                                    case "play":
                                        this.reportParam.isStartPlay || (this.sendPlayStat("play", b), this.startHeartTimer(), this.resumePtStat(), this.reportParam.isStartPlay = !0);
                                        break;
                                    case "bufferEmpty":
                                        this.reportParam.state != a && this.reportParam.isStartPlay && (this.pausePtStat(), this.sendPlayStat("block"));
                                        break;
                                    case "bufferFull":
                                        "bufferEmpty" ==
                                        this.reportParam.state && this.reportParam.isStartPlay && (this.resumePtStat(), this.sendPlayStat("eblock"));
                                        this.reportParam.isStartPlay || (this.reportParam.isStartPlay = !0);
                                        break;
                                    case "seek":
                                        this.reportParam.isStartPlay && (this.pausePtStat(), this.sendPlayStat("drag", {py: {dr: this.model.videoInfo().time + "_" + b.time}}));
                                        break;
                                    case "pause":
                                        this.reportParam.state != a && this.reportParam.isStartPlay && (this.pausePtStat(), this.sendPlayStat("pa"));
                                        break;
                                    case "resume":
                                        this.reportParam.isStartPlay && this.resumePtStat();
                                        break;
                                    case "definition":
                                        this.reportParam.isStartPlay && (this.pausePtStat(), this.model.videoSetting.definitionCount++, this.reportParam.replaytype = 2, this.sendPlayStat("tg"));
                                        break;
                                    case "stopPlay":
                                        this.reportParam.isStartPlay && (this.reportParam.isStartPlay = !1, this.pausePtStat(), this.pauseHeadStat(), this.sendPlayStat("end"));
                                        break;
                                    case "playStop":
                                        this.reportParam.isStartPlay && (this.reportParam.isStartPlay = !1, this.pauseHeadStat(), this.sendPlayStat("end"), this.sendPlayStat("finish"));
                                        break;
                                    case "hide":
                                        null !=
                                        this.heartTimer && this.reportParam.isStartPlay && (this.pausePtStat(!0), this.heartTimer.stop());
                                        break;
                                    case "show":
                                        null != this.heartTimer && this.reportParam.isStartPlay && (this.resumePtStat(!0), this.heartTimer.start());
                                        break;
                                    case "error":
                                        this.reportParam.isStartPlay = !1, this.sendErrorStat(b), null != this.heartTimer && this.heartTimer.stop()
                                }
                                this.reportParam.state = a
                            }, startHeartTimer: function () {
                                this.heartTimer ? this.heartTimer.running || (this.setDelay(), this.heartTimer.start()) : (this.heartTimer = new Timer(18E4, this,
                                        this.heartHanlder), this.setDelay(), this.heartTimer.start())
                            }, pauseHeadStat: function () {
                                this.heartHanlder();
                                this.heartTimer && this.heartTimer.stop()
                            }, setDelay: function () {
                                if (this.heartTimer)switch (this.heartTimer.currentCount) {
                                    case 0:
                                        this.heartTimer.delay = 15E3;
                                        break;
                                    case 1:
                                        this.heartTimer.delay = 6E4;
                                        break;
                                    default:
                                        this.heartTimer.delay = 18E4
                                }
                            }, heartHanlder: function () {
                                this.pausePtStat(!0);
                                this.resumePtStat(!0);
                                this.setDelay();
                                this.sendPlayStat("time");
                                this.reportParam.pt = 0
                            }, pausePtStat: function (a) {
                                "undefined" == typeof a && (a = !1);
                                var b = videoSdkTool.now();
                                this.reportParam.isPauseRecord || 0 == this.reportParam.lastTime || (this.reportParam.pt += b - this.reportParam.lastTime);
                                0 == this.reportParam.lastTime && (this.reportParam.pt = 0);
                                this.reportParam.lastTime = b;
                                a || (this.reportParam.isPauseRecord = !0)
                            }, resumePtStat: function (a) {
                                "undefined" == typeof a && (a = !1);
                                var b = videoSdkTool.now();
                                this.reportParam.lastTime = b;
                                a || (this.reportParam.isPauseRecord = !1)
                            }, sendEnvStat: function () {
                                var a, b = this.model;
                                a = "http://apple.www.letv.com/env/?ver=3.0.5&p1=" +
                                        this.model.reportParam.p1;
                                a += "&p2=" + this.model.reportParam.p2;
                                a += "&p3=" + this.model.reportParam.p3;
                                "html5" == this.model.platform && (a += "&lc=" + b.lc());
                                "sdk" == this.model.platform && (a += "&auid=" + b.auid());
                                a += "&uuid=" + b.uuid();
                                a += "&mac=" + b.systemData.mac;
                                a += "&nt=" + b.systemData.nt;
                                a += "&os=" + b.systemData.os;
                                a += "&osv=" + b.systemData.osv;
                                a += "&app=" + b.systemData.appv;
                                a += "&bd=" + encodeURIComponent(b.systemData.bd);
                                a += "&xh=" + encodeURIComponent(b.systemData.xh);
                                a += "&ro=" + encodeURIComponent(b.systemData.ro);
                                a += "&src=pl";
                                a += "&ch=" + b.getTypeFrom();
                                a += "&cs=" + encodeURIComponent(b.systemData.cs);
                                a += "&ssid=" + encodeURIComponent(b.systemData.ssid);
                                a += "&lo=" + encodeURIComponent(b.systemData.lo);
                                a += "&la=" + encodeURIComponent(b.systemData.la);
                                a += "&apprunid=" + b.apprunid();
                                a += "&r=" + Math.random();
                                this.report(a)
                            }, sendPlayStat: function (a, b) {
                                var c, h = this.model;
                                c = "http://apple.www.letv.com/cloud_pl/?ver=3.0.5&p1=" + this.model.reportParam.p1;
                                c += "&p2=" + this.model.reportParam.p2;
                                c += "&p3=" + this.model.reportParam.p3;
                                c += "&ac=" + a;
                                c += "&prg=" +
                                        h.videoInfo().time;
                                "time" == a && (18E4 < this.reportParam.pt && (this.reportParam.pt = 18E4), 0 > this.reportParam.pt && (this.reportParam.pt = 0), c += "&pt=" + Math.abs(Math.round(0.001 * this.reportParam.pt)));
                                "html5" == this.model.platform && (c += "&lc=" + h.lc());
                                "sdk" == this.model.platform && (c += "&auid=" + h.auid());
                                c += "&uuid=" + h.uuid();
                                "vod" == h.playType && (c += "&cid=" + h.videoSetting.cid, "" != h.videoSetting.pid && (c += "&pid=" + h.videoSetting.pid), c += "&vid=" + h.videoSetting.vid, c += "&ty=0", c += "&vlen=" + h.videoSetting.duration);
                                "live" ==
                                h.playType && (c += "&lid=" + h.videoSetting.lid, c += "&sid=" + h.videoSetting.sid, c += "&ty=1", c += "&vlen=6000", h.videoSetting.hasOwnProperty("activityId") && (c += "&zid=" + h.videoSetting.activityId));
                                c += "&ch=" + h.getTypeFrom();
                                c += "&vt=" + h.videoSetting.vtype;
                                c += "&pv=" + encodeURIComponent(this.model.systemData.appv);
                                "sdk" == this.model.platform && (b || (b = {}), b.hasOwnProperty("py") || (b.py = {}), b.py.replaytype = this.reportParam.replaytype);
                                this.model.videoSetting.hasOwnProperty("p") && (b || (b = {}), b.hasOwnProperty("py") || (b.py =
                                {}), b.py.p = this.model.videoSetting.p);
                                null != b && b.hasOwnProperty("py") && (c += "&py=" + encodeURIComponent(videoSdkTool.objectParseToString(b.py)));
                                "sdk" == this.model.platform && (c += "&pcode=" + this.model.pcode(), c += "&nt=" + h.systemData.nt);
                                c += "&ap=" + this.model.config.autoplay;
                                "init" == a && "sdk" == this.model.platform && (c += "&cdev=" + h.systemData.cdev, c += "&caid=" + d[h.systemData.os.toLowerCase()]);
                                "play" == a && (c += "&pay=0", b && b.hasOwnProperty("cv") && (c += "&stc=" + encodeURIComponent(videoSdkTool.objectParseToString(b.cv.stc)),
                                        c += "&joint=" + b.cv.joint));
                                c += "&prl=0";
                                c += "&ctime=" + videoSdkTool.now();
                                c += "&custid=" + h.userInfo().userId;
                                c += "&ipt=0";
                                c += "&owner=1";
                                c += "&apprunid=" + h.apprunid();
                                "sdk" != this.model.platform && (c += "&url=" + encodeURIComponent(window.location.href), c += "&ref=" + encodeURIComponent(document.referrer));
                                c += "&r=" + Math.random();
                                this.report(c)
                            }, sendErrorStat: function (a) {
                                var b, c = this.model;
                                b = "http://apple.www.letv.com/er/?ver=3.0.5&p1=" + this.model.reportParam.p1;
                                b += "&p2=" + this.model.reportParam.p2;
                                b += "&p3=" + this.model.reportParam.p3;
                                b += "&et=pl";
                                b += "&err=" + a.errcode;
                                "html5" == this.model.platform && (b += "&lc=" + c.lc());
                                "sdk" == this.model.platform && (b += "&auid=" + c.auid());
                                b += "&mac=" + c.systemData.mac;
                                b += "&nt=" + c.systemData.nt;
                                b += "&os=" + c.systemData.os;
                                b += "&osv=" + c.systemData.osv;
                                b += "&app=" + c.systemData.appv;
                                b += "&bd=" + c.systemData.bd;
                                b += "&xh=" + c.systemData.xh;
                                b += "&ro=" + c.systemData.ro;
                                "vod" == c.playType && (b += "&cid=" + c.videoSetting.cid, "" != c.videoSetting.pid && (b += "&pid=" + c.videoSetting.pid), b += "&vid=" + c.videoSetting.vid);
                                "live" == c.playType &&
                                (b += "&lid=" + c.videoSetting.lid, b += "&sid=" + c.videoSetting.sid);
                                a = {ch: c.getTypeFrom(), custid: c.userInfo().userId};
                                this.model.videoSetting.hasOwnProperty("p") && (a.p = this.model.videoSetting.p);
                                for (var d = ["uu", "vu", "liveId", "streamId", "activityId"], k = 0; k < d.length; k++)c.config.hasOwnProperty(d[k]) && (a[d[k]] = c.config[d[k]]);
                                b += "&ep=" + encodeURIComponent(videoSdkTool.objectParseToString(a));
                                b += "&ap=" + c.config.autoplay;
                                b += "&uuid=" + c.uuid();
                                b += "&apprunid=" + c.apprunid();
                                b += "&r=" + Math.random();
                                this.report(b)
                            },
                            report: function (a) {
                                a = DomainTool.getDomain(a, this.model.config.lang);
                                if ("html5" == this.model.platform) {
                                    logTool.log("[Stat K]  url:" + a);
                                    var b = new Image(1, 1);
                                    b.onload = b.onerror = b.onabort = function () {
                                        b = b.onload = b.onerror = b.onabort = null
                                    };
                                    b.src = a
                                }
                                "sdk" == this.model.platform && ExternalInterface.callSDK(this.model.systemData.os, "logRequest", {url: a})
                            }
                        };
                        return b
                    }(), ModelHandler = function () {
                        function a(a) {
                            this.model = a;
                            this.DelayT = 0;
                            this.isComplete = this.getUrlsList = !1
                        }

                        var b = {"r.gslb.lecloud.com": ""};
                        ClassTool.inherits(a,
                                ClassObject);
                        a.prototype.setUp = function (a, d) {
                            if (this.model.config.hasOwnProperty("url")) {
                                b["r.gslb.lecloud.com"] = ["r.gslb.lecloud.com"];
                                var f = new UrlProxy(this.model);
                                f.addEventListener(LoadEvent.LOADCMP, this.dataCmp, this);
                                f.load()
                            } else this.requestHttpDNS(), this.getUrlsList = !1, a.hasOwnProperty("activityId") ? this.requestDataByActiveId() : a.hasOwnProperty("liveId") ? this.requestDataByLiveId() : a.hasOwnProperty("streamId") ? this.requestDataByStreamId() : this.dispatchEvent(new Event(LoadEvent.LOADERROR, [{code: ERR.PARAMS}]))
                        };
                        a.prototype.requestDataByLiveId = function (a) {
                            a = new LiveIdProxy(this.model);
                            a.addEventListener(LoadEvent.LOADCMP, this.dataCmp, this);
                            a.addEventListener(LoadEvent.LOADERROR, this.errorHanlder, this);
                            a.load()
                        };
                        a.prototype.requestDataByStreamId = function (a) {
                            a = new StreamIdProxy(this.model);
                            a.addEventListener(LoadEvent.LOADCMP, this.dataCmp, this);
                            a.addEventListener(LoadEvent.LOADERROR, this.errorHanlder, this);
                            a.load()
                        };
                        a.prototype.requestDataByActiveId = function (a) {
                            a = new ActiveIdProxy(this.model);
                            a.addEventListener(LoadEvent.LOADCMP,
                                    this.activeCmp, this);
                            a.addEventListener(LoadEvent.LOADERROR, this.errorHanlder, this);
                            a.load()
                        };
                        a.prototype.requestHttpDNS = function (a) {
                            a = new HttpDNSProxy(this.model);
                            a.addEventListener(LoadEvent.LOADCMP, this.onDNSCmp, this);
                            a.addEventListener(LoadEvent.LOADERROR, this.onDNSError, this);
                            a.load()
                        };
                        a.prototype.onDNSCmp = function (a) {
                            this.log("httpDNS\u89e3\u6790\u6210\u529f\uff1a" + a.args[1][0]);
                            b["r.gslb.lecloud.com"] = a.args[1][0].split(";");
                            b["r.gslb.lecloud.com"].push("r.gslb.lecloud.com");
                            this.getUrlsList &&
                            this.refreshUrlsData()
                        };
                        a.prototype.onDNSError = function (a) {
                            this.log("httpDNS\u89e3\u6790\u5931\u8d25");
                            b["r.gslb.lecloud.com"] = ["r.gslb.lecloud.com"];
                            this.getUrlsList && this.refreshUrlsData()
                        };
                        a.prototype.activeCmp = function (a) {
                            this.requestDataByLiveId()
                        };
                        a.prototype.activeConfig = function (a) {
                            a = new ConfigProxy(this.model);
                            a.addEventListener(LoadEvent.LOADCMP, this.configCmp, this);
                            a.load()
                        };
                        a.prototype.configCmp = function (a) {
                            this.requestDataByLiveId()
                        };
                        a.prototype.errorHanlder = function (a) {
                            this.dispatchEvent(new Event(LoadEvent.LOADERROR,
                                    a.args[1]))
                        };
                        a.prototype.dataCmp = function (a) {
                            this.isComplete = !1;
                            this.getUrlsList = !0;
                            if ("" != b["r.gslb.lecloud.com"])this.log("httpDNS\u89e3\u6790\u5df2\u7ecf\u6210\u529f"), this.refreshUrlsData(); else {
                                var d = this;
                                this.log("httpDNS\u89e3\u6790\u672a\u6210\u529f");
                                d.DelayT = setTimeout(function () {
                                    d.log("httpDNS\u89e3\u6790\u8d85\u8fc7\u6700\u5927\u7b49\u5f85\u65f6\u95f4\uff0c1000");
                                    d.refreshUrlsData.call(d)
                                }, 1E3)
                            }
                        };
                        a.prototype.destroy = function () {
                        };
                        a.prototype.refreshLoadingData = function () {
                            this.model.config.hasOwnProperty("loadingurl") &&
                            (this.model.playerConfig.mloadingUrl = 0 == this.model.config.loadingurl ? this.model.playerConfig.loadingUrl : this.model.config.loadingurl)
                        };
                        a.prototype.refreshUrlsData = function () {
                            this.DelayT && clearTimeout(this.DelayT);
                            if (!this.isComplete) {
                                this.isComplete = !0;
                                if ("" != b["r.gslb.lecloud.com"])for (var a in this.model.videoSetting.media) {
                                    for (var d = [], f = 0; f < this.model.videoSetting.media[a].urls.length; f++)for (var e = 0; e < b["r.gslb.lecloud.com"].length; e++)if ("" != b["r.gslb.lecloud.com"][e]) {
                                        var g = this.model.videoSetting.media[a].urls[f].replace("r.gslb.lecloud.com",
                                                b["r.gslb.lecloud.com"][e]);
                                        d.push(g)
                                    }
                                    0 < d.length && (this.model.videoSetting.media[a].urls = d)
                                }
                                this.dispatchEvent(new Event(LoadEvent.LOADCMP))
                            }
                        };
                        return a
                    }(), BasePlayer = function () {
                        function a() {
                        }

                        ClassTool.inherits(a, ClassObject);
                        a.prototype.init = function () {
                            this.playUrlList = [];
                            this.isFtc = this.startPlay = this.autoplay = !1;
                            this.playState = 0;
                            this.render = null;
                            this.emptyDelay = 1E3
                        };
                        a.prototype.setConfig = function (a) {
                        };
                        a.prototype.errorHandler = function (a) {
                            1 < this.playUrlList.length && a && a.code && 4 != a.code ? (this.playUrlList.shift(),
                                    this.log("\u64ad\u653e\u5931\u8d25\uff0c errCode:" + a.code + ",\u5207\u6362\u4e0b\u4e00\u4e2a\u5730\u5740:" + this.playUrlList[0]), this.changeurl(this.playUrlList[0])) : (a.hasOwnProperty("retryCdn") || (a.retryCdn = !0), a.hasOwnProperty("code") || (a.code = ERR.PLAY_TIMEOUT), this.log("\u64ad\u653e\u5931\u8d25: errCode:" + a.code + ",url:" + this.playUrlList[0]), this.dispatchEvent(new Event(MediaEvent.EVENT, MediaEvent.ERROR, [a])))
                        };
                        a.prototype.onPlaySeekHandler = function () {
                            this.emptyST && clearTimeout(this.emptyST);
                            this.startPlay &&
                            (this.playState = 5, this.dispatchEvent(new Event(MediaEvent.EVENT, MediaEvent.SEEK, this.getTime())))
                        };
                        a.prototype.onPlayFullHandler = function () {
                            this.startPlay || (this.startPlay = !0, this.dispatchEvent(new Event(MediaEvent.EVENT, MediaEvent.START)), this.render && this.render.start());
                            1 != this.playState && (this.playState = 1, this.dispatchEvent(new Event(MediaEvent.EVENT, MediaEvent.BUFFEREFULL, this.getTime())));
                            this.emptyST && clearTimeout(this.emptyST)
                        };
                        a.prototype.onPlayEmptyHandler = function () {
                            var a = this;
                            a.emptyST &&
                            clearTimeout(a.emptyST);
                            a.startPlay && 3 != a.playState && (5 != a.playState ? (a.playState = 3, a.emptyST = setTimeout(function () {
                                a.dispatchEvent(new Event(MediaEvent.EVENT, MediaEvent.BUFFEREMPTY, a.getTime()))
                            }, a.emptyDelay)) : (a.playState = 3, a.dispatchEvent(new Event(MediaEvent.EVENT, MediaEvent.SEEKEMPTY, a.getTime()))))
                        };
                        a.prototype.onPlaStopHandler = function () {
                            this.emptyST && clearTimeout(this.emptyST);
                            4 != this.playState && (this.playState = 4, this.dispatchEvent(new Event(MediaEvent.EVENT, MediaEvent.STOP, !0)))
                        };
                        a.prototype.onPlayHandler =
                                function () {
                                    this.emptyST && clearTimeout(this.emptyST);
                                    this.playState = 1;
                                    this.dispatchEvent(new Event(MediaEvent.EVENT, MediaEvent.PLAY, this.getTime()))
                                };
                        a.prototype.onPauseHandler = function () {
                            this.emptyST && clearTimeout(this.emptyST);
                            this.playState = 2;
                            this.dispatchEvent(new Event(MediaEvent.EVENT, MediaEvent.PAUSE, this.getTime()))
                        };
                        a.prototype.onPlayIngHandler = function () {
                            var a = this.getTime();
                            if (0 <= a && !this.isFtc)if (0 < a)this.log("\u7b2c\u4e00\u6b21\u83b7\u5f97\u975e0\u7684\u64ad\u653e\u65f6\u95f4" + a), this.isFtc = !0, this.onPlayFullHandler(); else if ("iphone" == videoSdkTool.getDevice() && "qq" == videoSdkTool.getBrowser())this.onPlayFullHandler();
                            this.startPlay && this.dispatchEvent(new Event(MediaEvent.EVENT, MediaEvent.PLAYING, a))
                        };
                        a.prototype.onLoadIngHandler = function () {
                            this.dispatchEvent(new Event(MediaEvent.EVENT, MediaEvent.LODING, this.getLoadPercent()))
                        };
                        a.prototype.onMetaDataHandler = function (a) {
                            this.videoWidth = a.width || 0;
                            this.videoHeight = a.height || 0;
                            !this.mduration || 0 != a.duration && isFinite(a.duration) || (a.duration =
                                    this.mduration);
                            0 < this.videoWidth && 0 < this.videoHeight && !this.hasMetadata && (this.setSize(), this.hasMetadata = !0, this.dispatchEvent(new Event(MediaEvent.EVENT, MediaEvent.METADATA, {
                                videoWidth: this.videoWidth,
                                videoHeight: this.videoHeight,
                                duration: this.duration
                            })));
                            0 < a.duration && isFinite(a.duration) && this.duration != a.duration && (this.duration = a.duration, this.dispatchEvent(new Event(MediaEvent.EVENT, MediaEvent.DURATION, {duration: this.duration})))
                        };
                        return a
                    }(), StreamEngine = function () {
                        function a(a) {
                        }

                        var b =
                        {
                            hls: {
                                name: "media.mediaPlay.hls", check: function () {
                                    return !0
                                }, err: {code: "", message: ""}
                            }
                        };
                        ClassTool.inherits(a, Plugin);
                        a.prototype.init = function (a) {
                            this.isStart = !1;
                            this.options = a;
                            this.getPlayType(a);
                            a.type = a.config.useHls ? "hls" : "";
                            "" == a.type ? (this.eg = a.video, a.hasOwnProperty("onstart") && a.onstart && a.onstart()) : (this.log("\u521d\u59cb\u5316\u64ad\u653e\u5f15\u64ce" + this.eg), this.eg ? a.type != this.eg.type ? this.eg = a.video : this.eg.reset(a) : this.eg = this.initPlugin(a, this.pluginOk, b))
                        };
                        a.prototype.getPlayType =
                                function (a) {
                                    a = a.url;
                                    var b = "";
                                    a = a.split("?")[0];
                                    return b = a.substr(a.lastIndexOf(".") + 1)
                                };
                        a.prototype.getVideo = function (a) {
                            return this.eg
                        };
                        a.prototype.pluginOk = function (a) {
                            a ? (this.eg = new a(this.options), this.eg.init()) : this.eg = null
                        };
                        a.prototype.start = function () {
                            this.isStart || (this.isStart = !0)
                        };
                        a.prototype.close = function () {
                            this.log("\u5173\u95ed\u6d41\u5f15\u64ce" + this.eg);
                            this.eg && this.eg.tagName && "VIDEO" == this.eg.tagName && (this.eg.pause(), this.eg.src = "");
                            this.isStart = !1
                        };
                        a.prototype.setSize = function (a,
                                                        b) {
                        };
                        return a
                    }(), RenderEngine = function () {
                        function a(a) {
                        }

                        var b = {
                            pano: {
                                name: "PanoRender",
                                check: videoSdkTool.checkPano,
                                err: {code: "", message: ""}
                            }
                        };
                        ClassTool.inherits(a, Plugin);
                        a.prototype.init = function (a) {
                            this.isStart = !1;
                            this.options = a;
                            this.log("\u521d\u59cb\u5316\u6e32\u67d3\u5f15\u64ce" + this.eg);
                            this.eg ? a.type != this.eg.type ? this.eg = null : this.eg.reset(a) : this.initPlugin(a, this.pluginOk, b)
                        };
                        a.prototype.pluginOk = function (a) {
                            this.eg = a ? new a(this.options) : null
                        };
                        a.prototype.start = function () {
                            this.isStart ||
                            (this.isStart = !0, this.eg && this.eg.start())
                        };
                        a.prototype.close = function () {
                            this.log("\u5173\u95ed\u6e32\u67d3\u5f15\u64ce" + this.eg);
                            this.eg && this.eg.close();
                            this.isStart = !1
                        };
                        a.prototype.setSize = function (a, b) {
                            this.eg && this.eg.setSize(a, b)
                        };
                        return a
                    }(), H5SamplePlayer = function () {
                        function a() {
                            var a = this;
                            this.type = "video";
                            this._videoRect = {};
                            this.videoHandlerBack = function () {
                                a.videoHandler.apply(a, arguments)
                            }
                        }

                        var b = 0, c = "error emptied abort playing play pause ended canplay waiting loadeddata loadedmetadata timeupdate seeked seeking progress durationchange".split(" ");
                        ClassTool.inherits(a, BasePlayer);
                        a.prototype.destroy = function () {
                            this.removeEvents();
                            this.stream && this.stream.close();
                            this.render && this.render.close()
                        };
                        a.prototype.setPoster = function (a) {
                            this.videoEL.poster = a
                        };
                        a.prototype.setUp = function (a, c) {
                            b++;
                            var e = "LecoudPlayer" + (new Date).getTime() + "" + b, g, h = ["preload", "controls", "width", "height"];
                            g = '<div id="v{id}" style="left:0px;top:0px;width:100%;height:100%;display: block;position: relative;"><video  id="{id}" controls="controls"  style="width:100%;height:100%;font-size: 12px;"></video></div>'.replace(/{id}/g,
                                    e);
                            c.innerHTML = g;
                            this.outEl = c;
                            this.video = this.videoEL = document.getElementById(e);
                            this.videoBox = document.getElementById("v" + e);
                            this.config = a;
                            this.isEndStartSeek = 0 < this.config.start ? !1 : !0;
                            a.hasOwnProperty("pic") && (this.videoEL.poster = a.pic);
                            a.hasOwnProperty("autoplay") && "1" == a.autoplay ? (this.videoEL.autoplay = "autoplay", this.autoplay = !0) : this.autoplay = !1;
                            a.hasOwnProperty("playsinline") && "1" == a.playsinline && (this.videoEL.WebKitPlaysInline ? this.videoEL.WebKitPlaysInline = !0 : (this.videoEL.setAttribute("webkit-playsinline",
                                    ""), this.videoEL.setAttribute("playsinline", "")));
                            a.hasOwnProperty("x5Type") && "h5" == a.x5Type && /android/.test(videoSdkTool.getDevice()) && (this.videoEL.setAttribute("x5-video-player-type", "h5"), a.hasOwnProperty("x5Fullscreen") && (a.x5Fullscreen ? this.videoEL.setAttribute("x5-video-player-fullscreen", "true") : this.videoEL.setAttribute("x5-video-player-fullscreen", "false")));
                            for (e = 0; e < h.length; e++)a.hasOwnProperty(h[e]) && "width" != h[e] && "height" != h[e] && (this.videoEL[h[e]] = a[h[e]]);
                            this.isShow = !0;
                            this.vArea =
                                    this.videoBox;
                            this.renderType = "";
                            0 < this.outEl.offsetWidth & 0 < this.outEl.offsetHeight || (this.videoBox.style.width = "99.5%", this.videoBox.style.height = "99.5%");
                            this._videoRect = {
                                x: 0,
                                y: 0,
                                width: this.outEl.offsetWidth,
                                height: this.outEl.offsetHeight
                            }
                        };
                        a.prototype.enableControls = function () {
                            this.video.controls = !0
                        };
                        a.prototype.disableControls = function () {
                            this.video.controls = !1
                        };
                        a.prototype.setContainer = function (a) {
                            this.vArea = a
                        };
                        a.prototype.setLoop = function (a) {
                        };
                        a.prototype.hide = function (a) {
                            this.isShow && (a ? this.videoBox.style.display =
                                    "none" : (this.tmpwidth = this.videoBox.style.width, this.tmpheight = this.videoBox.style.height, this.videoBox.style.width = "1px", this.videoBox.style.height = "1px", this.videoBox.style.left = "-1000px", this.videoBox.style.top = "-1000px"), this.isShow = !1)
                        };
                        a.prototype.show = function () {
                            this.isShow || (this.videoBox.style.display = "", this.videoBox.style.width = this.tmpwidth, this.videoBox.style.height = this.tmpheight, this.videoBox.style.left = "0px", this.videoBox.style.top = "0px", this.isShow = !0)
                        };
                        a.prototype.setSize = function () {
                            this.display =
                                    0 < this.outEl.offsetWidth & 0 < this.outEl.offsetHeight ? !0 : !1;
                            this.setVideoRect();
                            this.isShow && (this.config.dvideoSize ? this.display && (this.videoBox.style.width = "100%", this.videoBox.style.height = "100%") : 0 < this.videoWidth && 0 < this.videoHeight & 0 < this.outEl.offsetWidth & 0 < this.outEl.offsetHeight && (this.videoBox.style.width = this._videoRect.width + "px", this.videoBox.style.height = this._videoRect.height + "px", this.videoBox.style.top = this._videoRect.y + "px", this.videoBox.style.left = this._videoRect.x + "px"));
                            this.render &&
                            this.render.setSize(this.vArea.offsetWidth, this.vArea.offsetHeight)
                        };
                        a.prototype.setVideoRect = function () {
                            if ("pano" == this.renderType)this._videoRect = {
                                x: 0,
                                y: 0,
                                width: this.vArea.offsetWidth,
                                height: this.vArea.offsetHeight
                            }; else if (0 < this.videoWidth && 0 < this.videoHeight & 0 < this.outEl.offsetWidth & 0 < this.outEl.offsetHeight) {
                                var a, b;
                                this.videoWidth / this.videoHeight > this.outEl.offsetWidth / this.outEl.offsetHeight ? (a = this.outEl.offsetWidth, b = this.videoHeight * this.outEl.offsetWidth / this.videoWidth) : (b = this.outEl.offsetHeight,
                                        a = this.videoWidth * this.outEl.offsetHeight / this.videoHeight);
                                this._videoRect = {
                                    x: 0.5 * (this.outEl.offsetWidth - a),
                                    y: 0.5 * (this.outEl.offsetHeight - b),
                                    width: a,
                                    height: b
                                }
                            }
                        };
                        a.prototype.addEvents = function () {
                            for (var a = this.video, b = 0; b < c.length; b++)a.addEventListener(c[b], this.videoHandlerBack, !0)
                        };
                        a.prototype.removeEvents = function () {
                            for (var a = this.video, b = 0; b < c.length; b++)a.removeEventListener(c[b], this.videoHandlerBack, !0)
                        };
                        a.prototype.videoHandler = function (a) {
                            switch (a.type) {
                                case "error":
                                    if ("firefox" == videoSdkTool.getBrowser() &&
                                            null == this.video.error)break;
                                    if (this.video.error && 4 == this.video.error.code && 0 < this.getTime())break;
                                    a = {code: ERR.PLAY_TIMEOUT};
                                    this.video.error && this.video.error.code && (a.code = "49" + this.video.error.code);
                                    this.errorHandler(a);
                                    break;
                                case "playing":
                                    if (!this.startPlay)this.onMetaDataHandler({
                                        width: this.video.videoWidth,
                                        height: this.video.videoHeight,
                                        duration: this.video.duration
                                    });
                                    this.autoSeek();
                                    if (this.isEndStartSeek)this.onPlayFullHandler();
                                    this.isStartSeek && (this.isEndStartSeek = !0);
                                    break;
                                case "emptied":
                                case "waiting":
                                    this.onPlayEmptyHandler();
                                    break;
                                case "seeked":
                                    this.isEndStartSeek = !0;
                                    this.onPlayFullHandler();
                                    break;
                                case "seeking":
                                    this.onPlaySeekHandler();
                                    break;
                                case "play":
                                    this.onPlayHandler();
                                    break;
                                case "pause":
                                    this.onPauseHandler();
                                    break;
                                case "ended":
                                    this.onPlaStopHandler();
                                    break;
                                case "timeupdate":
                                    this.display || this.setSize();
                                    if (this.isEndStartSeek)this.onPlayIngHandler();
                                    break;
                                case "progress":
                                    this.onLoadIngHandler();
                                    break;
                                case "durationchange":
                                case "loadedmetadata":
                                    this.onMetaDataHandler({
                                        width: this.video.videoWidth, height: this.video.videoHeight,
                                        duration: this.video.duration
                                    })
                            }
                        };
                        a.prototype.autoSeek = function () {
                            var a = this;
                            this.log("autoSeek:" + a.config.start + "--" + a.startPlay + "-" + a.isEndStartSeek);
                            0 != a.config.start ? a.startPlay || a.isEndStartSeek ? a.isStartSeek = !0 : setTimeout(function () {
                                a.isStartSeek = !0;
                                a.seek(a.config.start)
                            }, 500) : a.isStartSeek = !0
                        };
                        a.prototype.getLoadPercent = function () {
                            if (this.video.getLoadPercent)return this.video.getLoadPercent();
                            for (var a = this.video.buffered, b = 0; b < a.length; b++)if (this.getTime() < a.end(b))return Math.min(1, a.end(b) /
                                    this.video.duration);
                            return 0
                        };
                        a.prototype.play = function (a) {
                            var b = this;
                            b.renderType = a.type;
                            b.hasMetadata = !1;
                            b.playUrlList = a.urls;
                            b.config.start = a.start;
                            b.url = b.playUrlList[0];
                            b.isEndStartSeek = 0 < b.config.start ? !1 : !0;
                            b.isStartSeek = !1;
                            this.isFtc = b.startPlay = !1;
                            this.render || (this.render = new RenderEngine);
                            this.render.init({
                                type: a.type, video: this.videoEL, el: this.vArea, onstart: function () {
                                    b.log("\u6e32\u67d3\u5f15\u64ce\u521d\u59cb\u5316\u5b8c\u6bd5\uff0c\u56de\u8c03\u64ad\u653e, url:" + b.url);
                                    b.prePlay(b.url,
                                            b.autoplay || a.play, a)
                                }, onerror: function (a) {
                                    b.log("\u6e32\u67d3\u5f15\u64ce\u521d\u59cb\u5316\u5931\u8d25");
                                    a.retryCdn = !1;
                                    b.errorHandler(a)
                                }
                            })
                        };
                        a.prototype.prePlay = function (a, b, c) {
                            var g = this;
                            g.stream || (g.stream = new StreamEngine);
                            g.stream.init({
                                video: g.videoEL, el: g.vArea, url: a, config: c, onstart: function () {
                                    g.log("\u6d41\u5f15\u64ce\u521d\u59cb\u5316\u5b8c\u6bd5\uff0c\u56de\u8c03\u64ad\u653e, url:" + g.url);
                                    g.video = g.stream.getVideo();
                                    g.addEvents();
                                    g.video.src = g.url;
                                    if (g.autoplay || play)g.video.load && g.video.load(),
                                            g.resume(c.callback)
                                }, onerror: function (a) {
                                    g.log("\u6d41\u5f15\u64ce\u521d\u59cb\u5316\u5931\u8d25");
                                    a.retryCdn = !1;
                                    g.errorHandler(a)
                                }
                            })
                        };
                        a.prototype.resume = function (a) {
                            var b = this;
                            if (this.video.play) {
                                var c = this.video.play();
                                c && c.then ? (c.then(function (b) {
                                    a && a()
                                }()), c["catch"] && c["catch"](function (a) {
                                    b.log(a)
                                })) : a && a()
                            }
                        };
                        a.prototype.pause = function () {
                            this.video.pause()
                        };
                        a.prototype.getTime = function () {
                            return this.video.getTime ? this.video.getTime() : this.video.currentTime
                        };
                        a.prototype.seek = function (a) {
                            if (this.video.seek)return this.video.seek(a);
                            this.log("seek:" + a);
                            this.video.currentTime = a
                        };
                        a.prototype.changeurl = function (a) {
                            this.url = a;
                            this.video.src = this.url;
                            this.config.start = this.getTime();
                            this.isEndStartSeek = 0 < this.config.start ? !1 : !0;
                            this.video.load();
                            this.resume()
                        };
                        a.prototype.setVol = function (a) {
                            this.videoEL.volume = a
                        };
                        a.prototype.getVol = function () {
                            return this.videoEL.volume
                        };
                        a.prototype.stop = function () {
                            this.destroy()
                        };
                        a.prototype.getVideoRect = function (a) {
                            if ("wh" == a)return {w: this.video.offsetWidth, h: this.video.offsetHeight};
                            this._videoRect.hasMetadata =
                                    this.hasMetadata;
                            return this._videoRect
                        };
                        return a
                    }(), MediaPlayer = function () {
                        function a(a) {
                            this.init(a)
                        }

                        ClassTool.inherits(a, ClassObject);
                        a.prototype.init = function (a) {
                            this.time = 0;
                            this.config = a
                        };
                        a.prototype.setUp = function (a, c) {
                            var d = videoSdkTool.clone(this.config), f = ["pic", "volume"];
                            this.loop = !1;
                            this.el = c;
                            this.volume = a.volume;
                            for (var e = 0; e < f.length; e++) {
                                var g = f[e];
                                !d.hasOwnProperty(g) && a.hasOwnProperty(g) && (d[g] = a[g])
                            }
                            this.creatPlayer(d, c)
                        };
                        a.prototype.creatPlayer = function (a, c) {
                            this.player && (this.player.removeEventListener(MediaEvent.EVENT,
                                    this.MediaHanlder, this), this.player.destroy(), this.player = null);
                            this.player = this.getPlayer(a);
                            this.player.init();
                            this.player.setUp(a, c)
                        };
                        a.prototype.setMedia = function (a) {
                        };
                        a.prototype.hide = function (a) {
                            this.player.hide(a)
                        };
                        a.prototype.show = function () {
                            this.player.show()
                        };
                        a.prototype.setConfig = function (a) {
                        };
                        a.prototype.setContainer = function (a) {
                            null != a && this.player.setContainer(a)
                        };
                        a.prototype.getPlayer = function (a) {
                            return new H5SamplePlayer
                        };
                        a.prototype.startPlay = function (a) {
                            var c = {
                                start: 0, play: !1, type: "",
                                callback: null
                            }, d;
                            for (d in c)a.hasOwnProperty(d) || (a[d] = c[d]);
                            this.destroy();
                            this.setVol(this.volume);
                            this.player.addEventListener(MediaEvent.EVENT, this.MediaHanlder, this);
                            this.player.mduration = a.duration;
                            this.player.play(a)
                        };
                        a.prototype.setSize = function () {
                            this.player.setSize()
                        };
                        a.prototype.play = function (a) {
                            this.player.resume(a)
                        };
                        a.prototype.setVol = function (a) {
                            this.player.setVol(a);
                            this.volume = a;
                            this.dispatchEvent(new Event(MediaEvent.EVENT, MediaEvent.VOL, a))
                        };
                        a.prototype.pause = function () {
                            this.player.pause()
                        };
                        a.prototype.destroy = function () {
                            this.closeVideo();
                            this.loop = !1;
                            this.player.setLoop(!1);
                            this.player.destroy()
                        };
                        a.prototype.closeVideo = function () {
                            this.player.removeEventListener(MediaEvent.EVENT, this.MediaHanlder, this);
                            this.player.stop()
                        };
                        a.prototype.getTime = function () {
                            return parseInt(this.player.getTime())
                        };
                        a.prototype.seek = function (a) {
                            0 <= a && 0 >= a - this.player.duration && (this.player.seek(a), a < this.player.duration && this.player.resume())
                        };
                        a.prototype.getBufferPercent = function (a) {
                            return 1
                        };
                        a.prototype.getLoadPercent =
                                function (a) {
                                    return this.player.getLoadPercent()
                                };
                        a.prototype.setLoop = function (a) {
                            this.loop = a;
                            this.player.setLoop(a)
                        };
                        a.prototype.MediaHanlder = function (a) {
                            switch (a.args[1]) {
                                case MediaEvent.STOP:
                                    if (this.loop) {
                                        this.seek(0);
                                        return
                                    }
                            }
                            this.dispatchEvent(a)
                        };
                        a.prototype.changeurl = function (a) {
                            this.player.changeurl(a)
                        };
                        a.prototype.getVideoRect = function (a) {
                            return this.player.getVideoRect(a)
                        };
                        a.prototype.replay = function () {
                            this.player.seek(0);
                            this.dispatchEvent(new Event(MediaEvent.EVENT, MediaEvent.REPLAY, this.getTime()))
                        };
                        a.prototype.getVideoEl = function () {
                            return this.player.videoEL
                        };
                        a.prototype.setPoster = function (a) {
                            return this.player.setPoster(a)
                        };
                        return a
                    }();
            SOTool.shareObj("media.watermask", function () {
                function a(a) {
                    this.init(a);
                    this.model = a
                }

                ClassTool.inherits(a, ClassObject);
                a.prototype.init = function (a) {
                    this.waterList = [];
                    this.config = {chackTime: 6E4};
                    this.model = a;
                    this._index = 0
                };
                a.prototype.setUp = function (a) {
                    this.setWaterData();
                    var c = this.model.playerConfig.watermark;
                    this.clear();
                    this.player = a;
                    this.el = a.getVideoEl().parentNode.parentNode;
                    this.waterData = videoSdkTool.clone(c);
                    this._index = 0;
                    var d = this;
                    if (this.waterData)for (a = 0; a < this.waterData.length; a++)c =
                            UiTool.$C("img"), c.num = a, this.waterData[a].hasOwnProperty("position") && this.waterData[a].hasOwnProperty("url") && (this.waterData[a].hasOwnProperty("x") || (this.waterData[a].x = 15), this.waterData[a].hasOwnProperty("y") || (this.waterData[a].y = 15), this.waterData[a].hasOwnProperty("width") || (this.waterData[a].width = 640), this.waterData[a].hasOwnProperty("height") || (this.waterData[a].height = 360), c.onload = function () {
                        var a = UiTool.$C("canvas");
                        d.waterData[this.num].img = this;
                        d._renderWater(a, d.waterData[this.num]);
                        d.waterList.push(a);
                        d.start()
                    }, c.src = this.waterData[a].url)
                };
                a.prototype.isPano = function () {
                    return this.model.config.hasOwnProperty("pano") && "1" == this.model.config.pano || "1" == this.model.videoSetting.pano ? !0 : !1
                };
                a.prototype.setWaterData = function () {
                    this.isPano() ? (this.model.videoSetting.videoOrgHeight = this.model.playerConfig.pHeight, this.model.videoSetting.videoOrgWidth = this.model.playerConfig.pWidth) : this.model.videoSetting.videoWidth / this.model.videoSetting.videoHeight < this.model.playerConfig.pWidth /
                    this.model.playerConfig.pHeight ? (this.model.videoSetting.videoOrgHeight = this.model.playerConfig.pHeight, this.model.videoSetting.videoOrgWidth = this.model.videoSetting.videoWidth * this.model.playerConfig.pHeight / this.model.videoSetting.videoHeight) : (this.model.videoSetting.videoOrgWidth = this.model.playerConfig.pWidth, this.model.videoSetting.videoOrgHeight = this.model.videoSetting.videoHeight * this.model.playerConfig.pWidth / this.model.videoSetting.videoWidth)
                };
                a.prototype.clear = function () {
                    if (this.waterList) {
                        for (var a =
                                0; a < this.waterList.length; a++)this.waterList[a].parentNode == this.el && (this.el.removeChild(this.waterList[a]), this.waterList[a] = null);
                        this.waterList = []
                    }
                };
                a.prototype.start = function () {
                    function a() {
                        _self = this;
                        for (var b = 0; b < _self.waterList.length; b++)_self.waterList[b].style.display = b != _self._index ? "none" : "";
                        _self._index++;
                        _self._index == _self.waterList.length && (_self._index = 0)
                    }

                    1 < this.waterList.length && (this.changeTimer = new Timer(this.config.chackTime, this, a), this.changeTimer.start());
                    a.call(this)
                };
                a.prototype.setSize =
                        function (a, c) {
                            for (var d = 0; d < this.waterList.length; d++)this._renderWater(this.waterList[d], this.waterData[d])
                        };
                a.prototype.destroy = function (a, c) {
                    this.clear();
                    this.waterData = null
                };
                a.prototype._renderWater = function (a, c) {
                    var d = c.img, f = 1, f = this.model.playerConfig.pWidth / this.model.playerConfig.pHeight < c.width / c.height ? Math.min(1, this.model.playerConfig.pWidth / c.width) : Math.min(1, this.model.playerConfig.pHeight / c.height), e = this.player.getVideoRect();
                    if (e.hasMetadata) {
                        if (this.isPano())var g = 1, h = 1; else g =
                                e.width / this.model.videoSetting.videoOrgWidth, h = e.height / this.model.videoSetting.videoOrgHeight;
                        f = a.fScale ? a.fScale : this.model.playerConfig.pWidth / this.model.playerConfig.pHeight < g * d.width / (h * d.height) ? Math.min(f, 0.5 * e.width / d.width) : Math.min(f, 0.5 * e.height / d.height);
                        a.style.position = "absolute";
                        switch (c.position + "") {
                            case "1":
                                a.style.top = e.y + h * f * c.y + "px";
                                a.style.left = e.x + g * f * c.x + "px";
                                break;
                            case "2":
                                a.style.top = e.y + h * f * c.y + "px";
                                a.style.right = 0.5 * (this.el.offsetWidth - e.width) + g * f * c.x + "px";
                                break;
                            case "3":
                                a.style.bottom =
                                        0.5 * (this.el.offsetHeight - e.height) + h * f * c.y + "px";
                                a.style.left = e.x + g * f * c.x + "px";
                                break;
                            case "4":
                                a.style.bottom = 0.5 * (this.el.offsetHeight - e.height) + h * f * c.y + "px", a.style.right = 0.5 * (this.el.offsetWidth - e.width) + g * f * c.x + "px"
                        }
                        a.fScale = f;
                        a.width = g * f * d.width;
                        a.height = h * f * d.height;
                        a.getContext("2d").drawImage(d, 0, 0, d.width, d.height, 0, 0, a.width, a.height);
                        this.el.appendChild(a)
                    }
                };
                return a
            }());
            var PlayUrlProxy = function () {
                        function a(a) {
                            this.model = a
                        }

                        ClassTool.inherits(a, ClassObject);
                        a.prototype.translate = function () {
                            this.gslbLoader = new GslbProxy(this.model);
                            this.model.videoSetting.gslb ? (this.gslbLoader.addEventListener(LoadEvent.LOADCMP, this.gslbCmp, this), this.gslbLoader.addEventListener(LoadEvent.LOADERROR, this.gslbErr, this), this.gslbLoader.load()) : this.dispatchEvent(new Event(LoadEvent.LOADCMP, this.leUrlsHandler()))
                        };
                        a.prototype.gslbCmp = function (a) {
                            this.dispatchEvent(new Event(LoadEvent.LOADCMP,
                                    a.args[1]))
                        };
                        a.prototype.gslbErr = function (a) {
                            this.dispatchEvent(new Event(LoadEvent.LOADCMP, this.leUrlsHandler()))
                        };
                        a.prototype.leUrlsHandler = function (a) {
                            a = videoSdkTool.clone(this.model.videoSetting.urls);
                            for (var c = 0; c < a.length; c++)a[c] = this.gslbLoader.checkGslbUrl(a[c]);
                            return a
                        };
                        return a
                    }(), ReportPlayer = function () {
                        function a() {
                            this.superClass.constructor.apply(this, arguments)
                        }

                        ClassTool.inherits(a, Control);
                        a.prototype.init = function (a, c) {
                            this.facade = a;
                            this.model = c;
                            this.model.record = {};
                            this.reportApi =
                                    new Reporter(c);
                            this.reportApi.onStateChanged("init", {
                                deviceId: this.model.lc(),
                                os: videoSdkTool.getOs(),
                                osv: "-",
                                width: window.screen.width,
                                height: window.screen.height,
                                appv: this.model.playerConfig.version
                            })
                        };
                        a.prototype.setUp = function (a, c) {
                            this.model.config.report && (this.model.videoSetting.errCode = 0, this.facade.addEventListener(PlayerEvent.EVENT, this.videoSateHandler, this))
                        };
                        a.prototype.destroy = function () {
                            this.model.config.report && (this.superClass.destroy.apply(this, arguments), this.reportApi.reset(),
                                    this.facade.removeEventListener(PlayerEvent.EVENT, this.videoSateHandler, this))
                        };
                        a.prototype.videoSateHandler = function (a) {
                            if (this.model.config.report)switch (a.args[1]) {
                                case PlayerEvent.VIDEO_DATA_CMP:
                                    0 != this.model.record.ms && (this.model.record.mr = videoSdkTool.now() - this.model.record.ms, this.model.record.ms = 0);
                                    this.reportApi.onStateChanged("start", {});
                                    break;
                                case MediaEvent.BUFFEREMPTY:
                                    this.reportApi.onStateChanged("bufferEmpty");
                                    break;
                                case MediaEvent.BUFFEREFULL:
                                    this.reportApi.onStateChanged("bufferFull");
                                    break;
                                case MediaEvent.PLAY:
                                    this.reportApi.onStateChanged("resume");
                                    break;
                                case MediaEvent.START:
                                    0 != this.model.record.vs && (this.model.record.pr = videoSdkTool.now() - this.model.record.vs, this.model.record.vs = 0);
                                    this.reportApi.onStateChanged("play", {
                                        cv: {
                                            stc: {
                                                mr: this.model.record.mr,
                                                adr: this.model.record.adr,
                                                pr: this.model.record.pr,
                                                gslbr: this.model.record.gslbr
                                            }, joint: this.model.joint
                                        }
                                    });
                                    break;
                                case MediaEvent.STOP:
                                    if (a.args[2])this.reportApi.onStateChanged("playStop"); else this.reportApi.onStateChanged("stopPlay");
                                    break;
                                case MediaEvent.PAUSE:
                                    this.reportApi.onStateChanged("pause");
                                    break;
                                case MediaEvent.SEEK:
                                    this.reportApi.onStateChanged("seek", {time: a.args[2]});
                                    break;
                                case PlayerEvent.VPH:
                                    this.reportApi.onStateChanged("hide");
                                    break;
                                case PlayerEvent.VPS:
                                    this.reportApi.onStateChanged("show");
                                    break;
                                case MediaEvent.DEFSTART:
                                    this.reportApi.onStateChanged("definition");
                                    break;
                                case PlayerEvent.ERROR:
                                case MediaEvent.ERROR:
                                    a = a.args[2][0];
                                    this.model.videoSetting.errCode = a.code;
                                    this.reportApi.onStateChanged("error", {errcode: a.code});
                                    this.report({logcontent: a.errInfo || ""});
                                    break;
                                case AdEvent.HEADEND:
                                case AdEvent.NOAD:
                                    0 != this.model.record.as && (this.model.record.adr = videoSdkTool.now() - this.model.record.as, this.model.record.as = 0);
                                    this.model.record.vs = videoSdkTool.now();
                                    break;
                                case PlayerEvent.VIDEO_DATA_START:
                                    this.model.record.ms = videoSdkTool.now();
                                    break;
                                case PlayerEvent.GSLB_START:
                                    this.model.record.gslbs = videoSdkTool.now();
                                    break;
                                case PlayerEvent.GSLB_CMP:
                                    0 != this.model.record.gslbs && (this.model.record.gslbr = videoSdkTool.now() - this.model.record.gslbs,
                                            this.model.record.gslbs = 0), this.model.record.vs = videoSdkTool.now()
                            }
                        };
                        a.prototype.report = function (a) {
                            var c = this.model.videoSetting.errCode;
                            a && a.hasOwnProperty("code") && (c = a.code);
                            var d = {ver: "1.0"};
                            d.uuid = this.model.uuid();
                            d.ec = c;
                            d.p3 = "h5";
                            d.cvid = "vod" == this.model.playType ? this.model.videoSetting.vid : this.model.videoSetting.sid;
                            d.vtyp = this.model.playType;
                            d.mtyp = "cloud";
                            d.cuid = this.model.userData.userId;
                            d.leid = this.model.lc();
                            d.pver = this.model.playerConfig.version;
                            d.type = 1;
                            d.logcontent = "";
                            for (var f in a)d[f] =
                                    a[f];
                            ReportTool.report("http://log.cdn.letvcloud.com/sdk/epl", d)
                        };
                        a.prototype.showLog = function () {
                            ReportTool.print(logTool.getLog(), this.model.lc())
                        };
                        a.prototype.getLog = function () {
                            return logTool.getLog()
                        };
                        return a
                    }(), AdCtrl = function () {
                        function a() {
                            this.up = this.isvip = 0;
                            this.isTrylook = !1;
                            this.pname = "";
                            this.ark = this.gdur = 0
                        }

                        function b() {
                            this.superClass.constructor.apply(this, arguments)
                        }

                        ClassTool.inherits(b, Control);
                        b.prototype.setUp = function (a, b) {
                            var f = this;
                            f.player = a;
                            f.videoOutEl = b;
                            if (f.model.config.hasOwnProperty("onPlayerReady"))if ("function" != typeof f.model.config.onPlayerReady && (f.model.config.onPlayerReady = window[f.model.config.onPlayerReady]), "function" == typeof f.model.config.onPlayerReady)try {
                                var e = setTimeout(function () {
                                    f.startLeAd.call(f)
                                }, 5E3);
                                f.model.config.onPlayerReady({
                                    video: f.player.player.video,
                                    el: this.videoOutEl
                                }, function (a, b) {
                                    switch (a) {
                                        case "adstart":
                                            clearTimeout(e);
                                            break;
                                        case "adend":
                                            f.startLeAd.call(f)
                                    }
                                })
                            } catch (g) {
                                f.startLeAd.call(f)
                            } else f.startLeAd.call(f); else f.startLeAd.call(f)
                        };
                        b.prototype.startLeAd = function () {
                            this.checkAd() ?
                                    "undefined" == typeof H5AD || "function" != typeof H5AD ? videoSdkTool.getJS(SOTool.PluginStack.Ad, this.initAd, this.initAd, this, "utf-8") : this.initAd() : this.facade.dispatchEvent(new Event(AdEvent.EVENT, AdEvent.NOAD, "skip"))
                        };
                        b.prototype.checkAd = function () {
                            return this.model.config.hasOwnProperty("letvad") && "0" == this.model.config.letvad.toString() || this.model.videoSetting.hasOwnProperty("ark") && "0" == this.model.videoSetting.ark.toString() ? !1 : !0
                        };
                        b.prototype.initAd = function (b, d) {
                            function f(a, b) {
                                if (e.player)switch (a) {
                                    case "playAD":
                                        e.adList =
                                                b;
                                        e.adList && 0 == e.adList.length ? setTimeout(function () {
                                            e.destroy();
                                            e.facade.dispatchEvent(new Event(AdEvent.EVENT, AdEvent.NOAD))
                                        }, 0) : (e.curAdIndex = 0, e.playAD(), e.facade.dispatchEvent(new Event(AdEvent.EVENT, AdEvent.HEADSTART)));
                                        break;
                                    case "stopAD":
                                        setTimeout(function () {
                                            e.destroy();
                                            e.facade.dispatchEvent(new Event(AdEvent.EVENT, AdEvent.HEADEND))
                                        }, 0);
                                        break;
                                    case "resumeAD":
                                        e.videoPlay();
                                        break;
                                    case "pauseAD":
                                        e.videoPause();
                                        break;
                                    case "getCurrTime":
                                        return e.getTime() || 0;
                                    case "getVideoRect":
                                        return e.getVideoRect()
                                }
                            }

                            var e = this;
                            if ("undefined" != typeof H5AD && "function" == typeof H5AD) {
                                e.H5AD = new H5AD;
                                var g = new a;
                                g.p1 = this.model.reportParam.p1;
                                g.p2 = this.model.reportParam.p2;
                                g.p3 = this.model.reportParam.p2;
                                g.lc = this.model.lc();
                                g.uuid = this.model.uuid();
                                g.ver = this.model.playerConfig.version;
                                g.gdur = this.model.videoSetting.duration;
                                g.cont = this.videoOutEl.id;
                                "vod" == this.model.playType ? (g.islive = !1, g.cid = this.model.videoSetting.cid, g.vid = this.model.videoSetting.vid, g.mmsid = this.model.videoSetting.mmsid, this.model.videoSetting.hasOwnProperty("pid") &&
                                (g.pid = this.model.videoSetting.pid)) : "live" == this.model.playType && (g.islive = !0, g.sid = this.model.config.activityId);
                                g.ch = this.model.getTypeFrom();
                                g.ark = this.model.videoSetting.ark;
                                g.useui = 1;
                                this.model.videoSetting.hasOwnProperty("p") && (g.ext = "" == this.model.userData.userId ? this.model.videoSetting.p : this.model.videoSetting.p + "|" + this.model.userData.userId);
                                500 > this.videoOutEl.clientWidth && (g.pname = "MPlayer");
                                e.H5AD.initAD(g, f)
                            } else this.facade.dispatchEvent(new Event(AdEvent.EVENT, AdEvent.NOAD, "error"))
                        };
                        b.prototype.playAD = function () {
                            if (this.curAdIndex < this.adList.length) {
                                this.curAd = this.adList[this.curAdIndex];
                                this.player.addEventListener(MediaEvent.EVENT, this.mediaHandler, this);
                                var a = !0;
                                0 == this.curAdIndex && -2 == this.model.config.posterType && (a = "1" == this.model.config.autoplay);
                                this.player.startPlay({urls: [this.curAd.url], duration: 0, start: 0, play: a})
                            } else this.destroy(), this.facade.dispatchEvent(new Event(AdEvent.EVENT, AdEvent.HEADEND))
                        };
                        b.prototype.mediaHandler = function (a) {
                            switch (a.args[1]) {
                                case MediaEvent.PLAY:
                                    this.H5AD.sendEvent("AD_PLAY",
                                            {curAD: this.curAd, curIndex: this.curAdIndex});
                                    break;
                                case MediaEvent.PAUSE:
                                    this.H5AD.sendEvent("AD_PAUSE", {curAD: this.curAd, curIndex: this.curAdIndex});
                                    break;
                                case MediaEvent.STOP:
                                    this.H5AD.sendEvent("AD_ENDED", {curAD: this.curAd, curIndex: this.curAdIndex});
                                    this.curAdIndex++;
                                    this.playAD();
                                    break;
                                case MediaEvent.ERROR:
                                    this.H5AD.sendEvent("AD_ERROR", {
                                        curAD: this.curAd,
                                        curIndex: this.curAdIndex
                                    }), this.curAdIndex++, this.H5AD.destory(this.curAd), this.playAD()
                            }
                        };
                        b.prototype.videoPlay = function () {
                            this.player && this.player.play()
                        };
                        b.prototype.getTime = function () {
                            return this.player ? this.player.getTime() : 0
                        };
                        b.prototype.videoPause = function () {
                            this.player && this.player.pause()
                        };
                        b.prototype.getVideoRect = function () {
                            return this.player ? this.player.getVideoRect("wh") : {w: 0, h: 0}
                        };
                        b.prototype.destroy = function () {
                            this.player && (this.player.removeEventListener(MediaEvent.EVENT, this.mediaHandler, this), this.player.closeVideo(), this.player = null);
                            try {
                                this.H5AD && this.curAd && this.H5AD.destory(this.curAd)
                            } catch (a) {
                                this.log("ad error " + a)
                            }
                        };
                        return b
                    }(),
                    SkinPlayer = function () {
                        function a() {
                            this.superClass.constructor.apply(this, arguments)
                        }

                        var b = {7: "//{domain}/player/plugin/skin/skin.js"};
                        ClassTool.inherits(a, Control);
                        a.prototype.setUp = function (a, b, f) {
                            a = '<div id="#{video}" style="left:0px;top:0px;position: absolute;width:{width};height:{height};z-index:1;display: block;background-color: #000000;overflow:hidden"></div><div id="#{skin}" style="left:0px;top:0px;position: relative;width:{width};height:{height};z-index:2;overflow: hidden;"></div><div id="#{error}" style="left:0px;top:0px;position: absolute;width:{width};height:{height};z-index:3;overflow: hidden;display:none;"></div>'.replace(/{width}/g,
                                    "100%");
                            a = a.replace(/{height}/g, "100%");
                            this.el = UiTool.$E(b);
                            this.outEl = UiTool.$E(f);
                            this.setStylebyConfig(this.model.config);
                            this.skin = new DisplayObject(this.el);
                            UiTool.getTemplate(this.el, a);
                            this.facade.addEventListener(PlayerEvent.EVENT, this.videoSateHandler, this)
                        };
                        a.prototype.load = function (a) {
                            var b = this;
                            SOTool.setPluginStack({name: "view.skin", url: b.getSkinUrl()});
                            if (b.model.config.skinnable)SOTool.getPlugin("view.skin", function (a) {
                                if (a)b.skinView = new a(b.facade, b.model), b.skinView.addEventListener(SkinEvent.EVENT,
                                        b.skinHandler, b), b.skinView.setUp(b.el.skin); else for (a = 0; a < b.el.childNodes.length; a++)if (b.el.childNodes[a] == b.el.skin) {
                                    b.el.removeChild(b.el.skin);
                                    break
                                }
                                b.dispatchEvent(new Event(LoadEvent.LOADCMP))
                            }); else {
                                for (a = 0; a < b.el.childNodes.length; a++)if (b.el.childNodes[a] == b.el.skin) {
                                    b.el.removeChild(b.el.skin);
                                    break
                                }
                                b.facade.removeEventListener(PlayerEvent.EVENT, b.videoSateHandler, b);
                                b.dispatchEvent(new Event(LoadEvent.LOADCMP))
                            }
                        };
                        a.prototype.getSkinUrl = function () {
                            return this.model.config.hasOwnProperty("nskin") &&
                            b.hasOwnProperty(this.model.config.nskin) ? b[this.model.config.nskin] : "//{domain}/player/plugin/skin/oldskin.js"
                        };
                        a.prototype.setStylebyConfig = function (a) {
                            var b = ["controls", "fullscreen"], f = "vb" + videoSdkTool.creatUuid();
                            this.el.className = f;
                            for (var e = 0; e < b.length; e++)if (!a[b[e]])if (a.pageControls)SkinRender["setMedia" + b[e]]("", !1); else SkinRender["setMedia" + b[e]](f, !1)
                        };
                        a.prototype.getVideArea = function () {
                            return this.el.skin.videoArea || null
                        };
                        a.prototype.autoSize = function () {
                            var a = this.model.videoSetting.videoWidth,
                                    b = this.model.videoSetting.videoHeight;
                            if (0 != a && 0 != b)switch (a /= b, this.model.config.autoSize + "") {
                                case "1":
                                    b = UiTool.$E(this.el).offsetWidth;
                                    this.log("\u83b7\u5f97\u5bb9\u5668\u7684\u5bbd\u5ea6==============================" + b);
                                    0 == b && (b = UiTool.$E(this.outEl).style.width, b = -1 == b.indexOf("%") ? parseInt(b) : 0);
                                    this.log("\u83b7\u5f97\u5bb9\u5668\u7684\u5bbd\u5ea6==============================" + b);
                                    0 < b && (this.model.config.changeParent && (this.outEl.style.height = b / a + "px"), this.el.style.height = b / a + "px");
                                    break;
                                case "2":
                                    b =
                                            UiTool.$E(this.el).offsetHeight, 0 == b && (b = UiTool.$E(this.outEl).style.height, b = -1 == b.indexOf("%") ? parseInt(b) : 0), 0 < b && (this.model.config.changeParent && (this.outEl.style.width = b * a + "px"), this.el.style.width = b * a + "px")
                            }
                        };
                        a.prototype.setSize = function () {
                            this.display = 0 < this.el.offsetWidth && 0 < this.el.offsetHeight ? !0 : !1
                        };
                        a.prototype.addEvents = function () {
                        };
                        a.prototype.removeEvents = function () {
                        };
                        a.prototype.destroy = function () {
                            this.shutDown();
                            this.skinView && (this.facade.removeEventListener(PlayerEvent.EVENT, this.videoSateHandler,
                                    this), this.skinView.removeEventListener(SkinEvent.EVENT, this.skinHandler, this), this.skinView = null)
                        };
                        a.prototype.skinHandler = function (a) {
                            this.facade.dispatchEvent(a)
                        };
                        a.prototype.shutDown = function () {
                            this.skinView && this.skinView.shutDown()
                        };
                        a.prototype.videoSateHandler = function (a) {
                            a.args[1] !== MediaEvent.LODING && a.args[1] != MediaEvent.PLAYING && this.log(a.args[1]);
                            this.skinView && this.skinView.listNotification(a.args[1], a.args[2])
                        };
                        a.prototype.setVideoPercent = function (a) {
                        };
                        a.prototype.setVideoScale = function (a) {
                        };
                        a.prototype.setVideoRect = function (a) {
                        };
                        a.prototype.refreshPlayerInfo = function (a) {
                            this.skinView && this.skinView.refreshPlayerInfo(a)
                        };
                        return a
                    }(), VideoPlayer = function () {
                        function a() {
                            this.superClass.constructor.apply(this, arguments)
                        }

                        var b = SOTool.getObj("media.watermask");
                        ClassTool.inherits(a, Control);
                        a.prototype.setUp = function (a, d) {
                            this.log("\u5f00\u59cb\u521b\u5efa\u89c6\u9891\u6a21\u5757");
                            this.el = d;
                            this.skin = new DisplayObject(d);
                            this.mediaPlayer = new MediaPlayer(this.getConfig());
                            this.water = new b(this.model);
                            this.model.videoSetting.volume = 0.8;
                            this.model.videoSetting.fullscreen = !1;
                            this.setDefinitionList();
                            this.getDefaultConfig(this.model.config);
                            this.changeVideoInfo(this.definition);
                            this.mediaPlayer.setUp(this.model.videoSetting, d);
                            this.facade.color.setColor(this.skin, "bgColor");
                            this.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.INIT))
                        };
                        a.prototype.getConfig = function (a) {
                            a = videoSdkTool.clone(this.model.config);
                            switch (a.posterType) {
                                case "-1":
                                case "-2":
                                    break;
                                default:
                                    a.autoplay = "1", a.pic = ""
                            }
                            return a
                        };
                        a.prototype.changeVideoInfo = function (a) {
                            this.videoInfo = videoSdkTool.clone(this.model.videoSetting.media[a]);
                            this.videoInfo.definitionName = this.videoInfo.definition;
                            this.videoInfo.definition = a;
                            this.videoInfo.duration = this.model.videoSetting.duration;
                            a = {
                                uuid: this.model.uuid(),
                                p1: this.model.reportParam.p1,
                                p2: this.model.reportParam.p2,
                                p3: this.model.reportParam.p3
                            };
                            this.model.videoSetting.hasOwnProperty("liveId") && (a.liveid = this.model.videoSetting.liveId, this.videoInfo.lid = this.model.videoSetting.liveId);
                            this.model.videoSetting.hasOwnProperty("vid") && (a.vid = this.model.videoSetting.vid);
                            a.ajax = 1;
                            videoSdkTool.addUrlParams(this.videoInfo.urls, a);
                            this.model.videoSetting.refresh(this.videoInfo)
                        };
                        a.prototype.setDefinitionList = function () {
                            var a = [], b = this.model, f;
                            for (f in b.videoSetting.media)a.push(f);
                            b.definition2TypeObj = {};
                            GlobalHandler.initTypeDefObj(b.defaultDefinitionList, b.definition2TypeObj);
                            a.sort(function (a, b) {
                                return GlobalHandler.defList.indexOf(GlobalHandler.type2Def(a)) - GlobalHandler.defList.indexOf(GlobalHandler.type2Def(b))
                            });
                            b.videoSetting.refresh({definitionList: a})
                        };
                        a.prototype.getDefaultConfig = function (a) {
                            this.definition = this.model.videoSetting.defaultDefinition || this.model.videoSetting.definitionList[0];
                            a.hasOwnProperty("rate") && (a.rate = GlobalHandler.def2Type(a.rate, this.model.definition2TypeObj));
                            a.hasOwnProperty("rate") && -1 != this.model.videoSetting.definitionList.indexOf(a.rate) && (this.definition = a.rate);
                            this.startime = 0;
                            a.hasOwnProperty("start") && (this.startime = a.start)
                        };
                        a.prototype.setSize = function (a, b, f) {
                            this.mediaPlayer.setSize();
                            this.water && this.water.setSize()
                        };
                        a.prototype.showPoster = function (a) {
                            var b = this;
                            b.hidePoster();
                            b.poster = null;
                            b.mediaPlayer.hide(!1);
                            switch (this.model.config.posterType) {
                                case "-2":
                                    break;
                                case "-1":
                                    b.mediaPlayer.show();
                                    break;
                                case "0":
                                    break;
                                default:
                                    b.addPoster()
                            }
                            if (-2 == b.model.config.posterType)b.mediaPlayer.show(), b.mediaPlayer.setPoster(b.getPosterUrl()), b.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.VIDEO_AUTH_VALID)); else if (this.model.config.skinnable || b.model.config.controls)"7" ==
                            this.model.config.nskin ? (b.playBtn = UiTool.$C("canvas"), b.playBtn.style.cssText = "position:absolute;width:80px;height:80px;left:50%;top:50%;z-index:2;cursor:pointer;margin-left:-40px;margin-top:-40px;", b.playBtn.width = 80, b.playBtn.height = 80, b.render()) : (b.playBtn = UiTool.$C("DIV"), b.playBtn.style.cssText = "position:absolute;width:75px;height:75px;left:50%;top:50%;background:rgba(1, 1, 1, 0) url(http://yuntv.letv.com/assets/img/skin.png?v=1901) no-repeat -111px -101px;margin: -40px 0 0 -38px;z-index:2;cursor:pointer;"),
                                    b.el.appendChild(b.playBtn), UiTool.addEvent(b.playBtn, "click", function (a) {
                                b.startAuth.call(b)
                            })
                        };
                        a.prototype.render = function () {
                            if (this.playBtn) {
                                var a = this.playBtn.getContext("2d");
                                a.beginPath();
                                a.arc(40, 40, 37, 0, 2 * Math.PI, !0);
                                a.closePath();
                                a.fillStyle = UiTool.hexToRgba("#000000", 0.5);
                                a.fill();
                                a.lineWidth = 5;
                                a.strokeStyle = this.facade.color.colorConfig.active;
                                a.lineWidth = 1;
                                a.strokeStyle = this.facade.color.colorConfig.fault;
                                a.beginPath();
                                a.moveTo(32, 25);
                                a.lineTo(55, 40);
                                a.lineTo(32, 55);
                                a.closePath();
                                a.stroke();
                                a.fillStyle = UiTool.hexToRgba(this.facade.color.colorConfig.fault, 1);
                                a.fill()
                            }
                        };
                        a.prototype.addPoster = function (a) {
                            this.poster ? (this.poster.style.display = "", this.el.appendChild(this.poster)) : (a = ["", "contain", "cover", "100% 100%"], this.poster = UiTool.$C("DIV"), this.poster.src = this.getPosterUrl(), this.poster.src && (this.poster.style.cssText = "position:absolute;width:100%;height:100%; top: 0px;left: 0px;background:rgba(1, 1, 1, 0) url(" + this.poster.src + ") no-repeat 50% 50%;background-size:" + a[this.model.config.posterType] +
                                    ";z-index:2;cursor:pointer;", this.el.appendChild(this.poster)))
                        };
                        a.prototype.hidePoster = function (a) {
                            this.poster && this.el && this.poster.parentNode == this.el && (this.el.removeChild(this.poster), this.poster = null);
                            this.playBtn && this.el && this.playBtn.parentNode == this.el && (this.el.removeChild(this.playBtn), this.playBtn = null)
                        };
                        a.prototype.startAuth = function (a) {
                            var b = this;
                            b.hidePoster();
                            b.model.config.onlyPic ? b.mediaPlayer.hide() : b.mediaPlayer.show();
                            0 > b.model.config.posterType + 0 ? b.mediaPlayer.setPoster(b.getPosterUrl()) :
                                    b.mediaPlayer.setPoster("");
                            b.mediaPlayer.play(function () {
                                b.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.VIDEO_AUTH_VALID))
                            })
                        };
                        a.prototype.startPlay = function (a) {
                            this.log("\u5f00\u59cb\u5c1d\u8bd5\u64ad\u653e");
                            this.isStartPlay = !1;
                            this.setDefinitionList();
                            this.getDefaultConfig(this.model.config);
                            this.mediaPlayer.addEventListener(MediaEvent.EVENT, this.mediaHandler, this);
                            this.facade.addEventListener(SkinEvent.EVENT, this.skinSateHandler, this);
                            this.facade.addEventListener(PlayerEvent.EVENT,
                                    this.videoSateHandler, this);
                            this.mediaPlayer.setContainer(a);
                            this.mediaPlayer.setLoop(this.model.config.loop);
                            this.playVideo(this.start);
                            this.facade.dispatchEvent(new Event(PlayerEvent.EVENT, MediaEvent.CONNECT))
                        };
                        a.prototype.startGslb = function (a) {
                            this.gslbplayTime = a;
                            this.gslbLoader = new PlayUrlProxy(this.model);
                            this.gslbLoader.addEventListener(LoadEvent.LOADCMP, this.gslbCmp, this);
                            this.gslbLoader.addEventListener(LoadEvent.LOADERROR, this.gslbErr, this);
                            this.gslbLoader.translate();
                            this.facade.dispatchEvent(new Event(PlayerEvent.EVENT,
                                    PlayerEvent.GSLB_START))
                        };
                        a.prototype.gslbCmp = function (a) {
                            this.videoInfo.urls = a.args[1];
                            this.model.config.onlyPic ? (this.mediaPlayer.show(), setTimeout(videoSdkTool.bindFun(this.play, this), 10)) : this.play()
                        };
                        a.prototype.play = function () {
                            var a = this, b = !0;
                            0 != a.model.joint || a.isStartPlay || -2 != a.model.config.posterType || (b = "1" == a.model.config.autoplay);
                            var f = a.mediaPlayer.player.videoEL.canPlayType && "" == a.mediaPlayer.player.videoEL.canPlayType("application/x-mpegURL");
                            a.mediaPlayer.startPlay({
                                urls: a.videoInfo.urls,
                                duration: a.videoInfo.duration,
                                start: a.gslbplayTime,
                                play: b,
                                type: a.getPlayerType(),
                                useHls: "live" == a.model.playType && f && ("pc" == videoSdkTool.getDevice() || "mac" == videoSdkTool.getDevice()),
                                callback: function () {
                                    a.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.GSLB_CMP))
                                }
                            });
                            a.mediaPlayer.setLoop(this.model.config.loop)
                        };
                        a.prototype.gslbErr = function (a) {
                            this.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.ERROR, a.args[2]))
                        };
                        a.prototype.setAutoReplay = function (a) {
                            this.mediaPlayer.setLoop(a)
                        };
                        a.prototype.setDefinition = function (a) {
                            this.definition != a && -1 != this.model.videoSetting.definitionList.indexOf(a) && (this.log("\u5207\u6362\u7801\u6d41-----------------------------" + a), this.definition = a, this.isStartPlay = !1, a = 0, "vod" == this.model.playType && (a = this.mediaPlayer.getTime()), this.playVideo(a), this.facade.dispatchEvent(new Event(PlayerEvent.EVENT, MediaEvent.DEFSTART)))
                        };
                        a.prototype.playVideo = function (a) {
                            "pano" != this.getPlayerType() || videoSdkTool.checkPano() ? (this.changeVideoInfo(this.definition),
                            this.mediaPlayer.getVideoEl() && this.mediaPlayer.getVideoEl().setAttribute("data-rate", GlobalHandler.type2Def(this.model.videoSetting.definition)), this.startGslb(a)) : this.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.VIDEO_INFO, [{
                                code: 490,
                                message: "\u8be5\u8bbe\u5907\u8fd8\u4e0d\u652f\u63013d\u529f\u80fd,\u5efa\u8bae\u4f7f\u7528windows\u548c\u5b89\u5353\u7cfb\u7edf\u4e0b\u7684\u8c37\u6b4c\u6d4f\u89c8\u5668\u4f53\u9a8c\u8be5\u529f\u80fd"
                            }]))
                        };
                        a.prototype.getDefinitionList = function () {
                            return this.model.videoSetting.definitionList
                        };
                        a.prototype.videoSateHandler = function (a) {
                            switch (a.args[1]) {
                                case PlayerEvent.VPH:
                                    this.isStartPlay && this.mediaPlayer.pause();
                                    break;
                                case MediaEvent.START:
                                    this.isStartPlay = !0;
                                    this.mediaPlayer.show();
                                    this.model.config.onlyPic && this.addPoster();
                                    this.water.setUp(this.mediaPlayer);
                                    break;
                                case MediaEvent.STOP:
                                    this.isStartPlay = !1;
                                    break;
                                case PlayerEvent.ERROR:
                                case MediaEvent.ERROR:
                                    this.isStartPlay = !1;
                                case PlayerEvent.VIDEO_INFO:
                                    this.model.config.skinnable && this.mediaPlayer.hide(!1);
                                    break;
                                case PlayerEvent.FULLSCREEN:
                                    this.model.config.onlyPic && !this.model.videoSetting.fullscreen && this.mediaPlayer.hide();
                                    break;
                                case PlayerEvent.PRESIZE:
                                    this.setSize();
                                    break;
                                case MediaEvent.METADATA:
                                    this.setSize()
                            }
                        };
                        a.prototype.skinSateHandler = function (a) {
                            switch (a.args[1]) {
                                case SkinEvent.PLAY:
                                    if (this.model.config.onlyPic) {
                                        var b = this;
                                        b.mediaPlayer.show();
                                        setTimeout(function () {
                                            b.mediaPlayer.play()
                                        }, 10)
                                    } else this.mediaPlayer.play();
                                    break;
                                case SkinEvent.PAUSE:
                                    this.mediaPlayer.pause();
                                    break;
                                case SkinEvent.SEEK:
                                    this.mediaPlayer.seek(a.args[2]);
                                    break;
                                case SkinEvent.VOLUME:
                                    this.model.videoSetting.volume =
                                            a.args[2];
                                    this.mediaPlayer.setVol(this.model.videoSetting.volume);
                                    break;
                                case SkinEvent.SETDEFINITION:
                                    this.setDefinition(a.args[2]);
                                    break;
                                case SkinEvent.REPLAY:
                                    this.mediaPlayer.replay()
                            }
                        };
                        a.prototype.getPlayerType = function () {
                            return this.model.config.hasOwnProperty("pano") && "1" == this.model.config.pano || "1" == this.model.videoSetting.pano ? "pano" : ""
                        };
                        a.prototype.mediaHandler = function (a) {
                            switch (a.args[1]) {
                                case MediaEvent.ERROR:
                                    if ("vod" == this.model.playType && this.model.vodPlayType && "ios" == this.model.vodPlayType &&
                                            a.args[2][0].retryCdn) {
                                        this.model.vodPlayType = "mp4";
                                        videoSdkTool.setLocal("playType", this.model.vodPlayType);
                                        this.log("\u91cd\u65b0\u8c03\u5ea6");
                                        this.startGslb(0);
                                        return
                                    }
                            }
                            this.facade.dispatchEvent(new Event(PlayerEvent.EVENT, a.args[1], a.args[2]))
                        };
                        a.prototype.getPosterUrl = function (a) {
                            return this.model.config.hasOwnProperty("pic") ? this.model.config.pic : this.model.videoSetting.hasOwnProperty("pic") ? this.model.videoSetting.pic : ""
                        };
                        a.prototype.destroy = function (a) {
                            this.facade.removeEventListener(SkinEvent.EVENT,
                                    this.skinSateHandler, this);
                            this.facade.removeEventListener(PlayerEvent.EVENT, this.videoSateHandler, this);
                            this.mediaPlayer.removeEventListener(MediaEvent.EVENT, this.mediaHandler, this);
                            this.mediaPlayer.destroy();
                            this.water && this.water.destroy();
                            this.facade.dispatchEvent(new Event(PlayerEvent.EVENT, MediaEvent.STOP, !1))
                        };
                        a.prototype.refreshPlayerInfo = function (a) {
                            "7" == this.model.config.nskin && this.render();
                            this.water.setUp(this.mediaPlayer)
                        };
                        return a
                    }(), GlobalPlayer = function () {
                        function a() {
                            this.superClass.constructor.apply(this,
                                    arguments)
                        }

                        ClassTool.inherits(a, Control);
                        a.prototype.setUp = function (a) {
                            this.player = a;
                            this.addEvents()
                        };
                        a.prototype.addEvents = function () {
                            var a = this;
                            a.addVideoEvent = !1;
                            a.facade.addEventListener(SkinEvent.EVENT, a.skinSateHandler, a);
                            a.facade.addEventListener(PlayerEvent.EVENT, a.videoSateHandler, a);
                            a.fullChangeFun = videoSdkTool.bindFun(a.fullChange, a);
                            a.resizeFun = videoSdkTool.bindFun(a.resize, a);
                            UiTool.addEvent(document, "fullscreenchange,webkitfullscreenchange,mozfullscreenchange,MSFullscreenChange", a.fullChangeFun);
                            UiTool.addEvent(window, "resize", this.resizeFun);
                            UiTool.addEvent(window, "pagehide", videoSdkTool.bindFun(this.pageHide, this));
                            var c;
                            ["webkit", "moz", "o", "ms"].forEach(function (a) {
                                "undefined" != typeof document[a + "Hidden"] && (c = a)
                            });
                            UiTool.addEvent(document, c + "visibilitychange", function () {
                                "hidden" == document[c + "VisibilityState"] ? a.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.VPH)) : "visible" == document[c + "VisibilityState"] && a.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.VPS))
                            })
                        };
                        a.prototype.videoSateHandler = function (a) {
                            switch (a.args[1]) {
                                case PlayerEvent.INIT:
                                    this.addVideoEvents()
                            }
                        };
                        a.prototype.pageHide = function (a) {
                            this.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.WPH))
                        };
                        a.prototype.fullChange = function () {
                            this.model.videoSetting && (this.model.videoSetting.fullscreen = UiTool.isFullScreen(), this.model.videoSetting.fullscreen || (this.cancelFullscreen(), this.resizeFun()), this.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.FULLSCREEN, this.model.videoSetting.fullscreen)))
                        };
                        a.prototype.resize = function () {
                            this.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.PRESIZE))
                        };
                        a.prototype.cancelFullscreen = function () {
                            var a = this.player.skinplugin.skin;
                            a.hasAttribute("tmpStyle") && (a.setStyle({cssText: a.getAttribute("tmpStyle")}), a.removeAttribute("tmpStyle"));
                            this.bodyTmpOverFlow && (document.body.style.overflow = this.bodyTmpOverFlow)
                        };
                        a.prototype.addVideoEvents = function (a) {
                            a = this.player.videoplugin.mediaPlayer.getVideoEl();
                            var c = this;
                            c.addVideoEvent || (a.addEventListener("webkitbeginfullscreen",
                                    function () {
                                        c.model.videoSetting.fullscreen = !0;
                                        c.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.FULLSCREEN, c.model.videoSetting.fullscreen))
                                    }), a.addEventListener("webkitendfullscreen", function () {
                                c.model.videoSetting.fullscreen = !1;
                                c.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.FULLSCREEN, c.model.videoSetting.fullscreen));
                                c.resizeFun()
                            }), c.addVideoEvent = !0)
                        };
                        a.prototype.skinSateHandler = function (a) {
                            switch (a.args[1]) {
                                case SkinEvent.FULLSCREEN:
                                    a = this.player.videoplugin.mediaPlayer.getVideoEl();
                                    if (this.model.config.dfull && a && a.webkitEnterFullscreen && "chrome" != videoSdkTool.getBrowser()) {
                                        a.webkitEnterFullscreen();
                                        break
                                    }
                                    this.model.videoSetting.fullscreen ? (this.model.videoSetting.fullscreen = !1, this.cancelFullscreen(), UiTool.supportFullScreen() && this.model.config.dfull && UiTool.cancelFullScreen()) : (this.model.videoSetting.fullscreen = !0, this.player.skinplugin.skin.setAttribute({tmpStyle: this.player.skinplugin.el.style.cssText}), UiTool.supportFullScreen() && this.model.config.dfull ? UiTool.fullScreen(this.player.skinplugin.el) :
                                            (this.bodyTmpOverFlow = document.body.style.overflow, document.body.style.overflow = "hidden"), this.player.skinplugin.skin.setStyle({cssText: "background: #000;width:100%;height:100%;position:fixed;top:0;left:0;z-index:1000;overflow:hidden;"}));
                                    this.resizeFun()
                            }
                        };
                        return a
                    }(), ErrorPlayer = function () {
                        function a() {
                            this.superClass.constructor.apply(this, arguments)
                        }

                        ClassTool.inherits(a, Control);
                        a.prototype.setUp = function (a, c, d) {
                            this.el = c;
                            this._api = d;
                            this.skin = new DisplayObject(this.el);
                            this.playingStop = !1;
                            this.error =
                                    null;
                            this.facade.addEventListener(PlayerEvent.EVENT, this.videoSateHandler, this)
                        };
                        a.prototype.videoSateHandler = function (a) {
                            switch (a.args[1]) {
                                case MediaEvent.START:
                                case MediaEvent.BUFFEREFULL:
                                    this.skin.setVisible(!1);
                                    break;
                                case MediaEvent.ERROR:
                                case PlayerEvent.ERROR:
                                case PlayerEvent.VIDEO_INFO:
                                    this.skin.setVisible(!0);
                                    if (!this.model.config.skinnable)break;
                                    this.show(a.args[2]);
                                    break;
                                case MediaEvent.STOP:
                                    this.playingStop = !0;
                                    this.skin.setVisible(!1);
                                    break;
                                case MediaEvent.PLAYING:
                                    this.playingStop && this.skin.setVisible(!1);
                                    this.playingStop = !1;
                                    break;
                                case PlayerEvent.VIDEO_LIVESTOP:
                                    this.playingStop = !0
                            }
                        };
                        a.prototype.show = function (a) {
                            var c = this;
                            c.error ? c.error.show(a, c.el, {
                                api: c._api,
                                model: c.model
                            }) : SOTool.getPlugin("ErrorInfo", function (d) {
                                d && (c.error = new d, c.error.show(a, c.el, {api: c._api, model: c.model}))
                            })
                        };
                        a.prototype.report = function () {
                        };
                        return a
                    }(), Api = function () {
                        function a(a, c, d) {
                            "undefined" != typeof d.api[a] && (c[a] = function () {
                                return d.api[a].apply(d.api, arguments)
                            })
                        }

                        return function (b) {
                            for (var c = 0; c < ApiList.length; c++)a(ApiList[c],
                                    this, b)
                        }
                    }(), FlashSdk = function () {
                        function a(a, c, d) {
                            c[a] = function () {
                                return d[a].apply(d, arguments)
                            }
                        }

                        return function (b) {
                            for (var c = 0; c < ApiList.length; c++)a(ApiList[c], this, b.plugin);
                            this.playNewId = function (a) {
                                return b.plugin.setLejuData(a)
                            };
                            this.getDefinitionList = function () {
                                return b.plugin.getDefinitionList()
                            };
                            this.callFlash = function (a) {
                                return b.plugin[b.action](a.value)
                            }
                        }
                    }(), H5Sdk = function () {
                        function a(a) {
                            this._pl = a
                        }

                        a.prototype.playNewId = function (a) {
                            return this._pl.playNewId(a)
                        };
                        a.prototype.getVideoSetting =
                                function () {
                                    for (var a = videoSdkTool.clone(this._pl.model.videoSetting), c = {}, d = 0; d < GlobalHandler.settingList().length; d++) {
                                        var f = GlobalHandler.settingList()[d];
                                        a.hasOwnProperty(f) ? c[f] = "definition" == f ? this.getDefinition() : "defaultDefinition" == f ? this.getDefaultDefinition() : a[f] : c[f] = ""
                                    }
                                    return c
                                };
                        a.prototype.getVideoTime = function () {
                            return this._pl.videoplugin ? this._pl.videoplugin.mediaPlayer.getTime() : 0
                        };
                        a.prototype.pauseVideo = function () {
                            this._pl.facade.dispatchEvent(new Event(SkinEvent.EVENT, SkinEvent.PAUSE))
                        };
                        a.prototype.resumeVideo = function () {
                            this._pl.facade.dispatchEvent(new Event(SkinEvent.EVENT, SkinEvent.PLAY))
                        };
                        a.prototype.seekTo = function (a) {
                            this._pl.facade.dispatchEvent(new Event(SkinEvent.EVENT, SkinEvent.SEEK, a))
                        };
                        a.prototype.replayVideo = function () {
                            this._pl.facade.dispatchEvent(new Event(SkinEvent.EVENT, SkinEvent.REPLAY))
                        };
                        a.prototype.closeVideo = function () {
                            this._pl.closeVideo()
                        };
                        a.prototype.setVolume = function (a) {
                            this._pl.facade.dispatchEvent(new Event(SkinEvent.EVENT, SkinEvent.VOLUME, a))
                        };
                        a.prototype.shutDown =
                                function () {
                                    this._pl.shutDown()
                                };
                        a.prototype.startUp = function () {
                            this._pl.startUp()
                        };
                        a.prototype.getBufferPercent = function () {
                            return this._pl.videoplugin ? this._pl.videoplugin.mediaPlayer.getBufferPercent() : 0
                        };
                        a.prototype.setDefinition = function (a) {
                            a = GlobalHandler.def2Type(a, this._pl.model.definition2TypeObj);
                            this._pl.facade.dispatchEvent(new Event(SkinEvent.EVENT, SkinEvent.SETDEFINITION, a))
                        };
                        a.prototype.getDefinition = function () {
                            return GlobalHandler.type2Def(this._pl.model.videoSetting.definition)
                        };
                        a.prototype.getDefaultDefinition =
                                function () {
                                    return GlobalHandler.type2Def(this._pl.model.videoSetting.defaultDefinition)
                                };
                        a.prototype.getDefList = function () {
                            for (var a = [], c = 0; c < this._pl.model.defaultDefinitionList.length; c++) {
                                var d = GlobalHandler.type2Def(this._pl.model.defaultDefinitionList[c]);
                                a.push(d)
                            }
                            return a
                        };
                        a.prototype.getDefinitionList = function () {
                            for (var a = [], c = 0; c < this._pl.model.videoSetting.definitionList.length; c++) {
                                var d = GlobalHandler.type2Def(this._pl.model.videoSetting.definitionList[c]);
                                a.push(d)
                            }
                            return a
                        };
                        a.prototype.setVideoPercent =
                                function (a) {
                                    this._pl.skinplugin.setVideoPercent(a)
                                };
                        a.prototype.getVideoPercent = function () {
                        };
                        a.prototype.setVideoScale = function (a) {
                            this._pl.skinplugin.setVideoScale(a);
                            return 0
                        };
                        a.prototype.getVideoScale = function () {
                            return 0
                        };
                        a.prototype.resetVideoScale = function () {
                            this._pl.skinplugin.setVideoScale(0);
                            return 0
                        };
                        a.prototype.fullVideoScale = function () {
                            this._pl.skinplugin.setVideoScale(1)
                        };
                        a.prototype.setVideoRect = function (a) {
                            this._pl.skinplugin.setVideoScale(a)
                        };
                        a.prototype.getLoadPercent = function () {
                            if (this._pl.videoplugin)return this._pl.videoplugin.mediaPlayer.getLoadPercent()
                        };
                        a.prototype.getDownloadSpeed = function () {
                            return 0
                        };
                        a.prototype.getPlayRecord = function () {
                            if (this._pl.videoplugin)return this._pl.videoplugin.getPlayRecord()
                        };
                        a.prototype.getPlayState = function () {
                            if (this._pl.videoplugin)return this._pl.videoplugin.getPlayState()
                        };
                        a.prototype.setVideoColor = function () {
                            return -1
                        };
                        a.prototype.getVideoColor = function () {
                            return -1
                        };
                        a.prototype.getVersion = function () {
                            return this._pl.version
                        };
                        a.prototype.setAutoReplay = function (a) {
                            return this._pl.videoplugin.setAutoReplay(a)
                        };
                        a.prototype.feedback =
                                function (a) {
                                    return this._pl.feedback(a)
                                };
                        a.prototype.getLog = function (a) {
                            return this._pl.getLog(a)
                        };
                        a.prototype.getServerTime = function (a) {
                        };
                        a.prototype.setPlayerInfo = function (a) {
                            this._pl.setPlayerInfo(a)
                        };
                        a.prototype.setHorseRaceLampInfo = function (a) {
                        };
                        return a
                    }(), PlayerConf = {
                        configConver: function (a, b) {
                            var c = {
                                report: !0,
                                dfull: !0,
                                fullscreen: !0,
                                skinnable: !0,
                                controls: !1,
                                loop: !1,
                                definition: !0,
                                autoSize: "0",
                                changeParent: !1,
                                posterType: "1",
                                playsinline: "1",
                                autoplay: "0",
                                onlyPic: !1,
                                playIngBg: !1,
                                dvideoSize: !0,
                                mustAutoplay: !1,
                                next: !1,
                                setBtn: !1,
                                seek: !0,
                                share: !1,
                                controlBarVisible: !0,
                                bigPlayBtnVisible: !0,
                                lang: "zh_CN",
                                pageControls: !1,
                                endToLiveback: !1,
                                x5Type: "x5"
                            };
                            a.setBtn = !1;
                            a.share = !1;
                            a.hasOwnProperty("pa") && (a.pano = a.pa, delete a.pa);
                            a.hasOwnProperty("auto_play") && (a.autoplay = a.auto_play, delete a.auto_play);
                            a.hasOwnProperty("autoReplay") && (a.loop = "1" == a.autoReplay, delete a.autoReplay);
                            a.hasOwnProperty("url") && (a.report = !1, a.nskin = 7, a.definition = !1);
                            0 > parseInt(a.posterType) && !a.hasOwnProperty("controls") && !a.hasOwnProperty("skinnable") &&
                            (a.controls = "1", a.skinnable = "0");
                            b.skinnable = 1;
                            b.controls = 1;
                            for (var d in a)b[d] = a[d];
                            for (d in c)a.hasOwnProperty(d) ? "boolean" == typeof c[d] && (a[d] = "1" == a[d]) : a[d] = c[d];
                            if (1 < parseInt(a.autoplay) || 0 > parseInt(a.autoplay))a.autoplay = "0";
                            if (3 < parseInt(a.posterType) || -2 > parseInt(a.posterType))a.posterType = "1";
                            a.autoplay += "";
                            a.posterType += "";
                            a.onlyPic = !1;
                            a.playIngBg = !0;
                            switch (videoSdkTool.getDevice()) {
                                case "androidPhone":
                                case "androidPad":
                                case "android":
                                    switch (videoSdkTool.getBrowser()) {
                                        case "uc":
                                            a.skinnable = !1;
                                            a.controls = !0;
                                            break;
                                        default:
                                            a.mustAutoplay || (a.autoplay = "0")
                                    }
                                    a.soundVisible = !1;
                                    b.soundVisible = !1;
                                    break;
                                case "iphone":
                                    switch (videoSdkTool.getBrowser()) {
                                        case "uc":
                                            a.dfull = !1;
                                            break;
                                        case "qq":
                                            a.onlyPic = !0;
                                            break;
                                        default:
                                            var c = navigator.userAgent.toLowerCase(), f = [/cpu iphone os 8_/];
                                            for (d = 0; d < f.length; d++)if (f[d].test(c)) {
                                                a.dvideoSize = !1;
                                                break
                                            }
                                            if (0 <= parseInt(a.posterType) && (f = [/cpu iphone os 6_/], a.skinnable))for (d = 0; d < f.length; d++)if (f[d].test(c)) {
                                                a.onlyPic = !0;
                                                break
                                            }
                                    }
                                    a.soundVisible = !1;
                                    b.soundVisible = !1;
                                case "ipad":
                                    switch (videoSdkTool.getBrowser()) {
                                        case "qqwebview":
                                            c = navigator.userAgent.toLowerCase();
                                            /cpu iphone os 8_/.test(c) && !a.mustAutoplay && (a.autoplay = "0");
                                            break;
                                        default:
                                            a.mustAutoplay || (a.autoplay = "0")
                                    }
                                    break;
                                case "pc":
                                    a.playIngBg = !1
                            }
                        }
                    }, BaseH5Player = function () {
                        function a() {
                            this.init()
                        }

                        ClassTool.inherits(a, ClassObject);
                        a.prototype.init = function () {
                            this.api = new H5Sdk(this)
                        };
                        a.prototype.setUp = function (a, c, d) {
                            this.vModelInit = this.canplay = !1;
                            this.model = new Model;
                            this.setModelByEnv();
                            this.model.api =
                                    this.getVideoApi();
                            this.model.outConfig = {};
                            this.configHanlder(a, this.model.outConfig);
                            this.model.config.refresh(a);
                            this.model.playerConfig.refresh({version: this.version});
                            this.initPlugin();
                            this.facade = new Facade;
                            this.facade.init(this.model.config);
                            this.reportplugin = new ReportPlayer(this.facade, this.model);
                            this.reportplugin.setUp();
                            this.globalplugin = new GlobalPlayer(this.facade, this.model);
                            this.globalplugin.setUp(this);
                            this.skinplugin = new SkinPlayer(this.facade, this.model);
                            this.skinplugin.setUp(a,
                                    c, d);
                            this.errorplugin = new ErrorPlayer(this.facade, this.model);
                            this.errorplugin.setUp(this, this.skinplugin.el.error, this.api);
                            this.addEvents();
                            this.envCheck() && this.startGetData()
                        };
                        a.prototype.initPlugin = function () {
                        };
                        a.prototype.envCheck = function () {
                            return "1" != this.model.config.pano || videoSdkTool.checkPano() ? !0 : (this.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.VIDEO_INFO, [{
                                code: ERR.NOSupport,
                                message: Message.NoSupportPano
                            }])), !1)
                        };
                        a.prototype.setModelByEnv = function () {
                            switch (videoSdkTool.getDevice()) {
                                case "pc":
                                case "mac":
                                    this.model.systemData.refresh({pc: !0});
                                    break;
                                default:
                                    this.model.systemData.refresh({pc: !1})
                            }
                        };
                        a.prototype.configHanlder = function (a, c) {
                            PlayerConf.configConver(a, c);
                            a.hasOwnProperty("p") && (this.model.videoSetting.p = a.p)
                        };
                        a.prototype.addEvents = function () {
                            this.facade.addEventListener(SkinEvent.EVENT, this.skinHandler, this);
                            this.facade.addEventListener(PlayerEvent.EVENT, this.videoHandler, this)
                        };
                        a.prototype.removedEvents = function () {
                            this.facade.removeEventListener(SkinEvent.EVENT, this.skinHandler, this);
                            this.facade.removeEventListener(PlayerEvent.EVENT,
                                    this.videoHandler, this)
                        };
                        a.prototype.startGetData = function () {
                            this.log("\u5f00\u59cb\u8bf7\u6c42\u6570\u636e");
                            this.vModel = new ModelHandler(this.model);
                            this.vModel.addEventListener(LoadEvent.LOADCMP, this.dataCmp, this);
                            this.vModel.addEventListener(LoadEvent.LOADERROR, this.errorHanlder, this);
                            this.vModel.setUp(this.model.config, this.skinplugin);
                            this.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.VIDEO_DATA_START))
                        };
                        a.prototype.dataCmp = function () {
                            this.log("\u8bf7\u6c42GpC\u6210\u529f");
                            var a =
                                    this;
                            "0" == a.model.videoSetting.isdrm ? (a.setupPlayer(), a.vModelInit = !0, a.skinplugin.addEventListener(LoadEvent.LOADCMP, function () {
                                "0" == a.model.config.autoplay ? a.videoplugin.showPoster() : a.videoplugin.startAuth()
                            }, this), a.facade.color.register(this.model.config), a.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.VIDEO_DATA_CMP)), a.skinplugin.load()) : a.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.ERROR, [{
                                code: ERR.VOD_CONFIG_DRM,
                                message: Message.Drm
                            }]))
                        };
                        a.prototype.setupPlayer =
                                function () {
                                    this.log("\u5f00\u59cb\u521b\u5efa\u64ad\u653e\u5668");
                                    this.videoplugin || (this.videoplugin = new VideoPlayer(this.facade, this.model), this.videoplugin.setUp(this.model.videoSetting, this.skinplugin.el.video))
                                };
                        a.prototype.creatVideo = function () {
                            this.log("\u5f00\u59cb\u521b\u5efa\u89c6\u9891");
                            this.videoplugin.startPlay(this.skinplugin.getVideArea())
                        };
                        a.prototype.setupAdplugin = function () {
                            this.model.record.as = videoSdkTool.now();
                            this.log("\u5f00\u59cb\u8bf7\u6c42\u5e7f\u544a");
                            this.adplugin = new AdCtrl(this.facade,
                                    this.model);
                            this.facade.addEventListener(AdEvent.EVENT, this.adHandler, this);
                            this.adplugin.setUp(this.videoplugin.mediaPlayer, this.skinplugin.el)
                        };
                        a.prototype.errorHanlder = function (a) {
                            this.log("\u6570\u636e\u8bf7\u6c42\u5931\u8d25");
                            this.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.ERROR, a.args[1]))
                        };
                        a.prototype.adHandler = function (a) {
                            this.log("\u5e7f\u544a\u8fd4\u56de" + a.args[1]);
                            switch (a.args[1]) {
                                case AdEvent.HEADSTART:
                                    this.model.joint = 2;
                                    this.facade.dispatchEvent(new Event(PlayerEvent.EVENT,
                                            AdEvent.HEADSTART));
                                    break;
                                case AdEvent.HEADEND:
                                    this.model.joint = 2;
                                case AdEvent.NOAD:
                                    this.model.joint = 0, this.facade.removeEventListener(AdEvent.EVENT, this.adHandler, this), this.facade.dispatchEvent(new Event(PlayerEvent.EVENT, a.args[1], a.args[2])), this.creatVideo()
                            }
                        };
                        a.prototype.videoHandler = function (a) {
                            this.vStateHandler(a);
                            switch (a.args[1]) {
                                case PlayerEvent.VIDEO_AUTH_VALID:
                                    this.canplay = !0;
                                    this.setupAdplugin();
                                    break;
                                case PlayerEvent.VIDEO_DATA_START:
                                case PlayerEvent.GSLB_START:
                                case PlayerEvent.GSLB_CMP:
                                case PlayerEvent.VIDEO_DATA_CMP:
                                case MediaEvent.PLAYING:
                                case MediaEvent.LODING:
                                    return;
                                case PlayerEvent.INIT:
                                    "0" != this.model.config.autoSize && this.skinplugin.autoSize();
                                    this.model.playerConfig.refresh({
                                        pWidth: this.skinplugin.el.offsetWidth,
                                        pHeight: this.skinplugin.el.offsetHeight
                                    });
                                    break;
                                case PlayerEvent.WPH:
                                    this.destroy();
                                    return
                            }
                            if (this.model.config.hasOwnProperty("callbackJs")) {
                                var c = a.args[1];
                                a = a.args[2];
                                c == PlayerEvent.ERROR && (c = MediaEvent.ERROR);
                                WIN[this.model.config.callbackJs] && WIN[this.model.config.callbackJs](c, a)
                            }
                        };
                        a.prototype.vStateHandler = function (a) {
                        };
                        a.prototype.skinHandler =
                                function (a) {
                                };
                        a.prototype.destroy = function () {
                            this.skinplugin && this.skinplugin.shutDown();
                            this.globalplugin && this.globalplugin.destroy();
                            this.videoplugin && this.videoplugin.destroy();
                            this.removedEvents();
                            this.vModel && (this.vModel.destroy(), this.vModel = null);
                            this.adplugin && (this.adplugin.destroy(), this.adplugin = null);
                            this.reportplugin && this.reportplugin.destroy()
                        };
                        a.prototype.closeVideo = function () {
                            this.videoplugin.destroy()
                        };
                        a.prototype.shutDown = function () {
                            this.destroy();
                            this.addEvents();
                            this.videoplugin &&
                            this.videoplugin.showPoster()
                        };
                        a.prototype.startUp = function () {
                            this.log("call startUp -vModelInit:" + this.vModelInit);
                            this.destroy();
                            this.vModelInit ? (this.reportplugin.setUp(), this.addEvents(), this.videoplugin && this.videoplugin.startAuth()) : (this.model.config.autoplay = "1", this.reportplugin.setUp(), this.addEvents(), this.startGetData())
                        };
                        a.prototype.playNewId = function (a) {
                            var c = "";
                            this.destroy();
                            this.model.clear();
                            this.setModelByEnv();
                            this.model.playerConfig.refresh({version: this.version});
                            this.model.init({
                                deviceId: this.model.lc(),
                                os: videoSdkTool.getOs(),
                                osv: "-",
                                width: window.screen.width,
                                height: window.screen.height,
                                appv: this.version
                            });
                            this.vModelInit = !1;
                            this.canplay && !a.hasOwnProperty("autoplay") && (c = "1");
                            this.configHanlder(a, this.model.outConfig);
                            "" != c && (a.autoplay = c);
                            this.model.config.refresh(a);
                            this.reportplugin.setUp();
                            this.addEvents();
                            this.startGetData()
                        };
                        a.prototype.feedback = function (a) {
                            "undefined" == typeof a && (a = {});
                            a.type = "0";
                            a.logcontent = api.getLog();
                            this.reportplugin.report(a)
                        };
                        a.prototype.getLog = function () {
                            return this.reportplugin.getLog()
                        };
                        a.prototype.getVideoApi = function () {
                            var a = this;
                            return {
                                getVideoInfo: function () {
                                    return {time: a.videoplugin.mediaPlayer.getTime()}
                                }
                            }
                        };
                        a.prototype.setPlayerInfo = function (a) {
                            var c = {buttonColor: "fault", progressBarColor: "active"};
                            if (a.hasOwnProperty("onoff")) {
                                for (var d in a.onoff)a[d] = a.onoff[d];
                                delete a.onoff
                            }
                            for (d in a)c.hasOwnProperty(d) && (a[c[d]] = a[d], delete a[d]), "boolean" == typeof this.model.config[d] && (a[d] = "1" == a[d] + "");
                            c = {};
                            c.logo = a.logo;
                            c.watermark = a.watermark;
                            this.model.playerConfig.refresh(c);
                            this.model.config.refresh(a);
                            this.facade.color.refresh(a);
                            this.skinplugin.refreshPlayerInfo(a);
                            this.videoplugin.refreshPlayerInfo(a)
                        };
                        return a
                    }(), BlH5Player = function () {
                        function a() {
                            this.superClass.constructor.apply(this, arguments)
                        }

                        ClassTool.inherits(a, BaseH5Player);
                        a.prototype.init = function () {
                            this.superClass.init.apply(this, arguments);
                            this.version = "H5_Live_20161214_4.5.11";
                            this.errCheck = null;
                            this.checkTimer = new Timer(3E3, this, this.checkHanlder, 1);
                            this.checkLoopTimer = new Timer(6E4, this, this.checkLoopHanlder)
                        };
                        a.prototype.setUp =
                                function (a, c, d) {
                                    a.hasOwnProperty("domain") || (a.domain = WIN.location.host || DC.domain);
                                    this.superClass.setUp.apply(this, arguments)
                                };
                        a.prototype.setModelByEnv = function () {
                            this.superClass.setModelByEnv.apply(this, arguments);
                            this.model.playType = "live";
                            this.model.videoSetting.p = 100;
                            this.model.videoSetting.gslb = !1
                        };
                        a.prototype.initPlugin = function () {
                            SOTool.setPluginStack([{
                                name: "ErrorInfo",
                                url: "//{domain}/p/{LANG}/plugin/errorRender.js"
                            }, {name: "FeedbackInfo", url: "//{domain}/p/{LANG}/plugin/feedbackRender.js"},
                                {name: "PanoRender", url: "//{domain}/p/{LANG}/plugin/panoRender1.1.js"}, {
                                    name: "Ad",
                                    url: "//{domain}/p/{LANG}/plugin/a.js"
                                }, {
                                    name: "lang.message.plugin.live",
                                    url: "//{domain}/p/{LANG}/plugin/lang/lang_live.js"
                                }, {
                                    name: "media.mediaPlay.hls",
                                    url: "//{domain}/player/plugin/streamRender.js"
                                }], this.model.config.lang);
                            SOTool.preload("lang.message.plugin.live", "ErrorInfo", "media.mediaPlay.hls")
                        };
                        a.prototype.configHanlder = function (a, c) {
                            a.progressBarVisible = !1;
                            a.nskin = 7;
                            a.timeVisible = !1;
                            this.superClass.configHanlder.apply(this,
                                    arguments)
                        };
                        a.prototype.startGetData = function () {
                            this.superClass.startGetData.apply(this, arguments)
                        };
                        a.prototype.vStateHandler = function (a) {
                            if (this.model.liveback)return !0;
                            switch (a.args[1]) {
                                case MediaEvent.START:
                                    this.checkLoopTimer.start();
                                    break;
                                case MediaEvent.PLAYING:
                                    this.removeCheck();
                                    this.checkTimer.reset();
                                    this.checkTimer.start();
                                    break;
                                case MediaEvent.PAUSE:
                                case MediaEvent.STOP:
                                    this.removeCheck(), this.checkTimer.reset()
                            }
                            return !0
                        };
                        a.prototype.checkHanlder = function (a) {
                            this.checkRequestList() && (this.removeCheck(),
                                    this.lRequest = new ActStatusProxy(this.model), this.lRequest.addEventListener(LoadEvent.LOADCMP, this.checkActDataCmp, this), this.lRequest.load(), this.log("\u5f00\u59cb\u8bf7\u6c42\u76f4\u64ad\u72b6\u6001\u63a5\u53e3"))
                        };
                        a.prototype.checkLoopHanlder = function (a) {
                            this.checkRequestList() && (this.removeCheck(), this.lRequest = new ActStatusProxy(this.model), this.lRequest.addEventListener(LoadEvent.LOADCMP, this.checkActDataCmp, this), this.lRequest.needLiveId = !1, this.lRequest.load(), this.log("\u5f00\u59cb\u8bf7\u6c42\u6d3b\u52a8\u72b6\u6001\u63a5\u53e3"))
                        };
                        a.prototype.checkRequestList = function () {
                            for (var a = ["activityId", "liveId", "streamId"], c = 0; c < a.length; c++) {
                                var d = a[c];
                                if (this.model.config.hasOwnProperty(d) || this.model.videoSetting.hasOwnProperty(d))return !0
                            }
                            return !1
                        };
                        a.prototype.removeCheck = function () {
                            this.lRequest && (this.lRequest.removeEventListener(LoadEvent.LOADCMP, this.cheActDataCmp, this), this.lRequest.unload(), this.lRequest = null)
                        };
                        a.prototype.checkActDataCmp = function (a) {
                            this.log("\u76f4\u64ad\u72b6\u6001\u63a5\u53e3\u8fd4\u56de" + a.args[1][0]);
                            switch (a.args[1][0] + "") {
                                case "2":
                                    "1" == this.model.videoSetting.activityStatus && (this.videoplugin && this.videoplugin.mediaPlayer.closeVideo(), this.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.VIDEO_INFO, [{
                                        code: ERR.INTERRUPT,
                                        message: GlobalHandler.liveInfoMap[a.args[1][0]]
                                    }])), this.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.VIDEO_INTERRUPT, {code: a.args[1][0]})));
                                    break;
                                case "3":
                                    this.videoplugin && this.videoplugin.mediaPlayer.closeVideo();
                                    this.facade.dispatchEvent(new Event(PlayerEvent.EVENT,
                                            PlayerEvent.VIDEO_INFO, [{
                                                code: ERR.END,
                                                message: GlobalHandler.liveInfoMap[a.args[1][0]]
                                            }]));
                                    this.facade.dispatchEvent(new Event(PlayerEvent.EVENT, PlayerEvent.VIDEO_LIVESTOP, {code: a.args[1][0]}));
                                    this.checkLoopTimer.stop();
                                    this.checkTimer.stop();
                                    break;
                                case "1":
                                    switch (this.model.videoSetting.activityStatus) {
                                        case "2":
                                            this.resumeByInterrupt();
                                            break;
                                        case "3":
                                            this.resumeByInterrupt()
                                    }
                            }
                            this.model.videoSetting.activityStatus = a.args[1][0]
                        };
                        a.prototype.resumeByInterrupt = function () {
                            this.videoplugin.startGslb(0)
                        };
                        return a
                    }(), BlFlashPlayer = function () {
                        function a(a) {
                            this.minVer = a
                        }

                        a.prototype = {
                            setUp: function (a, c) {
                                var d = "http://sdk.lecloud.com/live.swf";
                                videoSdkTool.isHttps() && (d = "https://s.yuntv.letv.com/blives.swf");
                                var f = "Opaque";
                                a.hasOwnProperty("wmode") && (f = a.wmode, delete a.wmode);
                                a.hasOwnProperty("swf") && (d = a.swf);
                                a.hasOwnProperty("url") && (d = "http://yuntv.letv.com/player/live/direct/direct.swf");
                                "Opaque" == f && (a.panoType = 1);
                                this.id = FlashPlayer.create(c, {
                                    url: d,
                                    version: this.minVer,
                                    wmode: f
                                }, this.flashvarsToString(a));
                                this.plugin = FlashPlayer.getPlayer(this.id);
                                this.api = new FlashSdk(this)
                            }, flashvarsToString: function (a) {
                                var c = "", d;
                                for (d in a)c += d + "=" + a[d] + "&";
                                return c
                            }
                        };
                        return a
                    }(), CloudPlayer = function () {
                        function a(a) {
                            this.init(a)
                        }

                        a.prototype = {
                            init: function (a) {
                                switch (this.check(a)) {
                                    case "swf":
                                        this.player = new BlFlashPlayer(10);
                                        break;
                                    default:
                                        this.player = new BlH5Player
                                }
                            }, setUp: function (a, c, d) {
                                this.player.setUp.apply(this.player, arguments)
                            }, check: function (a) {
                                return a.hasOwnProperty("type") ? a.type : a.hasOwnProperty("dbd") &&
                                "LETV" == a.dbd ? "h5" : "android" != videoSdkTool.getOs() && "iphone" != videoSdkTool.getDevice() && "ipad" != videoSdkTool.getDevice() && FlashPlayer.check(10) ? "swf" : document.createElement("video").canPlayType ? "h5" : "swf"
                            }
                        };
                        return a
                    }(), LecloudLivePlayer = function () {
                        function a() {
                        }

                        ClassTool.inherits(a, ClassObject);
                        a.prototype.init = function (a, c) {
                            a.hasOwnProperty("activeid") && (a.activityId = a.activeid, delete a.activeid);
                            var d = "100%", f = "100%", e = "player" + videoSdkTool.creatUuid();
                            a.hasOwnProperty("width") && (isNaN(a.width) ?
                            -1 != d.indexOf("%") && (d = a.width) : d = a.width + "px");
                            a.hasOwnProperty("height") && (isNaN(a.height) ? -1 != f.indexOf("%") && (f = a.height) : f = a.height + "px");
                            d = '<div id="#{player}" style="position: relative;width: {width};height:{height};overflow: hidden;margin-right:auto;margin-left:auto"></div>'.replace(/{width}/g, d);
                            d = d.replace(/{height}/g, f);
                            d = d.replace(/#{player}/g,e);"string"==typeof c&&""!=c&&UiTool.$E(c)?UiTool.$E(c).innerHTML=d:DC.write(d);f=Api;d=new CloudPlayer(a);d.setUp(a,e,c);this.sdk=new f(d.player)};
                            return a
                        }();
                        WIN.CloudLivePlayer = LecloudLivePlayer;
                        WIN.leCloudLiveplayer = function (a) {
                            return {
                                setup: function (b) {
                                    (new CloudLivePlayer).init(b, a)
                                }
                            }
                        };
                    }
            )
            (document, undefined);
    </script>
</head>

<body style="visibility: visible;">

</body>
</html>