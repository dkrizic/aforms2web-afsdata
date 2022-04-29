<%-- Block Init Start --%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.brainment.com/taglib/xhtml" prefix="xhtml"%>
<%@taglib uri="http://www.brainment.com/taglib/validation" prefix="ui"%>
<%@taglib uri="http://www.aforms2web.com/formserver" prefix="fs"%>
<%@taglib uri="http://www.aformsolution.com/errors" prefix="err"%>
<%@taglib prefix="nav" tagdir="/WEB-INF/tags/navigation" %>
<%-- Block Init End --%>
	<%-- Block Zusatzpakete_V1_0 Start [ --%>
	<xhtml:block>
		<fieldset>
			  <legend class="skiplegend">
			  	<fs:blocklabel renderHtmlHeader="false"  />
			  </legend>
			  <div class="legend">
			  	<fs:blocklabel renderHtmlHeader="true" noAnchor="true" />
			  	<fs:ifBlockHelplinkExists>
			  		<div class="info"><fs:blockhelplink styleclass="infoI">i</fs:blockhelplink></div>
			  	</fs:ifBlockHelplinkExists>
			  	<fs:ifShowMinMax>
					<span class="block_header_minmax_container">
						<fs:showMinMax styleclass="block_header_minmax_link"></fs:showMinMax>
					</span>
				</fs:ifShowMinMax>
			  </div>
		  <%-- Block Body Start [ --%>
		  <fs:blockContent>
		  	<fs:ifrepeatableblock masterdetail='false'>
		  		<jsp:useBean id="parentform" type="com.brainment.webfaces.validation.RepeatableForm" scope="request"/>
		  		<jsp:useBean id="subform" type="com.brainment.webfaces.validation.Form" scope="request"/>
		  		<c:if test="${parentform.userRepetitionHeaderText}">
		  			<%
		  				int row = parentform.getIndexOfSet(subform);
		  				pageContext.setAttribute("row", new Integer(row));
		  			%>
		  			<c:if test="${!parentform.userRepetitionHeaderStyle}">
		  				<div class="repetitionHeader">
		  					<c:if test="${!parentform.blockGroupMergeWithPrevious}">
		  						<h4><c:out value="${parentform.getRepetitionHeaderText(row + 1)}" /></h4>
		  					</c:if>
		  					<c:if test="${parentform.blockGroupMergeWithPrevious}">
		  						<h5><c:out value="${parentform.getRepetitionHeaderText(row + 1)}" /></h5>
		  					</c:if>
		  				</div>
		  			</c:if>
		  			<c:if test="${parentform.userRepetitionHeaderStyle}">
		  				<div class="repetitionHeader <c:out value="${parentform.repetitionHeaderStyle}" />">
		  					<c:if test="${!parentform.blockGroupMergeWithPrevious}">
		  						<h4><c:out value="${parentform.getRepetitionHeaderText(row + 1)}" /></h4>
		  					</c:if>
		  					<c:if test="${parentform.blockGroupMergeWithPrevious}">
		  						<h5><c:out value="${parentform.getRepetitionHeaderText(row + 1)}" /></h5>
		  					</c:if>
		  				</div>
		  			</c:if>
		  		</c:if>
		  	</fs:ifrepeatableblock>
		  	<ui:blockContentRowDiv fieldsInRow="Map_checkbox_mehrfach" blockRowNumber="1" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Map_checkbox_mehrfach" name="Map_checkbox_mehrfach" styleclass="cell" additionalLayoutClasses="cell100 label17 field83 fieldwidthXX controltype_switchlist" >
		  			<%-- Field Content Map_checkbox_mehrfach Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Map_checkbox_mehrfach" title="Zusatzpakete Basic auswählen">Zusatzpakete Basic</fs:label>
		  						<fs:ifFieldHelplinkExists for="Map_checkbox_mehrfach" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Map_checkbox_mehrfach">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<!-- stg30/switchlist.st -->
		  							<%-- Switchlist Control Start --%>

		  								<ui:select
		  										id="Map_checkbox_mehrfach"
		  										name="Map_checkbox_mehrfach"
		  										styleclass="skip noBlur"
		  										tabindex="-1" />

		  								<div class="switchlist" >
		  								    <div class="switchlist_source">
		  								    <fs:message messagekey="taglib.SwitchListTag.defaultHeaderSource" var="defaultHeaderSource" />
		  										<ui:switchlist					
		  												id="Map_checkbox_mehrfach"
		  												name="Map_checkbox_mehrfach"
		  												part="choose"				
		  												width="15"
		  												label="${defaultHeaderSource}"
		  							multiple="true"
		  							styleclass="standard"
		  							title="Zusatzpakete Basic auswählen"
		  							size="8" />
		  									</div>
		  									<div class="switchlist_buttons_div1">
		  								    	<div class="switchlist_buttons_div2">
		  								        	<div class="switchlist_buttons_div3">
		  												<fs:message messagekey="taglib.SwitchListTag.normalLayout.add" var="swlt_add" />
		  												<div class="switchlist_add">
		  													<xhtml:submit value="${swlt_add}"
		  															   title="${swlt_add}"
		  															   id="Map_checkbox_mehrfach_addToSwitchList"
		  															   name="Map_checkbox_mehrfach_addToSwitchList$NOVALIDATIONREDIRECT%novalidation"
		  															   event="addToSwitchlist"
		  															   onclick="setFormTargetAnchor(this, 'switchList');"
		  															   singleclick="true"
		  															   style="width: 10em" renderAsButton="true" />																   
		  												</div>
		  												<fs:message messagekey="taglib.SwitchListTag.normalLayout.remove" var="swlt_remove" />
		  												<div class="switchlist_remove">											   
		  													<xhtml:submit value="${swlt_remove}"
		  															   title="${swlt_remove}"
		  															   id="Map_checkbox_mehrfach_removeFromSwitchList"
		  															   name="Map_checkbox_mehrfach_removeFromSwitchList$NOVALIDATIONREDIRECT%novalidation"
		  															   event="removeFromSwitchlist"
		  															   onclick="setFormTargetAnchor(this, 'switchList');"
		  															   singleclick="true"
		  															   style="width: 10em" renderAsButton="true" />
		  												</div>
		  											</div>
		  										</div>
		  									</div>	
		  								  <div class="switchlist_target">    	
		  											<fs:message messagekey="taglib.SwitchListTag.defaultHeaderTarget" var="defaultHeaderTarget" />
		  										<ui:switchlist
		  											id="Map_checkbox_mehrfach"
		  											name="Map_checkbox_mehrfach"
		  											part="target"
		  											width="15"
		  											label="${defaultHeaderTarget}"
		  							multiple="true"
		  							styleclass="standard"
		  							title="Zusatzpakete Basic auswählen"
		  							size="8" />
		  									</div>
		  								</div>
		  								
		  							<%-- Switchlist Control End --%>
		  						<fs:ifFieldHelplinkExists for="Map_checkbox_mehrfach" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Map_checkbox_mehrfach">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Map_checkbox_mehrfach" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Map_checkbox_mehrfach" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Map_checkbox_mehrfach" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Map_checkbox_mehrfach">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Map_checkbox_mehrfach" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Map_checkbox_mehrfach" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Map_checkbox_mehrfach End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Map_switchlist" blockRowNumber="2" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Map_switchlist" name="Map_switchlist" styleclass="cell" additionalLayoutClasses="cell100 label17 field83 fieldwidthXX controltype_switchlist" >
		  			<%-- Field Content Map_switchlist Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Map_switchlist" title="Zusatzpakete Plus auswählen">Zusatzpakete Plus</fs:label>
		  						<fs:ifFieldHelplinkExists for="Map_switchlist" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Map_switchlist">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<!-- stg30/switchlist.st -->
		  							<%-- Switchlist Control Start --%>

		  								<ui:select
		  										id="Map_switchlist"
		  										name="Map_switchlist"
		  										styleclass="skip noBlur"
		  										tabindex="-1" />

		  								<div class="switchlist" >
		  								    <div class="switchlist_source">
		  								    <fs:message messagekey="taglib.SwitchListTag.defaultHeaderSource" var="defaultHeaderSource" />
		  										<ui:switchlist					
		  												id="Map_switchlist"
		  												name="Map_switchlist"
		  												part="choose"				
		  												width="15"
		  												label="${defaultHeaderSource}"
		  							multiple="true"
		  							styleclass="standard"
		  							title="Zusatzpakete Plus auswählen"
		  							size="0" />
		  									</div>
		  									<div class="switchlist_buttons_div1">
		  								    	<div class="switchlist_buttons_div2">
		  								        	<div class="switchlist_buttons_div3">
		  												<fs:message messagekey="taglib.SwitchListTag.normalLayout.add" var="swlt_add" />
		  												<div class="switchlist_add">
		  													<xhtml:submit value="${swlt_add}"
		  															   title="${swlt_add}"
		  															   id="Map_switchlist_addToSwitchList"
		  															   name="Map_switchlist_addToSwitchList$NOVALIDATIONREDIRECT%novalidation"
		  															   event="addToSwitchlist"
		  															   onclick="setFormTargetAnchor(this, 'switchList');"
		  															   singleclick="true"
		  															   style="width: 10em" renderAsButton="true" />																   
		  												</div>
		  												<fs:message messagekey="taglib.SwitchListTag.normalLayout.remove" var="swlt_remove" />
		  												<div class="switchlist_remove">											   
		  													<xhtml:submit value="${swlt_remove}"
		  															   title="${swlt_remove}"
		  															   id="Map_switchlist_removeFromSwitchList"
		  															   name="Map_switchlist_removeFromSwitchList$NOVALIDATIONREDIRECT%novalidation"
		  															   event="removeFromSwitchlist"
		  															   onclick="setFormTargetAnchor(this, 'switchList');"
		  															   singleclick="true"
		  															   style="width: 10em" renderAsButton="true" />
		  												</div>
		  											</div>
		  										</div>
		  									</div>	
		  								  <div class="switchlist_target">    	
		  											<fs:message messagekey="taglib.SwitchListTag.defaultHeaderTarget" var="defaultHeaderTarget" />
		  										<ui:switchlist
		  											id="Map_switchlist"
		  											name="Map_switchlist"
		  											part="target"
		  											width="15"
		  											label="${defaultHeaderTarget}"
		  							multiple="true"
		  							styleclass="standard"
		  							title="Zusatzpakete Plus auswählen"
		  							size="0" />
		  									</div>
		  								</div>
		  								
		  							<%-- Switchlist Control End --%>
		  						<fs:ifFieldHelplinkExists for="Map_switchlist" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Map_switchlist">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Map_switchlist" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Map_switchlist" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Map_switchlist" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Map_switchlist">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Map_switchlist" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Map_switchlist" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Map_switchlist End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv>
		  	<fs:ifrepeatableblock masterdetail='false'>
		  	<div class="block_content_end">
		  	   	<div class="block_content_container_end clearfix">
		  			<jsp:include page='/stg3/repeatable_block_actions.jsp' flush='true'/>
		  		</div>
		  	</div>	
		  	</fs:ifrepeatableblock>
		  </fs:blockContent>
		  <%-- ] Block Body End --%>
		  
		</fieldset>
	</xhtml:block>
	<%-- ] Block Zusatzpakete_V1_0 End --%>