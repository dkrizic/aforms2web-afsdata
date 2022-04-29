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
	<%-- Block Wahrenkorp_V1_0 Start [ --%>
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
		  	<ui:blockContentRowDiv fieldsInRow="String_standard" blockRowNumber="1" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="String_standard" name="String_standard" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content String_standard Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="String_standard" title="Dein Warenkorb">Warenkorb</fs:label>
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
		  							title="Dein Warenkorb" 
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
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Integer" blockRowNumber="2" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Integer" name="Integer" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content Integer Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Integer" title="Monatliche Kosten in Euro">Monatliche Kosten (€)</fs:label>
		  						<fs:ifFieldHelplinkExists for="Integer" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="Integer" 
		  									name="Integer" 
		  							styleclass="standard_number" 
		  							title="Monatliche Kosten in Euro" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="Integer" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Integer">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Integer" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Integer" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Integer" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Integer" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Integer" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Integer End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Integer_1" blockRowNumber="3" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Integer_1" name="Integer_1" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content Integer_1 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Integer_1" title="Einmalige Kosten in Euro">Einmalige Kosten (€)</fs:label>
		  						<fs:ifFieldHelplinkExists for="Integer_1" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="Integer_1" 
		  									name="Integer_1" 
		  							styleclass="standard_number" 
		  							title="Einmalige Kosten in Euro" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="Integer_1" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Integer_1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Integer_1" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Integer_1" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Integer_1" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Integer_1" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Integer_1" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Integer_1 End --%>
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
	<%-- ] Block Wahrenkorp_V1_0 End --%>