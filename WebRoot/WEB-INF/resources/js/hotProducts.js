$(function(){
	//导航栏变色
	$("#title ul li").hover(
	function(){
		$(this).css({"background":"#aaaaaa","color":"#ffffff","border":"1px #31708F solid"});
	},function(){
		$(this).css({"background":"#F8F8F8","color":"#337ab7","border":"none"});
	});
	
	$(".col-md-3").hover(function(){
		$(this).css("border","1px solid #f00");	
		$(this).css("color","red");
	},function(){
		$(this).css("border","1px solid #fff");
		$(this) .css("color","#204D74");
	});
	

});
