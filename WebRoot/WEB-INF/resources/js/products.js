$(function(){
	//导航栏变色
	$("#title ul li").hover(
	function(){
		$(this).css({"background":"#aaaaaa","border":"1px #31708F solid"});
	},function(){
		$(this).css({"background":"#f0f0f0","border":"none"});
	});
	//鼠标移到小图片上显示大图片
	$(".img-less div").hover(function(){
		var i=$(this).index();
		$(this).css("border","1px solid #ee0000");
		$(".img-less div").not($(this)).css("border","none")
		$(".img-big img").not($(".img-big img").eq(i)).hide();
		$(".img-big img").eq(i).show();
	});

	//设定颜色类边框默认有边框
	$(".choose-color img").eq(0).css("border","red 1px solid");
	
	//加入购物车的提示信息

	
})

