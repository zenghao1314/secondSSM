$(function(){
    //导航栏变色
    $(".navItem").hover(function(){
        $(this).css("background","#f0f0f0");
        $(this).children().css("color","#333")
    },function(){
        $(this).css("background","#333");
        $(this).children().css("color","#f0f0f0")
    })

	//日期选择
	 $("#birthday").calendar({
        controlId: "divDate",                                 // 弹出的日期控件ID，默认: $(this).attr("id") + "Calendar"
        speed: 200,                                           // 三种预定速度之一的字符串("slow", "normal", or "fast")或表示动画时长的毫秒数值(如：1000),默认：200
        complement: true,                                     // 是否显示日期或年空白处的前后月的补充,默认：true
        readonly: true,                                       // 目标对象是否设为只读，默认：true
        upperLimit: new Date(),                               // 日期上限，默认：NaN(不限制)
        callback: function () {                               // 点击选择日期后的回调函数
        }
    });
        
   
	
	//选择图片	
	$(".upfile").change(function() {
        var $file = $(this);
        var fileObj = this;
        var windowURL = window.URL || window.webkitURL;
        var dataURL;
        var $img = $("#photo");
        if(fileObj && fileObj.files && fileObj.files[0]){
        	//
            dataURL = window.URL.createObjectURL(fileObj.files[0]);
            $img.attr('src',dataURL);
        }else{
            dataURL = $file.val();
            $img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src="+dataURL+",sizingMethod=scale)";
        }
    });
    
    $(".navItem").hover(function(){
		$(this).css({"color":"#333","background":"#f0f0f0"});
	},function(){
		$(this).css({"color":"#fff","background":"#333"});
	})
    
    
    
    $("#formData").validate({
    	rules : {
    		name:{
	    		required : true,
	    		maxlength : 15,
	    		minlength : 2,
    		},
    		password:{
    			required : true,
    			maxlength : 16,
    			minlength : 6,
    		},
    		repassword:{
    			equalTo: "#password",
    		},
			birthday :{
				required:true,
			},
			phone:{
				required :true,
				phonenumber:true,
			},
			address:{
				required :true,
			},
			email:{
				required:true,
				email:true,
			},
    	},
    	message : {
    		name:{
	    		required : "用户名不能为空！",
	    		maxlength : "用户名长度为2-16位",
	    		minlength : "用户名长度为2-16位",
    		},
    		password:{
    			required : "密码不能为空",
    			maxlength : "密码长度为6-16位",
    			minlength : "密码长度为6-16位",
    		},
    		repassword:{
    			equalTo: "两次密码不相同！",
    		},
			birthday :{
				required:"出生日期不能为空！",
			},
			phone:{
				required :"手机密码不能为空！",
				phonenumber: "手机号码格式错误！"
			},
			address:{
				required :"地址不能为空！",
			},
			email:{
				required:"邮箱不能为空！",
				email:"邮箱格式错误！"
			},
    	},
    	errorClass : "hint",
    	errorElement:"div",
    	success: function(error) {
			  $(error).css("dispaly","none");
			  $(error).parent().find("input").css("border","1px solid #979797");
	        },
		errorPlacement: function(error, element) {
			  element.removeClass("hint");
			  element.parent().append(error[0]);
			  element.css("border","1px solid red");
			
		},
		submitHandler:function(){
    	formdata();
    }   
    })
    
    
    
	function formdata(){
		var formdata=new FormData($('#formData')[0]);
		formdata.append('files', $("#IMGportrait")[1].files[0]);
		var data=formdata;
	        jQuery.ajax({
	            type: "POST",
	            url: "",
	            data: data,
	            processData: false,
	            contentType: false,
	            success: function (message) {
	
	               if(message){
	            	   alert("提交成功！")
	            	}  
	            },
	            error: function(message) {
	
	            	alert("提交失败")
	
	            }
	
	        });
	 }	
    
    
    $.validator.addMethod("email",function(value,element){
		  var date = /^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;
		  return this.optional(element) || (date.test(value));
		},"请输入正确的邮箱");
		
		jQuery.validator.addMethod("phonenumber", function(value, element) {  
		    var tel = /^1[3|4|5|7|8|9]\d{9}$/g;
		    return this.optional(element) || (tel.test(value));
		}, "请您正确填写手机格式!");
	    
	});


//验证汉语化
	(function( factory ) {
		if ( typeof define === "function" && define.amd ) {
			define( ["jquery", "../jquery.validate"], factory );
		} else {
			factory( jQuery );
		}
	}(function( $ ) {
	
	$.extend($.validator.messages, {
		required: "不可为空",
		remote: "请修正此字段",
		email: "请输入有效的电子邮件地址",
		url: "请输入有效的网址",
		date: "请输入有效的日期",
		dateISO: "请输入有效的日期 (YYYY-MM-DD)",
		number: "请输入有效的数字",
		digits: "只能输入数字",
		creditcard: "请输入有效的信用卡号码",
		equalTo: "两次密码不相同",
		extension: "请输入有效的后缀",
		phonenumber:"请输入正确的手机格式",
		roleNum:"请输入正确的执业号码格式",
		maxlength: $.validator.format("最多可以输入 {0} 个字符"),
		minlength: $.validator.format("最少要输入 {0} 个字符"),
		rangelength: $.validator.format("请输入长度在 {0} 到 {1} 之间的字符串"),
		range: $.validator.format("请输入范围在 {0} 到 {1} 之间的数值"),
		max: $.validator.format("请输入不大于 {0} 的数值"),
		min: $.validator.format("请输入不小于 {0} 的数值")
	});
	
	}));



