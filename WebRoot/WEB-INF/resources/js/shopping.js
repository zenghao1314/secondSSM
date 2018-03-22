$(function(){
	//导航栏变色
	$(".navItem").hover(function(){
		$(this).css({"color":"#333","background":"#f0f0f0"});
	},function(){
		$(this).css({"color":"#fff","background":"#333"});
	})
	
	var number;//商品的数量
	var price;//商品价格
	
	//减商品数量
	$(".substractBtn").click(function(){
		number=$(".productsNumber").val();
		if(number<2){
			$(".substractBtn").unbind("click");
			return;
		}
		number-=1;
		$(".productsNumber").val(number);
		count(this);
	})
	//加商品数量
	$(".addBtn").click(function(){
		number=parseInt($(".productsNumber").val());
		number+=1;
		$(".productsNumber").val(number);
		$(".number").text(number);
		count(this);
	})
	
	function count(obj){
		price=parseInt($(obj).parent().prev().text());
		$(obj).parent().next().text(number*price);
		$(".order_total").html(number*price);
	}
	
	$(".delete").click(function(){
		$(this).parent().parent().remove();
	})
	
	$(".orderInfo").hover(function(){
		$(".closeBtn").show();
	},function(){
		$(".closeBtn").hide();
	})

	$(".closeBtn").click(function(){
		$(".filter").hide();
		$(".orderInfo").hide();
	})
	
	$(".affirm").click(function(){
		$(".filter").show();
		$(".orderInfo").show();
	})
	
	$("#name").change(function(){
		$(".name").text($(this).val());
	})
	$("#phone").change(function(){
		$(".phone").text($(this).val());
	})
	$("#address").change(function(){
		$(".address").text($(this).val());
	})
})

