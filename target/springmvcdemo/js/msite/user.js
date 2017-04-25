define(['base-ctrl','layer'],function(BaseController, layer){


    function User(){

    }

    //继承基础控制器
    User.prototype = new BaseController();


    User.prototype.login = function() {
        self = this;
       /* $.qweb.ajaxGet(self.api.admin.user.webchat.validate);*/
        self.display(self.tpl.user.login, {serverUrl:self.serverUrl}).done(function () {
            bindEvents();
        });


        //事件绑定
        function bindEvents(){
            //
            $("#validateCode").on('click',function(){
                var url = self.serverUrl+"wechat/validate/generate?id="+Math.random();
               /* $(this).removeAttr("src")*/
                $(this).attr("src",url)
            });
            $("#submit").on('click',function(){
                var formData = $("#login-form").serialize();
                $.qweb.ajaxPost(self.api.admin.user.webchat.login,formData)
                    .done(function(data){

                        if(data.type == self.respType.type.SUCCESS){
                            layer.msg(data.message,function(){
                                window.location.href = "index.html" ;
                            });
                        }else{
                            layer.msg(data.message,function(){

                            });
                        }

                    });
            });
        }
    }


        return  User ;

});