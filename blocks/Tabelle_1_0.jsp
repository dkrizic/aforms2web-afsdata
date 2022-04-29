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
	<%-- Block Tabelle_V1_0 Start [ --%>
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
		  	<ui:blockContentRowDiv fieldsInRow="Boolean" blockRowNumber="1" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Boolean" name="Boolean" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_checkbox" >
		  			<%-- Field Content Boolean Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Boolean" title="Boolean_001">Boolean_001</fs:label>
		  						<fs:ifFieldHelplinkExists for="Boolean" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Boolean">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Checkbox Control Start --%>
		  								<span class="check_wrap"><fs:checkbox
		  									id="Boolean" 
		  									name="Boolean" 
		  							styleclass="standard" 
		  							title="Boolean_001" 
		  							/><span class="check_rplc"></span></span>
		  							<%-- Checkbox Control End --%>
		  						<fs:ifFieldHelplinkExists for="Boolean" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Boolean">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Boolean" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Boolean" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Boolean" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Boolean">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Boolean" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Boolean" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Boolean End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Ausweisart" blockRowNumber="2" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Ausweisart" name="Ausweisart" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_radioGroup" >
		  			<%-- Field Content Ausweisart Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Ausweisart" title="Map_radio">Map_radio</fs:label>
		  						<fs:ifFieldHelplinkExists for="Ausweisart" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Ausweisart">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- RadioGroup Control Start --%>
		  							<ui:inputgroupFieldset id="Ausweisart" role="radiogroup"  styleclass="colCount1 radioGroup_normal">
		  								<ui:legend name="Ausweisart" styleclass="skiplegend" />
		  								<ui:inputgroup name="Ausweisart">
		  									<c:if test="${groupstatus.index mod 1 == 0}">
		  										<div class="group_content_row">
		  									</c:if>
		  									<div class="group_cell" >
		  										<ui:label
		  											styleclass="fieldradiolabel"
		  											for="Ausweisart_${groupelement.position}"><c:out value="${groupelement.value}" escapeXml="false"/></ui:label>
		  										<span class="radio_wrap"><ui:radio
		  											id="Ausweisart_${groupelement.position}"
		  											title="${groupelement.value}"
		  							styleclass="standard"
		  											name="Ausweisart"/><span class="radio_rplc"></span></span>
		  									</div>
		  									<c:if test="${(groupstatus.count mod 1 == 0) or (groupstatus.last)}">
		  										</div>
		  									</c:if>
		  								</ui:inputgroup>
		  							</ui:inputgroupFieldset>
		  							<%-- RadioGroup Control End --%>
		  						<fs:ifFieldHelplinkExists for="Ausweisart" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Ausweisart">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Ausweisart" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Ausweisart" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Ausweisart" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Ausweisart">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Ausweisart" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Ausweisart" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Ausweisart End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Liste_Land" blockRowNumber="3" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Liste_Land" name="Liste_Land" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_select" >
		  			<%-- Field Content Liste_Land Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Liste_Land" title="Map_Liste">Map_Liste</fs:label>
		  						<fs:ifFieldHelplinkExists for="Liste_Land" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste_Land">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Select Control Start --%>

		  								<ui:select 
		  									id="Liste_Land" 
		  									name="Liste_Land" 
		  							styleclass="standard" 
		  							title="Map_Liste" />
		  							<%-- Select Control End --%>
		  						<fs:ifFieldHelplinkExists for="Liste_Land" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Liste_Land">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Liste_Land" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Liste_Land" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Liste_Land" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste_Land">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Liste_Land" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Liste_Land" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Liste_Land End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Map_checkbox_mehrfach" blockRowNumber="4" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Map_checkbox_mehrfach" name="Map_checkbox_mehrfach" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_checkboxGroup" >
		  			<%-- Field Content Map_checkbox_mehrfach Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Map_checkbox_mehrfach" title="Map_checkbox">Map_checkbox</fs:label>
		  						<fs:ifFieldHelplinkExists for="Map_checkbox_mehrfach" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Map_checkbox_mehrfach">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- CheckboxGroup Control Start --%>
		  							<ui:inputgroupFieldset id="Map_checkbox_mehrfach"  styleclass="colCount1">
		  								<ui:legend name="Map_checkbox_mehrfach" styleclass="skiplegend"/>
		  								<ui:inputgroup name="Map_checkbox_mehrfach">
		  									<c:if test="${groupstatus.index mod 1 == 0}">
		  										<div class="group_content_row">
		  									</c:if>
		  									<div class="group_cell">
		  										<ui:label
		  											styleclass="fieldcheckboxlabel"
		  											for="Map_checkbox_mehrfach_${groupelement.position}" title="${groupelement.value}"><c:out value="${groupelement.value}" escapeXml="false"/></ui:label>
		  										<span class="check_wrap"><ui:checkbox
		  											id="Map_checkbox_mehrfach_${groupelement.position}"
		  											title="${groupelement.value}"
		  							styleclass="standard"
		  											name="Map_checkbox_mehrfach"/><span class="check_rplc"></span></span>
		  									</div>
		  									<c:if test="${(groupstatus.count mod 1 == 0) or (groupstatus.last)}">
		  										</div>
		  									</c:if>
		  								</ui:inputgroup>
		  							</ui:inputgroupFieldset>
		  							<%-- CheckboxGroup Control End --%>
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
	<%-- ] Block Tabelle_V1_0 End --%>