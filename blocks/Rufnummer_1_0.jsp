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
	<%-- Block Rufnummer_V1_0 Start [ --%>
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
		  	<ui:blockContentRowDiv fieldsInRow="BooleanString1" blockRowNumber="1" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="BooleanString1" name="BooleanString1" styleclass="cell" additionalLayoutClasses="cell100 label17 field83 labelAttach valueLabel fieldwidthXX controltype_checkbox" >
		  			<%-- Field Content BooleanString1 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="BooleanString1" title="Neue Rufnummer">Neue Rufnummer verwenden</fs:label>
		  						<fs:ifFieldHelplinkExists for="BooleanString1" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="BooleanString1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  					<fs:fixAttachLabelLeftDiv id="BooleanString1">
		  							<%-- Checkbox Control Start --%>
		  								<span class="check_wrap"><fs:checkbox
		  									id="BooleanString1" 
		  									name="BooleanString1" 
		  							styleclass="standard" 
		  							title="Neue Rufnummer" 
		  							/><span class="check_rplc"></span></span>
		  							<%-- Checkbox Control End --%>
		  						<fs:ifFieldHelplinkExists for="BooleanString1" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="BooleanString1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</fs:fixAttachLabelLeftDiv>
		  					<div class="attachedLabel">
		  							<fs:label addStatusImages="true" for="BooleanString1" title="Neue Rufnummer">Neue Rufnummer verwenden</fs:label>
		  							<fs:ifFieldHelplinkExists for="BooleanString1" position="label">
		  								<div class="info">
		  							   		<fs:fieldhelplink styleclass="infoI" for="BooleanString1">i</fs:fieldhelplink> 			
		  								</div>
		  							</fs:ifFieldHelplinkExists>
		  						</div>
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
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="BooleanString2" blockRowNumber="2" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="BooleanString2" name="BooleanString2" styleclass="cell" additionalLayoutClasses="cell100 label17 field83 labelAttach valueLabel fieldwidthXX controltype_checkbox" >
		  			<%-- Field Content BooleanString2 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="BooleanString2" title="Ihre Rufnummer mitnehmen">Rufnummer mitnehmen</fs:label>
		  						<fs:ifFieldHelplinkExists for="BooleanString2" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="BooleanString2">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  					<fs:fixAttachLabelLeftDiv id="BooleanString2">
		  							<%-- Checkbox Control Start --%>
		  								<span class="check_wrap"><fs:checkbox
		  									id="BooleanString2" 
		  									name="BooleanString2" 
		  							styleclass="standard" 
		  							title="Ihre Rufnummer mitnehmen" 
		  							/><span class="check_rplc"></span></span>
		  							<%-- Checkbox Control End --%>
		  						<fs:ifFieldHelplinkExists for="BooleanString2" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="BooleanString2">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</fs:fixAttachLabelLeftDiv>
		  					<div class="attachedLabel">
		  							<fs:label addStatusImages="true" for="BooleanString2" title="Ihre Rufnummer mitnehmen">Rufnummer mitnehmen</fs:label>
		  							<fs:ifFieldHelplinkExists for="BooleanString2" position="label">
		  								<div class="info">
		  							   		<fs:fieldhelplink styleclass="infoI" for="BooleanString2">i</fs:fieldhelplink> 			
		  								</div>
		  							</fs:ifFieldHelplinkExists>
		  						</div>
		  						<fs:ifFieldMessageExists for="BooleanString2" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="BooleanString2" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="BooleanString2" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="BooleanString2">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="BooleanString2" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="BooleanString2" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content BooleanString2 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="BooleanString3" blockRowNumber="3" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="BooleanString3" name="BooleanString3" styleclass="cell" additionalLayoutClasses="cell100 label17 field83 labelAttach valueLabel fieldwidthXX controltype_checkbox" >
		  			<%-- Field Content BooleanString3 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="BooleanString3" title="Von Wertkarte auf Vertrag umsteigen">Von Wertkarte auf Vertrag umsteigen</fs:label>
		  						<fs:ifFieldHelplinkExists for="BooleanString3" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="BooleanString3">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  					<fs:fixAttachLabelLeftDiv id="BooleanString3">
		  							<%-- Checkbox Control Start --%>
		  								<span class="check_wrap"><fs:checkbox
		  									id="BooleanString3" 
		  									name="BooleanString3" 
		  							styleclass="standard" 
		  							title="Von Wertkarte auf Vertrag umsteigen" 
		  							/><span class="check_rplc"></span></span>
		  							<%-- Checkbox Control End --%>
		  						<fs:ifFieldHelplinkExists for="BooleanString3" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="BooleanString3">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</fs:fixAttachLabelLeftDiv>
		  					<div class="attachedLabel">
		  							<fs:label addStatusImages="true" for="BooleanString3" title="Von Wertkarte auf Vertrag umsteigen">Von Wertkarte auf Vertrag umsteigen</fs:label>
		  							<fs:ifFieldHelplinkExists for="BooleanString3" position="label">
		  								<div class="info">
		  							   		<fs:fieldhelplink styleclass="infoI" for="BooleanString3">i</fs:fieldhelplink> 			
		  								</div>
		  							</fs:ifFieldHelplinkExists>
		  						</div>
		  						<fs:ifFieldMessageExists for="BooleanString3" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="BooleanString3" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="BooleanString3" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="BooleanString3">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="BooleanString3" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="BooleanString3" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content BooleanString3 End --%>
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
	<%-- ] Block Rufnummer_V1_0 End --%>