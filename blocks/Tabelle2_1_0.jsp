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
	<%-- Block Tabelle2_V1_0 Start [ --%>
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
		  	<ui:blockContentRowDiv fieldsInRow="Liste1" blockRowNumber="1" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Liste1" name="Liste1" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_select" >
		  			<%-- Field Content Liste1 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Liste1" title="Liste1">Liste1</fs:label>
		  						<fs:ifFieldHelplinkExists for="Liste1" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Select Control Start --%>

		  								<ui:select 
		  									id="Liste1" 
		  									name="Liste1" 
		  							styleclass="standard" 
		  							title="Liste1" />
		  							<%-- Select Control End --%>
		  						<fs:ifFieldHelplinkExists for="Liste1" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Liste1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Liste1" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Liste1" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Liste1" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Liste1" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Liste1" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Liste1 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Liste2" blockRowNumber="2" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Liste2" name="Liste2" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_select" >
		  			<%-- Field Content Liste2 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Liste2" title="Liste2">Liste2</fs:label>
		  						<fs:ifFieldHelplinkExists for="Liste2" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste2">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Select Control Start --%>

		  								<ui:select 
		  									id="Liste2" 
		  									name="Liste2" 
		  							styleclass="standard" 
		  							title="Liste2" />
		  							<%-- Select Control End --%>
		  						<fs:ifFieldHelplinkExists for="Liste2" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Liste2">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Liste2" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Liste2" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Liste2" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste2">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Liste2" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Liste2" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Liste2 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Liste3" blockRowNumber="3" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Liste3" name="Liste3" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_select" >
		  			<%-- Field Content Liste3 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Liste3" title="Liste3">Liste3</fs:label>
		  						<fs:ifFieldHelplinkExists for="Liste3" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste3">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Select Control Start --%>

		  								<ui:select 
		  									id="Liste3" 
		  									name="Liste3" 
		  							styleclass="standard" 
		  							title="Liste3" />
		  							<%-- Select Control End --%>
		  						<fs:ifFieldHelplinkExists for="Liste3" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Liste3">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Liste3" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Liste3" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Liste3" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste3">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Liste3" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Liste3" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Liste3 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Liste4" blockRowNumber="4" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Liste4" name="Liste4" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_radioGroup" >
		  			<%-- Field Content Liste4 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Liste4" title="Liste4">Liste4</fs:label>
		  						<fs:ifFieldHelplinkExists for="Liste4" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste4">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- RadioGroup Control Start --%>
		  							<ui:inputgroupFieldset id="Liste4" role="radiogroup"  styleclass="colCount1 radioGroup_normal">
		  								<ui:legend name="Liste4" styleclass="skiplegend" />
		  								<ui:inputgroup name="Liste4">
		  									<c:if test="${groupstatus.index mod 1 == 0}">
		  										<div class="group_content_row">
		  									</c:if>
		  									<div class="group_cell" >
		  										<ui:label
		  											styleclass="fieldradiolabel"
		  											for="Liste4_${groupelement.position}"><c:out value="${groupelement.value}" escapeXml="false"/></ui:label>
		  										<span class="radio_wrap"><ui:radio
		  											id="Liste4_${groupelement.position}"
		  											title="${groupelement.value}"
		  							styleclass="standard"
		  											name="Liste4"/><span class="radio_rplc"></span></span>
		  									</div>
		  									<c:if test="${(groupstatus.count mod 1 == 0) or (groupstatus.last)}">
		  										</div>
		  									</c:if>
		  								</ui:inputgroup>
		  							</ui:inputgroupFieldset>
		  							<%-- RadioGroup Control End --%>
		  						<fs:ifFieldHelplinkExists for="Liste4" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Liste4">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Liste4" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Liste4" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Liste4" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste4">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Liste4" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Liste4" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Liste4 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Liste5" blockRowNumber="5" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Liste5" name="Liste5" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_checkboxGroup" >
		  			<%-- Field Content Liste5 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Liste5" title="Liste5">Liste5</fs:label>
		  						<fs:ifFieldHelplinkExists for="Liste5" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste5">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- CheckboxGroup Control Start --%>
		  							<ui:inputgroupFieldset id="Liste5"  styleclass="colCount1">
		  								<ui:legend name="Liste5" styleclass="skiplegend"/>
		  								<ui:inputgroup name="Liste5">
		  									<c:if test="${groupstatus.index mod 1 == 0}">
		  										<div class="group_content_row">
		  									</c:if>
		  									<div class="group_cell">
		  										<ui:label
		  											styleclass="fieldcheckboxlabel"
		  											for="Liste5_${groupelement.position}" title="${groupelement.value}"><c:out value="${groupelement.value}" escapeXml="false"/></ui:label>
		  										<span class="check_wrap"><ui:checkbox
		  											id="Liste5_${groupelement.position}"
		  											title="${groupelement.value}"
		  							styleclass="standard"
		  											name="Liste5"/><span class="check_rplc"></span></span>
		  									</div>
		  									<c:if test="${(groupstatus.count mod 1 == 0) or (groupstatus.last)}">
		  										</div>
		  									</c:if>
		  								</ui:inputgroup>
		  							</ui:inputgroupFieldset>
		  							<%-- CheckboxGroup Control End --%>
		  						<fs:ifFieldHelplinkExists for="Liste5" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Liste5">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Liste5" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Liste5" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Liste5" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste5">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Liste5" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Liste5" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Liste5 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Liste6" blockRowNumber="6" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Liste6" name="Liste6" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_select" >
		  			<%-- Field Content Liste6 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Liste6" title="Liste6">Liste6</fs:label>
		  						<fs:ifFieldHelplinkExists for="Liste6" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste6">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Select Control Start --%>

		  								<ui:select 
		  									id="Liste6" 
		  									name="Liste6" 
		  							styleclass="standard" 
		  							title="Liste6" />
		  							<%-- Select Control End --%>
		  						<fs:ifFieldHelplinkExists for="Liste6" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Liste6">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Liste6" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Liste6" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Liste6" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste6">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Liste6" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Liste6" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Liste6 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Liste7" blockRowNumber="7" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Liste7" name="Liste7" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_select" >
		  			<%-- Field Content Liste7 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Liste7" title="Liste7">Liste7</fs:label>
		  						<fs:ifFieldHelplinkExists for="Liste7" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste7">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Select Control Start --%>

		  								<ui:select 
		  									id="Liste7" 
		  									name="Liste7" 
		  							styleclass="standard" 
		  							title="Liste7" />
		  							<%-- Select Control End --%>
		  						<fs:ifFieldHelplinkExists for="Liste7" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Liste7">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Liste7" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Liste7" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Liste7" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste7">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Liste7" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Liste7" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Liste7 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="BooleanString1" blockRowNumber="8" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="BooleanString1" name="BooleanString1" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_checkbox" >
		  			<%-- Field Content BooleanString1 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="BooleanString1" title="BooleanString1">BooleanString1</fs:label>
		  						<fs:ifFieldHelplinkExists for="BooleanString1" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="BooleanString1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Checkbox Control Start --%>
		  								<span class="check_wrap"><fs:checkbox
		  									id="BooleanString1" 
		  									name="BooleanString1" 
		  							styleclass="standard" 
		  							title="BooleanString1" 
		  							/><span class="check_rplc"></span></span>
		  							<%-- Checkbox Control End --%>
		  						<fs:ifFieldHelplinkExists for="BooleanString1" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="BooleanString1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="BooleanString1" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="BooleanString1" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="BooleanString1" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="BooleanString1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="BooleanString1" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="BooleanString1" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content BooleanString1 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Boolean" blockRowNumber="9" styleclass="row">
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
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="String_standard" blockRowNumber="10" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="String_standard" name="String_standard" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content String_standard Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="String_standard" title="String_standard_01">String_standard_01</fs:label>
		  						<fs:ifFieldHelplinkExists for="String_standard" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="String_standard">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="String_standard" 
		  									name="String_standard" 
		  							styleclass="standard" 
		  							title="String_standard_01" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="String_standard" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="String_standard">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="String_standard" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="String_standard" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="String_standard" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="String_standard">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="String_standard" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="String_standard" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content String_standard End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="String_deaktiviert" blockRowNumber="11" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="String_deaktiviert" name="String_deaktiviert" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content String_deaktiviert Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="String_deaktiviert" title="String_deaktiviert">String_deaktiviert</fs:label>
		  						<fs:ifFieldHelplinkExists for="String_deaktiviert" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="String_deaktiviert">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="String_deaktiviert" 
		  									name="String_deaktiviert" 
		  							styleclass="standard" 
		  							title="String_deaktiviert" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="String_deaktiviert" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="String_deaktiviert">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="String_deaktiviert" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="String_deaktiviert" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="String_deaktiviert" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="String_deaktiviert">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="String_deaktiviert" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="String_deaktiviert" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content String_deaktiviert End --%>
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
	<%-- ] Block Tabelle2_V1_0 End --%>