/**
 * 
 * @author leni
 * @date 18-10-01
 * @message 图片异步上传
 */
function uploadPic1(id, formid) {
	//上传图片 异步
	alert(123)
	var options = {
		url : "/ajaxUpload1",
		type : "post",
		dataType : "json",
		success : function(data) {
			if (data.max != null) {
				alert(data.max);
			} else {
				$("#" + id).attr('src', data.url);
				alert(data.url);
				$("#" + id + "Input").attr('value', data.url);
			}
		}
	}
	$("#" + formid).ajaxSubmit(options);
}
