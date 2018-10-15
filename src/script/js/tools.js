define([],function(){
	return {
		rannum:function(min,max){
			return Math.round(Math.random()*(max-min))+min;
		}
	}
});