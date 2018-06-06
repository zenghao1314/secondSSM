
var n = "n";

$(function(){
    /*getAllGoods();*/

    //导航栏变色
    $(".navItem").hover(function(){
        $(this).css("background","#f0f0f0");
        $(this).children().css("color","#333")
    },function(){
        $(this).css("background","#333");
        $(this).children().css("color","#f0f0f0")
    })

})


function getAllGoods() {
	$.ajax({
        type: 'post',
        url: '/getAllGoods',
        success: function (data) {

        $(".row").html("");
        var HTML="";
        data.forEach(function (item){

            HTML += '<div class="col-md-3 column "><input type="hidden" value='+item.gid+' class="id"><div class="gname">'+item.gname+'</div><img src="http://localhost:8080/resources/images/73858PICHZY.jpg" height="200px" /> <div class="cost"><div class="price">￥'+item.gprice+'</div><div class="exemption">包邮</div></div><div class="introduce" >'+item.gcontent+'</div><div class="shoppingCart"><span class="glyphicon glyphicon-shopping-cart shop"  title="加入购物车" onclick="addShopCar(this)"></span><a href="/jump/shopping"><span class="glyphicon glyphicon glyphicon-yen "  title="结算" style="float: right;"></span></a></div></div>';
        })
        $(".row").html(HTML);
    }
})
}
function addShopCar(obj){
    var productList;
    var count;
    var box = $(obj).parent().parent();
    var id = box.find(".id").val();

    if(localStorage.getItem("list")){
        productList = JSON.parse(localStorage.getItem("list")) ;
        for(var i in productList){
            if(productList[i].gid == id){
                alert("您已经把该商品加入购物车了！不需要重复添加。");
                return;
            }
        }
    }else{
        productList = {};
    }
    var name = box.find(".gname").html();
    var price = box.find(".price").html();

    if(localStorage.getItem("count")){
        count = parseInt(localStorage.getItem("count")) ;
    }else if(Object.keys(productList).length == 0){
        count = 1;
    }else{
        count = 1;
    }
    var newobj={};
    newobj["gid"] = id;
    newobj["name"] = name;
    newobj["gprice"] = price;
    productList[count]=newobj;
    count += 1;
    localStorage.setItem("list",JSON.stringify(productList));
    localStorage.setItem("count",count+"");
    alert("加入购物车成功！")


}
