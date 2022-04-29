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
	<%-- Block Wiederholbarer_Block_V1_0 Start [ --%>
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
		  	<ui:blockContentRowDiv fieldsInRow="String_standard String_standard_1" blockRowNumber="1" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="String_standard" name="String_standard" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content String_standard Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="String_standard" title="Name eingeben">Name</fs:label>
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
		  							title="Name eingeben" 
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
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="String_standard_1" name="String_standard_1" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content String_standard_1 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="String_standard_1" title="Vorname eingaben">Vorname</fs:label>
		  						<fs:ifFieldHelplinkExists for="String_standard_1" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="String_standard_1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="String_standard_1" 
		  									name="String_standard_1" 
		  							styleclass="standard" 
		  							title="Vorname eingaben" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="String_standard_1" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="String_standard_1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="String_standard_1" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="String_standard_1" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="String_standard_1" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="String_standard_1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="String_standard_1" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="String_standard_1" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content String_standard_1 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="EMail" blockRowNumber="2" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="EMail" name="EMail" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content EMail Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="EMail" title="E-Mail-Adresse eingeben">E-Mail-Adresse</fs:label>
		  						<fs:ifFieldHelplinkExists for="EMail" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="EMail">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="EMail" 
		  									name="EMail" 
		  							styleclass="standard" 
		  							title="E-Mail-Adresse eingeben" 
		  							size="35"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="EMail" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="EMail">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="EMail" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="EMail" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="EMail" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="EMail">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="EMail" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="EMail" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content EMail End --%>
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
	<%-- ] Block Wiederholbarer_Block_V1_0 End --%>