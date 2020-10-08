<meta charset="utf-8">
<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<!--  @author Shiv Raghuwanshi For LA Response   -->
 <script type="text/javascript" src="${pageContext.request.contextPath}/static-resources/neutrino/neutrino-common/js/custom/genericFormDefinitionLAResponse.js"></script>
 <!--  @author Shiv Raghuwanshi For LA Response   -->
<script>
	$(document).ready(function() {
		setTimeout(function() {
			$("input[type='text'].w-150pxImp:visible:first").focus();
		}, 500);

		if ("<c:out value='${uiMetaDataVo.allowBorder}'/>" == 'true') {

			$('#dynamic-form').addClass("accordion-group");

		}

		$("#uiMetaDataVo_LRD_Details").validate({
			errorClass : "help-inline",
			errorElement : "span",
			highlight : function(element, errorClass, validClass) {
				$(element).parents('.control-group').addClass('error');
				$(element).parents('.control-group').removeClass('success');

			},
			unhighlight : function(element, errorClass, validClass) {
				$(element).parents('.control-group').removeClass('error');
				$(element).parents('.control-group').addClass('success');
			},
			invalidHandler : function(form, validator) {
				$.sticky(error_message, {
					autoclose : 5000,
					position : "top-right",
					type : "st-error"
				});
			}
		});

		$("#uiMetaDataVo_Rental_Income_Program_Details").validate({
			errorClass : "help-inline",
			errorElement : "span",
			highlight : function(element, errorClass, validClass) {
				$(element).parents('.control-group').addClass('error');
				$(element).parents('.control-group').removeClass('success');

			},
			unhighlight : function(element, errorClass, validClass) {
				$(element).parents('.control-group').removeClass('error');
				$(element).parents('.control-group').addClass('success');
			},
			invalidHandler : function(form, validator) {
				$.sticky(error_message, {
					autoclose : 5000,
					position : "top-right",
					type : "st-error"
				});
			}
		});

	});
	function saveDynamic(formKey) {

		var $dynForm = $("#" + formKey + ".dynamicForm");
		if ($dynForm.valid()) {

			$.ajax({
				type : "POST",
				url : getContextPath() + "/app/FormDefinition/saveFormData",
				data : $dynForm.serialize() + "&uri="
						+ $dynForm.find("#p_uri").val() + "&packageName="
						+ $dynForm.find("#p_packageName").val(),
				success : function(jqXHR) {
					if (jqXHR == 'success') {
						$.pnotify({
							title : "Success",
							text : label_dynamicForm_success,
							type : "success",
							pnotify_animate_speed : fadeOutduration,
							opacity : .8
						});
					} else {
						$.pnotify({
							title : "Failure",
							text : label_dynamicForm_failure,
							type : "error",
							pnotify_animate_speed : fadeOutduration,
							opacity : .8
						});
					}
				}
			});

		} else {
			$("#" + formKey).off("focusout");
		}
	}
</script>

<form:form commandName="uiMetaDataVo" id="uiMetaDataVo_${formKey}"
	method="POST" class="dynamicForm form">
	<div class='eight-select-td'>
		<div id="dynamic-form" class="row-fluid txt-l">

			<div class="accordion p-t10" id="accordion_advSearch">




				<div class="row-fluid p-t10 p-5">
					<h4 class='reset-m'>
						<c:out value='${uiMetaDataVo.formTitle}'></c:out>
					</h4>
				</div>

				<c:if test="${(uiMetaDataVo.formTitle != '')}">
					<div class="row-fluid border-line"></div>

				</c:if>

				<%-- <div class="row-fluid">${uiMetaDataVo.formHeader}</div> --%>

				<!-- outer collapse -->


				<div id="collapseOne_1"
					class="accordion-body-collapse m-b10 in p-l10 p-r10">
					<div>
						<neutrino:dynamicForm items="${uiMetaDataVo.uiComponents}"
							id="genericForm" formKey="${formKey}" viewMode="${viewMode}">
						</neutrino:dynamicForm>

					</div>
					<c:if
						test="${(empty viewMode or viewMode==false) and uiMetaDataVo.allowSaveOption eq true}">
						<div class='txt-r'>
							<a href="#" class="btn btn-primary" id="dynSave"
								onclick="saveDynamic('uiMetaDataVo_${formKey}'); "> <spring:message
									code="label.save" />
							</a>
						</div>
					</c:if>
					<!-- @author Shiv Raghuwanshi For LA Response  -->
  					<div class='txt-r' id='reInitiateButtonAppend'></div>
  					<!-- @author Shiv Raghuwanshi For LA Response  -->
				</div>

				<!-- /.p-5 -->
			</div>
		</div>
	</div>

	<form:input type="hidden" path="modelName" />
	<form:input type="hidden" path="modelUri" />
	<form:input type="hidden" path="formName" />
	<form:input type="hidden" path="formUri" />
	<input type="hidden" value="<c:out value='${uri}'/>" id="p_uri" />
	<input type="hidden" value="<c:out value='${packageName}'/>"
		id="p_packageName" />

</form:form>