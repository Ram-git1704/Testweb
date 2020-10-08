/*@author Shiv Raghuwanshi For LA Response*/   
$(document).ready(function() {
   var appId = $("#appId").val();
	var appCurretnStageForLA = $("#applicationCurrentState").val();

	if ($('#uiMetaDataVo_AnalyticsResponse').length > 0
			&& appCurretnStageForLA == 'CREDIT_APPROVAL') {
		$('#reInitiateButtonAppend').append($('<a href="#" class="btn btn-primary" id="dynReInitiate" onclick="callLAService(appId)">ReInitiate</a>'));
	}
});

	function callLAService(appId) {
		$.ajax({
			type : "GET",
			url : getContextPath() + "/app/laDynamicForm/reInitiateLA/"
					+ $("#appId").val(),
			data : ({
				appId : $("#appId").val(),
			}),
			async : false,
			success : function(jqXHR) {
				refreshLAForm('AnalyticsResponse');
				$.pnotify({
					title : "Success",
					text : label_dynamicForm_success,
					type : "success",
					pnotify_animate_speed : fadeOutduration,
					opacity : .8
				});
			},
			error : function(jqXHR, textStatus, errorThrown) {
				refreshLAForm('AnalyticsResponse');
				$.pnotify({
					title : "Failure",
					text : label_dynamicForm_failure,
					type : "error",
					pnotify_animate_speed : fadeOutduration,
					opacity : .8
				});
			}
		});

	}

	function refreshLAForm(dynamicFormName) {

		var formPositionId = $('[id*="applicationChildTabs"]')
				.filter(".active").children().attr("href");
		window.location.hash = formPositionId;
		paintMiscForm(dynamicFormName, formPositionId
				.substring(formPositionId.length - 1));

	}