
var goodsList =document.getElementsByClassName("goodsList")[0];
var goodsentrybox=document.getElementsByClassName("goodsentrybox")[0];
var li1=document.getElementsByClassName("li1")[0];
var li2=document.getElementsByClassName("li2")[0];
var title1=document.getElementsByClassName("current")[0];
var title2=document.getElementsByClassName("orderManagement")[0];
var title3=document.getElementsByClassName("userManagement")[0];
var content=document.getElementsByClassName("content");
var dingdanxiugai=document.getElementsByClassName("dingdanxiugai")[0];
var dingdanchakan=document.getElementsByClassName("dingdanchakan")[0];
var OrderView=document.getElementsByClassName("OrderView")[0];
var OrderModify=document.getElementsByClassName("OrderModify")[0];
var userView=document.getElementsByClassName("userView")[0];
var registAd=document.getElementsByClassName("registAd")[0];
var look=document.getElementsByClassName("look")[0];
var quanxianfenpei=document.getElementsByClassName("quanxianfenpei")[0];

function changeCommodity(obj){
	content[0].style.display="none";
	content[1].style.display="block";
	content[2].style.display="none";
	changeStyle(obj);
	recover(title1)
	recover(title3)
}
function changeGoods(obj){
	content[0].style.display="block";
	content[1].style.display="none";
	content[2].style.display="none";
	changeStyle(obj)
	recover(title2)
	recover(title3)
}
function changeUser(obj){
	content[0].style.display="none";
	content[1].style.display="none";
	content[2].style.display="block";
	changeStyle(obj)
	recover(title2)
	recover(title1)
}
function changeEntry(obj){
	goodsList.style.display="none";
	goodsentrybox.style.display="block";
	recover(li1)
	changeStyle(obj)
}
function changeList(obj){
	goodsList.style.display="block";
	goodsentrybox.style.display="none";
	recover(li2);
	changeStyle(obj);
     
}

function changeStyle(obj){
	obj.style.background="#d8fdf3";
	obj.style.color="#5caf1c";
}
function recover(obj){
	obj.style.background="skyblue";
	obj.style.color="black";
}

function alert(obj){
	dingdanxiugai.style.display="block";
	dingdanchakan.style.display="none";
	changeStyle(obj);
	recover(OrderView)

}
function read(obj){
	dingdanchakan.style.display="block";
	dingdanxiugai.style.display="none";
	changeStyle(obj);
	recover(OrderModify)
	
}

function jurisdicte(obj){
	look.style.display="none";
	quanxianfenpei.style.display="block";
	changeStyle(obj);
	recover(userView);
	
}
function changeL(obj){
	look.style.display="block";
	quanxianfenpei.style.display="none";
	changeStyle(obj);
	recover(registAd)
}


/*展示图片*/
function changeImg(obj){
	var showImg=document.getElementsByClassName("showImg")[0];
	var windowURL = window.URL || window.webkitURL;
	var dataURL;
	if (obj && obj.files && obj.files[0]) {
		dataURL = windowURL.createObjectURL(obj.files[0]);
		showImg.src=dataURL;
		showImg.style.display="block";
	}
}


	var body =document.getElementsByTagName("body")[0];
	body .onclick=function(event){
	var ev= event || window.event;
	var target= ev.target || window.srcElement;
	var className=target.className;
	if(className == "delete"){
		target.parentNode.parentNode.style.display="none";

	} 
}
