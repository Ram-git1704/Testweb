<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib uri="/WEB-INF/tlds/TbsTag.tld" prefix="tbs" %>
<%@page import="java.util.List"%>
<html>
	<head>
		<!-- Some page specific JS includes -->
		<tbs:tempjspxincludes type="js">
			<tbs:config key="jsBaseUrl"/>businessentities/setup/locationsetup/locationSetup.js
		</tbs:tempjspxincludes>
        <!-- Some page specific JSP includes -->
        <script type="text/javascript">
			$(function() {
				$("#locationCode").focus();
		          if($("#mode").val()=='EDIT'){
		              var searchType;
		     		  searchType=document.getElementById('locationType').value;
		              if(searchType=='N'){
		             	document.getElementById('addMicrCode').value="";
		            	document.getElementById('addMicrCode').disabled=true;       
		        		}
		        	  else if ((searchType=='M') || (searchType=='B')){    
		           		document.getElementById('addMicrCode').disabled=false;
		        		}
		              $("#locationName").focus();
		        	}
		          $("#locationCode").blur(function(){
					  $(this).val( $(this).val().toUpperCase() );
				});
        	});  
        </script> 
	</head>
	<body onload="setCountry(),verifyLocationType()">
        <s:set name="sessionMap" value="%{session}"/>
		<s:hidden name="locationSetupPageType" id="locationSetupPageType" value="add"/>
       	<div class="loadingMask" id="loadingMask" style="visibility: hidden"><jsp:text></jsp:text></div>
		<div class="mainWrapper">
			<div class="mainColumn">
				<div class="content">
    				<s:include value="../../../../messageTxn.jspf"></s:include>
	            	<s:form method="POST" action="locationSetupAddSave" name="locationSetupAddEditForm" id="locationSetupAddEditForm" autocomplete="off">	
		            	<s:include value="../../../../setupLinkAdd.jspf"/>	
		                <s:hidden name="mode" id="mode" value="%{mode}" autocomplete="off"/>
		                <s:hidden name="versionId" id="versionId" value="%{modelDTO.getVersionId()}"/>
		                <s:hidden name="recordType" id="recordType" value="%{recordType}" autocomplete="off"/>
		                <s:hidden name="saveActionType" id="saveActionType" value="%{saveActionType}" autocomplete="off"/>
		                <s:hidden id="searchType12" name="searchType" value="%{searchType}" autocomplete="off"/>
			            <s:hidden value="%{#session.countryCode1}" name="countryCode2" id="countryCode2"/>
			            <s:hidden value="%{#session.countryName}" name="countryName2" id="countryName2"/>
			            <s:hidden value="%{#session.countryId}" name="countryId2" id="countryId2"/>
		                <br class="clear"/> 
		                <!-- Code to set the previous links -->
		                <div class="breadcrumb" autocomplete="off">
							<s:url action="locationSetupList" var="locationSetupList"/>
							<s:a href="%{locationSetupList}">
							<s:text name="locationsetup.businessentities"/>
							</s:a>
							<s:if test="%{mode.equals(getAddMode())}">
							    <s:text name="common.addLabel"/>
							</s:if>
							<s:else>
							    <s:text name="common.editLabel"/>
							</s:else>
						</div>  
				        <!-- Code to set the editable flag -->
			           	<s:if test="%{(mode.equals(getAddMode())) || (modelDTO.getAudit().mcFlag==getCreatedActiveStatus()) || (modelDTO.getAudit().mcFlag==getReworkActiveStatus())}">
      						<s:set value="%{'yes'}" name="allFieldsEditableFlag"/>
     				   	</s:if>
         				<s:else>
            				<s:set value="%{'no'}" name="allFieldsEditableFlag"/>
         				</s:else>
         				<div id="mainScreen">
							<div class="contentForm">
						    	<br class="clear"/>
						        <fieldset>
									<legend><h3><s:text name="locationsetup.businessentities"/></h3></legend>
									<br class="clear"/>
									 <div id="fieldwrapper_locationCode" autocomplete="off">
									    <div class="contentFormInr" autocomplete="off">
									        <label class="caption">
												<s:text name="location.locationCode1"/><s:text name="label_separater"/>      
												<span style="display:inline;" class="asterisk" id="mandatory_locationCode">*</span>	                                                           
									        </label>
									     <s:if test="%{#allFieldsEditableFlag == 'yes'}">
									        <s:textfield name="locationCode" id="locationCode" cssClass="textfield small" value="%{modelDTO.locationCode}" onkeypress="" maxlength="50" tabindex="1"  autocomplete="off"/>
									       	<tbs:validation required="yes" field="locationCode" formid="locationSetupAddEditForm" rules="ALNSCT,CODMLN,SIZE_50"><jsp:text/> </tbs:validation>
									     </s:if>
									     <s:else>			     	
							               <label><s:property value="%{modelDTO.locationCode}"/></label>
							               <s:hidden name="locationCode" id="locationCode" value="%{modelDTO.locationCode}"/>
									     </s:else>
									        <label class="error" id="locationCode_error" style="display:none"><jsp:text/></label>
									 		<s:hidden name="oldlocationCode" id="oldlocationCode" value="%{modelDTO.locationCode}"/>  
									    </div>
									</div>
									
									<div id="fieldwrapper_locationName">
					                 <div class="contentFormInr">
					                        <label class="caption" id="locationName_lbl">
					                        <s:text name="location.locationName"/>
					                        <s:text name="label_separater"/>
					                        <span style="display:inline;" class="asterisk" id="mandatory_locationName">*</span>
					                        </label>
					                        <tbs:validation required="yes" field="locationName" formid="locationSetupAddEditForm" rules="DESCLN,ALNSDT"><jsp:text/> </tbs:validation>
					                        <s:textfield name="locationName" id="locationName" cssClass="textfield small" maxlength="150" value="%{modelDTO.locationName}" onKeyPress="converttouppercase();" tabIndex="2" autocomplete="off"/>
					                        <label class="error" id="locationName_error" style="display:none"><jsp:text/></label>                                                                                   
					                  </div>
					              </div>
					              <br class="clear"/>
									
									<div id="fieldwrapper_CountryCode">
							            <div class="contentFormInr">
							            <label class="caption" id = "countryCode_lbl">
							              <s:text name="location.countryCode"/><s:text name="label_separater"/>
							              <span style="display:inline;" class="asterisk" id="mandatory_countryCode">*</span>
							            </label>
							           <s:hidden name="countryId" id="countryId" value="%{modelDTO.countryId}" autocomplete="off"/>
							            <s:set var="countryCodeLabel" value="%{getText('location.countryCode')}" />
							            <tbs:validation required="yes" field="countryCode" formid="locationSetupAddEditForm" rules="ALBODT,CODMLN"><jsp:text/> </tbs:validation>
							            <tbs:axiaLov name="countryCode" idVal="countryCode" cssClass="textfield small" value="${modelDTO.countryCode}"
										 cssSearchClass="search"	lovTitle="${countryCodeLabel}" onBlur="clearCountryCodeLOV()" tabIndex="3" type="default">
											{
												"lovMappings" : [
		                                        {
		                                        "SearchConfigKey" : "countryCodeSearchCust",
		                                        "ModuleSearchConfigFile"  :"BusinessEntitiesQueryConfig",
		                                        "searchLevel"  :"SYS",
		                                        "ipMappings" : [
		                                 
		                                       {"key":"countryCode","domId":"countryCode","fieldType":"String","joinType" : "like" },
		                                       {"key":"countryName","domId":"countryName","fieldType":"String","joinType" : "like" }
		                                       ],
		                                 
		                                       "opMappings" :[
		                                       {"key": "countryCode", "domId": "countryCode", "fieldType":"TextField", "sequence":"1"},
		                                       {"key": "countryName", "domId": "countryName", "fieldType":"Label", "sequence":"2"}
		                                        
		                                       ]
		                                       }],
		
		                                      	"mandatoryParents": ""
		                                        }
		                                   </tbs:axiaLov>
							            <label class="error" id="countryCode_error" style="display:none"><jsp:text/></label>
							            </div>
						            </div>  	
									
									
									<div id="fieldwrapper_countryName">
										<div class="contentFormInr">
											<label class="caption" id="countryName_lbl"> <s:text
													name="location.countryName" /> <s:text
													name="label_separater" />
											</label> <span class="txtBox" id="countryName"><s:property
													value="%{modelDTO.countryName}" /> </span>

											<s:hidden name="countryName" id="countryName1"
												value="%{modelDTO.countryName}" />
										</div>
									</div> 	
									
									<br class="clear"/> 
									
									<div id="fieldwrapper_StateCode">
							          <div class="contentFormInr">
							          <label class="caption" id = "stateCode_lbl">
							            <s:text name="location.stateCode"/><s:text name="label_separater"/>
							          </label>
							          <s:set var="stateCodeLabel" value="%{getText('location.stateCode')}" />
							          <s:hidden id="lovActiveFlagY"  name="lovActiveFlagY" value="Y" />
							          <s:hidden id="lovMcFlagA"  name="lovMcFlagA" value="A" />
							          <tbs:validation required="no" field="stateCode" formid="locationSetupAddEditForm" rules="ALBODT,CODMLN"><jsp:text/> </tbs:validation>
							          <tbs:axiaLov name="stateCode" idVal="stateCode" cssClass="textfield small" value="${modelDTO.stateCode}"
                                       cssSearchClass="search" inputsToLov="stateCode,lvID,searchTypeSel,masterAliasName,statusList" lovTitle="${stateCodeLabel}" 
                                           tabIndex="4" onBlur="clearStateCodeSearchLOV();" onFocus="clearStateCodeSearchLOV();" type="DEFAULT">
                             					{
                                                "lovMappings" : [
                                                {
                                                "SearchConfigKey": "stateCodeAddSearch",
												"ModuleSearchConfigFile" : "BusinessEntitiesQueryConfig",
												"mcFlagCheckFlag" : "false",
                                                "ipMappings" : [
                                               	 {"key": "stateCode", "domId": "stateCode", "fieldType":"String","joinType" : "like" },
												 {"key": "stateName", "domId": "stateName", "fieldType":"String","joinType" : "like" },
												 {"key": "countryCode", "domId": "countryCode", "fieldType":"String","dependentFieldFlag":"Y","joinType" : "equal" },
												 {"key": "lovActiveFlagY", "domId": "lovActiveFlagY", "fieldType":"String","dependentFieldFlag":"Y","joinType" : "equal" },
												 {"key": "lovMcFlagA", "domId": "lovMcFlagA", "fieldType":"String","dependentFieldFlag":"Y","joinType" : "equal" }
                                                
                                                ],
                                                "opMappings" : [
                                                 {"key": "stateCode", "domId": "stateCode", "fieldType":"TextField", "sequence":"1"},
												 {"key": "stateName", "domId": "stateName", "fieldType":"Label", "sequence":"2"}
												
                                                ]
                                                }
                                                ]                                                
                                         
                                                }
                                            </tbs:axiaLov>
							          <label class="error" id="stateCode_error" style="display:none"><jsp:text/></label>
							          </div>
							        </div> 
									
									<div id="fieldwrapper_stateName">
                                          <div class="contentFormInr">
                                            <label class="caption"><s:text name="location.stateName"/><s:text name="label_separater"/></label>                                                                                      
                                            <span class="txtBox" id="stateName">
                                                  <s:property value="%{modelDTO.stateName}"/>
                                             </span>
                                                <s:hidden name="stateName" id="stateName1" value="%{modelDTO.stateName}" />
                                        </div>
                                  	</div>
                                  	
                                  	
                                  	<br class="clear"/>  
						            <div id="fieldwrapper_locationType">
						                <div class="contentFormInr">
						                    <label class="caption" id = "locationType_lbl">
						                      <s:text name="location.locationType" /><s:text name="label_separater"/>
						                    </label>
						                   <tbs:validation required="no" field="locationType" formid="locationSetupAddEditForm" rules=""><jsp:text/> </tbs:validation>
						                   <s:select name="locationType" id="locationType" cssClass="combo1" listKey="key" listValue="value" list="locationTypeList" value="%{modelDTO.locationType}" onclick="verifyLocationType();" tabIndex="5" />
						                   <label class="error" id="locationType_error" style="display:none"><jsp:text/></label>
						                </div>
						            </div>
						            <div id="fieldwrapper_addMicrCode">
						              <div class="contentFormInr">
						                <label class="caption" id = "addMicrCode_lbl">
						                  <s:text name="location.addMicrCode"/><s:text name="label_separater"/><span style="display:none;" class="asterisk" id="mandatory_addMicrCode">*</span>
						                </label>
						                <s:textfield name="addMicrCode" id="addMicrCode" cssClass="textfield small" maxlength="20"  value="%{modelDTO.addMicrCode}" tabIndex="6"/>
						                <tbs:validation required="no" field="addMicrCode" formid="locationSetupAddEditForm" rules="MANMCRCODE_locationType_addMicrCode,CODSLN,ALNODT"><jsp:text/> </tbs:validation>
						                <label class="error" id="addMicrCode_error" style="display:none"><jsp:text/></label>                                                                                   
						                <s:hidden name="oldaddMicrCode" id="oldaddMicrCode" value="%{modelDTO.addMicrCode}"/>  
						              </div>
						            </div>
									
								</fieldset>
							 	<br class="clear"/>
							</div> 				
							<div class="contentForm">
				        	  	<!-- Set the Audit DTO -->
								<s:set name="auditDtoRef" value="%{modelDTO.getAuditInfo()}"/>
								<s:hidden name = "statutory.auditInfo.mcFlag" value="%{modelDTO.getAuditInfo().mcFlag}"/>
								<s:set name="activeStatusFlgVal" value="%{modelDTO.getAuditInfo().mcFlag}"/>
								<!-- Remarks section -->
								<s:if test="%{mode.equals(getAddMode())}">
								    <tbs:tbsremarksSection auditDtoRefObj="${auditDtoRef}" tabIndex="7" sessionmap="${sessionMap}" screenName="add"/>
								</s:if>
								<s:if test="%{mode.equals(getEditMode())}">
								    <tbs:tbsremarksSection auditDtoRefObj="${auditDtoRef}" tabIndex="7" sessionmap="${sessionMap}" status="${activeStatusFlgVal}" screenName="edit"/>
								</s:if>
								<br class="clear"/>
								<!-- Audit Block -->
								<s:if test="%{mode.equals(getEditMode())}">
								    <tbs:auditInfoblock auditDtoReference="${auditDtoRef}"/>
								</s:if>	                    
							</div>
						</div>
					</s:form>
				</div>
			</div>
		</div>
	</body>
</html>