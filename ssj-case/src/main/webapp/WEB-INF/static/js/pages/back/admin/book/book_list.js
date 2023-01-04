$(function() { // jQuery页面加载处理
	$("span[id^=bid-]").each(function(){ // 获取指定ID开头的元素
		$(this).on("click",function(){ // 绑定单击事件
			bid = this.id.split("-")[1] ; // 获取图书编号
			$.get("/pages/back/admin/book/get",{ bid : bid }, function(data){ // Ajax请求
			    $(bookCover).attr("src", "/upload/book/" + data.book.cover) // 图片设置
			    $(bookName).text(data.book.name) // 普通文本设置
			    $(bookAuthor).text(data.book.author) // 普通文本设置
			    $(bookNote).html(data.book.note) // HTML文本设置
			    $(bookPrice).text(data.book.price / 100) // 普通文本设置
			    $(bookItem).text(data.item.name) // 普通文本设置
                $("#bookInfo").modal("toggle") ; // 显示模态窗口
            },"json"); // 响应类型为JSON
		}) ;
	}) ;
})