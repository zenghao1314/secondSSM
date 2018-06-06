$(function(){

	var productList = JSON.parse(localStorage.getItem("list"));
    var length = 0;
   for(var i in productList){
        var gid = productList[i].gid;
        var gname = productList[i].name;
        var gprice = productList[i].gprice.split("￥")[1];
        var html = '<tr class="info"><input type="hidden" value='+ length +' /><td class="gid" style="display:none">'+gid+'</td><td class="name">'+gname+'</td><td class="price">'+gprice+'</td><td ><img src="../resources/images/substract.png" class="substractBtn" /><input class="productsNumber" type="text" value="1" readonly="true" style="width: 40px;"/><img src="../resources/images/add.png" class="addBtn"/></td><td class="total">'+gprice+'</td><td ><span class="delete">删除</span></td></tr>'
        $(".showProduct").append(html);
        var HTML = '<tr><input type="hidden" value='+ length +' /><td class="gid" style="display:none">'+gid+'</td><td class="order_name">'+gname+'</td><td class="order_price">'+gprice+'</td><td class="order_number">1</td><td class="order_total">'+gprice+'</td></tr>'
        $(".orderProduct").append(HTML);
       length++;
	}




	//导航栏变色
	$(".navItem").hover(function(){
		$(this).css("background","#f0f0f0");
		$(this).children().css("color","#333")
	},function(){
        $(this).css("background","#333");
        $(this).children().css("color","#f0f0f0")
	})
	
	var number;//商品的数量
	var price;//商品价格
	//减商品数量
    function substract(event){
    	var list;
        var obj = $(event.toElement);
        number = parseInt(obj.next().val());
        if(number < 2){
            $(obj).unbind("click");
            return;
        }
        number -= 1;
        obj.next().val(number);
        //提交订单的里面商品数量
        var listNumber = parseInt($(this).parent().parent().find("input").val());
        list=$(".orderProduct").children().children().eq(listNumber);
        list.find(".order_number").html(number);

        count(obj,list);
    }


	//加商品数量
	$(".addBtn").bind("click",function(){
        var list;
        number = parseInt($(this).prev().val());
        number += 1;
        $(this).prev().val(number);
        $(".number").text(number);
        if ($(this).prev().prev()[0].addEventListener) {
            $(this).prev().prev()[0].addEventListener("click" , substract );
        } else if ($(this).prev().prev()[0].attachEvent) {
            ele.attachEvent('onclick' , substract);
        } else {
            return false;
        }
        //提交订单的里面商品数量
        var listNumber = parseInt($(this).parent().parent().find("input").val());
        list = $(".orderProduct").children().children().eq(listNumber);
        list.find(".order_number").html(number);
        count($(this),list);
	})

	
	function count(obj,list){
		price=parseInt(obj.parent().prev().text());
        obj.parent().next().text(number*price);
        list.find(".order_total").html(number*price);
	}
	
	$(".delete").click(function(){
		var gid;
        var id = $(this).parent().parent().find(".gid").text();
        for(var i in productList){
            gid = productList[i].gid;
            if( id == gid ){
                delete productList[i];
                localStorage.setItem("list",JSON.stringify(productList));
			}
		}
		var gidList = $(".orderProduct").find(".gid");
        for(var i = 0 ; i < gidList.length; i++){
        	if( id == gidList.eq(i).text()){
                gidList.eq(i).parent().remove();
			}
		}
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
		var total = 0;
		$(".filter").show();
		$(".orderInfo").show();
		for(var i = 0; i< $(".order_total").length;i++){
            total += parseInt($(".order_total").eq(i).text());
		}
		$(".totalPrice").text(total);
	})
	
	$("#name").change(function(){
		$(".recName").text($(this).val());
	})
	$("#phone").change(function(){
		$(".phone").text($(this).val());
	})
	$("#address").change(function(){
		$(".address").text($(this).val());
	})

	$(".position").click(function(){
		localStorage.clear();
		var totalPrice = $(".userinfo").find(".totalPrice").text();
		localStorage.setItem("totalPrice",totalPrice);
        var address = $(".userinfo").find(".address").text();
        localStorage.setItem("address",address);
        var recName = $(".userinfo").find(".recName").text();
        localStorage.setItem("recName",recName);
        var phone = $(".userinfo").find(".phone").text();
        localStorage.setItem("phone",phone);
        var orderInfo = new Object();
        var orderProduct = {};
        var orderProductList = $(".orderProduct").children().children();
        for(var i =0 ;i < orderProductList.length;i++){
            var item = i.toString();
            var piece = orderProductList.eq(i)
            gid = orderProductList.eq(i).find(".gid").text();
            var order_name = piece.find(".order_name").text();
            var order_price = piece.find(".order_price").text();
            var order_number = piece.find(".order_number").text();
            orderInfo[item] = { "gid":gid,"order_name" : order_name,"order_price":order_price,"order_number":order_number};
		}
		localStorage.setItem("orderInfo",JSON.stringify(orderInfo));
        $(this).parent().hide();
        $(this).parent().prev().hide();
        window.location.href="http://localhost:8080/jump/Main";
	})


})

