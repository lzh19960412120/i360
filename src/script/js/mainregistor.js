require(['registor']);


require(['tools','jquery'],function(tool){
    $stop=true;
    $("#quc-captcha-change").removeAttr("disabled");
        $('#quc-captcha-change').on('click',function(){
            $value=tool.rannum(1000,9999);
            $('#quc-captcha-change').css('font-size','28px').val($value);
            $stop=false;
            $("#quc-captcha-change").attr("disabled","disabled");
         
        }).siblings().on('click',function(){
            $("#quc-captcha-change").removeAttr("disabled");
        })
});
