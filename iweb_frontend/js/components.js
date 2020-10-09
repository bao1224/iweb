/*1.响应式导航条的显示和隐藏*/
//点击汉堡包按钮时导航菜单从左侧进入
document.querySelector('[data-toggle="nav"]').onclick = function(){
	//将导航条从左侧移进来——给navbar添加active类
	document.querySelector('[data-target="nav"]').classList.add('active')
}

//点击关闭按钮时导航隐藏到左侧
document.querySelector('[data-close="nav"]').onclick = function(){
	//将导航条从左侧移出去——给navbar去掉active类
	document.querySelector('[data-target="nav"]').classList.remove('active')
}




