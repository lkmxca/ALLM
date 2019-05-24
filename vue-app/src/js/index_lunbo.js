window.onload=function(){
	var banner_slider=$('#nav'),//外框
		pics=$('#nav>ul'),//内框
		items=$('#nav>ul>li'),//内框内容img
		pic_width=items.eq(0).width(),//内框内容的第一个孩子宽度
		dots=$('#banner_slider_dots a'),//按钮
		btn_prev=$('#arrow_prev'),//左箭头
		btn_next=$('#arrow_next'),//右箭头
		current=0,//按钮位置
		timmer=null,
		size=dots.size();//按钮大小
	// 定义一个鼠标滑过判断事件
	banner_slider.hover(function(){//鼠标经过外框时
		clearInterval(timmer);//取消定时器（鼠标进入）
	},function(){
		timmer=setInterval(slider,3000);//执行定时器(鼠标离开)
	});
	function slider(){
		current++;//按钮位置自增
		doSlider();
	}
	function doSlider(){
		// 圆点按钮轮播
		//第一个按钮不再是选中状态
		dots.removeClass('dots_active').eq(current%size).addClass('dots_active');
		// 图片轮播
		pics.stop().animate({
			left:-(current+1)*pic_width//左偏移值
		},1000,function(){
			if(current==size){
				current=0;
				pics.css('left',-(current+1)*pic_width+'px');
			}else if(current==-1){				
				current=size-1;
				pics.css('left',-(size)*pic_width+'px');
			}
		});
	}
	timmer=setInterval(slider,4000);
	// 点击上一张按钮切换图片
	btn_prev.click(function(){
		current--;
		doSlider();
	});
	// 点击下一张按钮切换图片	
	btn_next.click(function(){
		current++;
		doSlider();
	});
	// 点击圆点切换图片
	dots.click(function(){
		current=$(this).index();
		doSlider();
	});
}

$(".banner_slider_arrow").hide();
$("#nav").mouseover(function(){
  $(".banner_slider_arrow").show();
})
$("#nav").mouseout(function(){
  $(".banner_slider_arrow").hide();
})
