$(function() {
	$("span[id^=mid-]").each(function(){
		$(this).on("click",function(){
			eid = this.id.split("-")[1] ;
			$("#memberInfo").modal("toggle") ;
		}) ;
	}) ;
})

