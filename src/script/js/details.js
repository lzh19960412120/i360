// !function($){
// 	$('#header').load('header.html');
// 	$('#footer').load('footer.html');
// }(jQuery);
define(['config'],function(){
		require(['jquery'],function($){
			!function(){
				$('#header').load('header.html');
				$('#footer').load('footer.html');




				$.ajax({
					url:'http://10.31.162.234/i360project/php/details.php',
					data:{
						sid:location.search.substring(1).split('=')[1]//取出地址栏中sid的值，并传输到后端php
					},
					dataType:'json',
					async:false
				}).done(function(data){
					$value=data[0].url.split(',')//在接收到的数据中取出图片地址数据
					$data=$value.splice($.inArray($value[1],$value),8);//删除地址数组第一项，取出其余项
					var $str='';
					$.each($data,function(index,value){
						 $str+='<li class="tinypic cur">'+
									'<img src="'+
									value
									+'">'+
								   '</li>';	
						});
						$('.scroll-items ul').html($str);//渲染切换图片

						$img='<div id="sf">'+
							'</div>'+
							'<img src="'+
								$data[0]
							+'">';
						$('#spic').html($img);//spic图片渲染

						$img='<img src="'+
								$data[0]
							+'" id="bpic">';
						$('#bf').html($img);//bf图片渲染



						var $name='<strong>'+
									data[0].name
									+'</strong>';
							$('.sInfo .bespeaked').html($name);//渲染标题




						var $price= '<strong class="nowprice">'+
									'<em>￥'+
									'</em>'+
									data[0].price
									+'</strong>';   
							$('#itemPriceDiv').html($price);//渲染价格
							
						
							
						$c=data[0].color.split(',')//在接收到的数据中取出颜色数据
						var $color='';
						$.each($c,function(index,value){
								$color+='<li class="cate-item">'+
											'<a href="#" data-catevalue="1_樱花粉">'+
											value
											+'</a>'+
										'</li>';		   
							});
							$('#color').html($color);//渲染颜色


						$t=data[0].type.split(',')//在接收到的数据中取出型号数据
						var $type='';
						$.each($t,function(index,value){
								$type+='<li class="cate-item cur">'+
											'<a href="#" data-catevalue="2_SE3">'+
											value
											+'</a>'+
										'</li>';	   
							});
							$('#type').html($type);//渲染型号




						$s=data[0].size.split(',')//在接收到的数据中取出版本数据
						var $size='';
						$.each($s,function(index,value){
								$size+='<li class="cate-item">'+
											'<a href="#" data-catevalue="3_6GB+128GB">'+
											value
											+'</a>'+
										'</li>';   
							});
							$('#size').html($size);//渲染版本						
					
					
				})
				
			}();



			!function(){
				//放大镜效果
				 //3.1:鼠标移入移出显示小方和大方。
				 $('#spic').hover(function(){
					 $('#sf').css('display','block');
					 $('#bf').css('display','block');
					 
					 //3.1:小方的尺寸
					 $('#sf').width($(this).width()*$('#bf').width()/$('#bpic').width());
					 $('#sf').height($(this).height()*$('#bf').height()/$('#bpic').height());
					 
					 var $bili=$('#bpic').width()/$('#spic').width();
					 
					 //3.2鼠标在小方里面移动
					 $('#spic').on('mousemove',function(ev){
						 var $left=ev.pageX-$('.picbox').offset().left-$('#sf').width()/2;
						 var $top=ev.pageY-$('.picbox').offset().top-$('#sf').height()/2;
						 if($left<=0){
							 $left=0;
						 }else if($left>=$('#spic').width()-$('#sf').width()){
							 $left=$('#spic').width()-$('#sf').width();
						 }
						 
						 
						 if($top<=0){
							 $top=0;
						 }else if($top>=$('#spic').height()-$('#sf').height()){
							 $top=$('#spic').height()-$('#sf').height();
						 }
						 
						 
						 $('#sf').css({
							 left:$left,
							 top:$top
						 });
						 
						 $('#bpic').css({
							 left:-$bili*$left,
							 top:-$bili*$top
						 })
					 });
				 },function(){
					 $('#sf').css('display','none');
					 $('#bf').css('display','none');
				 });
				 
				 //设置ul尺寸
				 
				 $(document).ready(function(){
					 var $li=$('#list ul li');
					 var $ul=$('#list ul');
					 var $liwidth=$li.eq(0).outerWidth(true);
					//  $ul.width($li.size()* $liwidth);
					 
					 
					 $li.on('mousemove',function(){
						 var url=$(this).find('img').attr('src');//当前点击的li下面的图片路径
						 $('#spic').find('img').attr('src',url);
						 $('#bpic').attr('src',url);
					 });
					 
					 var $num=5;//当前ul里面显示的个数。
					 if($li.length<=5){
						 $('#left,#right').css('color','#fff');
					 }
					 $('#right').on('click',function(){
						 if($num<$li.size()){
							 $num++;
							 $('#left').css('color','#999');
							 if($num==$li.size()){
								 $('#right').css('color','#fff');
							 }
							 $ul.animate({
								 left:-($num-5)*$liwidth
							 });
						 }
					 });
					 
					 $('#left').on('click',function(){
						 if($num>5){
							 $num--;
							 $('#right').css('color','#999');
							 if($num==5){
								 $('#left').css('color','#fff');
							 }
							 $ul.animate({
								 left:-($num-5)*$liwidth
							 });
						 }
					 });
				 })
				 
			 }();


			
		});
	});