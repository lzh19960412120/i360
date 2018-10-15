define(['config'],function(){
	require(['jquery','jqueryvalidate'],function($,$jdate){
        !function(){
            $(function(){
                $('.quc-form').validate({
                    rules:{
                        account:{//手机号验证
                            required:true,
                            minlength:11,
                            maxlength:11,
                            remote: {
                                url: "http://10.31.162.234/i360project/php/reg.php", 
                                type: "post"  
                            }
                        },
                        password:{//密码验证
                            required:true,
                            minlength:6,
                            maxlength:20,
                        },
                        captcha:{//验证码验证
                            required:true,
                            equalTo:'#quc-captcha-change'
                        },
                        is_agree:{//是否勾选阅读协议
                            required:true,
                        },
                    },
                    messages:{
                        account:{
                            required:'请输入手机号',
                            minlength:'手机号不能小于11位',
                            maxlength:'手机号不能大于11位',
                            remote:'手机号已注册，请登录'
                        },
                        password:{
                            required:'密码不能为空',
                            minlength:'密码不能小于8',
                            maxlength:'密码不能大于12',
                        },
                        captcha:{
                            required:'验证码不能为空',
                            equalTo:'验证码有误'
                        },
                        is_agree:{
                            required:'请阅读协议',
                        },
                    }
                    
                });
            });
            
            $.validator.setDefaults({
                success: function(lable){
                    lable.text('√输入正确').css('color','green').addClass('valid');
                }
            });

		}();
		
	});
});