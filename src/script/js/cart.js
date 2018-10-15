define(['config'],function(){
	require(['jquery'],function($){
		!function(){
			$('#header').load('header.html');
			$('#footer').load('footer.html');
		}();
		
	});
});