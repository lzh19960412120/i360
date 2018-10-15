define(['config'],function(){
	require(['jquery'],function($){
		!function(){
			$('#header').load('header.html');
			$('#footer').load('footer.html');



			$.ajax({//  手机/配件  的数据渲染
				url:'http://10.31.162.234/i360project/php/goodspic.php',
				dataType:'json'
			}).done(function(data){				
	 			var $str='';
				$.each(data,function(index,value){
					$str+='<a href="http://10.31.162.234/i360project/src/details.html?sid='+
							value.sid
							+'" target="_blank">'+
							'<li class="sku">'+
								'<div class="imgbox">'+
								'<img class="js-lazyload"  src="'+
								value.url.split(',')[0]
								+'" style="display: block; width: 150px; height: 150px;">'+
								'</div>'+
								'<h5 class="proname">'+
								value.title
								+'</h5>'+
								'<p class="proprice"  >'+
								'<i class="yen" style="font-style:normal;">￥'+
								'</i>'+
								value.price
								+'</p>'+
							'</li>'+
						'</a>' ; 
				});
				
				$('.phone ul').html($str);
			});




		}();

		!function(){
				//楼梯效果
				var $louti=$('#elevator');//左侧楼梯
				var $loutili=$('#elevator li');
				var $louceng=$('#main .louti');
				var $return=$('#totopnew')
				$(window).on('scroll',function(){
					var $scrolltop=$(window).scrollTop();//获取滚动条的top值。
					if($scrolltop>=600){
						$louti.show();
						$return.css('display','block')//右侧栏回到顶部显示
					}else{
						$louti.hide();
						$return.css('display','none')//右侧栏回到顶部显示
					}
					
					//
					$louceng.each(function(index,element){	
						var $top=$louceng.eq(index).offset().top+$(this).innerHeight()/2;
						if($top>$scrolltop){
							$loutili.removeClass('active');//清除所有的类
							$loutili.eq($(this).index()).addClass('active');
							return false;//阻止循环
							//每次只能有一个满足条件添加类，其他的通过循环阻止
						}
					});
				});
				//点击左侧楼梯，右边对应的楼层跳转。
				$loutili.not('.last').on('click',function(){
					$(this).addClass('change').siblings('li').removeClass('change');
					var $top=$louceng.eq($(this).index()).offset().top;
					$('html,body').animate({//赋值时考虑兼容。
						scrollTop: $top
					});
				});
				
				//点击top回到顶部
				$('.last').on('click',function(){
					$('html,body').animate({//赋值时考虑兼容。
						scrollTop: 0
					});
				});

				$loutili.not('.last').on('mousemove',function(){
					$(this).addClass('change').siblings('li').removeClass('change');
				});



				//导航右侧隐藏栏显示
				$('.sub-item').on('mousemove',function(){
					$(this).find('.left-sub-list').show();
				});
				$('.sub-item').on('mouseout',function(){
					$(this).find('.left-sub-list').hide();
				});


				//轮播切换
				var $num=1
				var $ul=$('.starlistbox  ul')
				$('.arrright').on('click',function(){
					if($num<3){
						$num++;
						$ul.animate({
							left:-1255*($num-1),
						});
					}else{
						$ul.animate({
							left:0,
						},0.3);
						$num=1;
					}
				});
				
				$('.arrleft').on('click',function(){
					if($num>1){
						$num--;
						$ul.animate({
							left:-1255*($num-1),
						});
					}else{
						$ul.animate({
							left:-2510,
						},0.3);
						$num=3
					}
				})

		}()
		
	});
});