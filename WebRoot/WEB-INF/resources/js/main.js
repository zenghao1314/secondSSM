
$(function(){
	
	
	$(".navItem").hover(function(){
		$(this).css({"color":"#333","background":"#f0f0f0"});
	},function(){
		$(this).css({"color":"#fff","background":"#333"});
	})
	
	//加入购物车
	$(".col-md-7 .glyphicon-shopping-cart").click(function(){
		alert("加入购物车成功");
	});
	//切换商品页面
	//切换休闲专区
	$(".left-menu table tr").eq(1).click(function(){
		$(".col-md-7").css("display","none");
		$("#XXproducts").css("display","block");
	});
	//切换饮料专区
	$(".left-menu table tr").eq(2).click(function(){
		$(".col-md-7").css("display","none");
		$("#YLproducts").css("display","block");
	});
	//切换水果专区
	$(".left-menu table tr").eq(3).click(function(){
		$(".col-md-7").css("display","none");
		$("#SGproducts").css("display","block");
	});
	//切换护理专区
	$(".left-menu table tr").eq(4).click(function(){
		$(".col-md-7").css("display","none");
		$("#HLproducts").css("display","block");
	});
	//切换清洁专区
	$(".left-menu table tr").eq(5).click(function(){
		$(".col-md-7").css("display","none");
		$("#QJproducts").css("display","block");
	});
	//切换营养专区
	$(".left-menu table tr").eq(6).click(function(){
		$(".col-md-7").css("display","none");
		$("#YYproducts").css("display","block");
	});
	//切换速食专区
	$(".left-menu table tr").eq(7).click(function(){
		$(".col-md-7").css("display","none");
		$("#SSproducts").css("display","block");
	});
	//切换烟酒专区
	$(".left-menu table tr").eq(8).click(function(){
		$(".col-md-7").css("display","none");
		$("#YJproducts").css("display","block");
	});
	//切换调味专区
	$(".left-menu table tr").eq(9).click(function(){
		$(".col-md-7").css("display","none");
		$("#TWproducts").css("display","block");
	});
	//切换速冻专区
	$(".left-menu table tr").eq(10).click(function(){
		$(".col-md-7").css("display","none");
		$("#SDproducts").css("display","block");
	});
	//切换居家专区
	$(".left-menu table tr").eq(11).click(function(){
		$(".col-md-7").css("display","none");
		$("#JJproducts").css("display","block");
	});
	//切换居家专区
	$(".left-menu table tr").eq(12).click(function(){
		$(".col-md-7").css("display","none");
		$("#studyproducts").css("display","block");
	});
	
	//商品边框
//	$(".col-md-3").hover(function(){
//		$(this).css("border","1px solid #f00");	
//	},function(){
//		$(this).css("border","none");
//	});
	
	});
