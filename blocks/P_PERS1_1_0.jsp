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
	<%-- Block P_PERS1_V1_0 Start [ --%>
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
		  	<ui:blockContentRowDiv fieldsInRow="NACHNAME VORNAME" blockRowNumber="1" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="NACHNAME" name="NACHNAME" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content NACHNAME Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="NACHNAME" title="Nachname">Nachname</fs:label>
		  						<fs:ifFieldHelplinkExists for="NACHNAME" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="NACHNAME">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="NACHNAME" 
		  									name="NACHNAME" 
		  							styleclass="standard" 
		  							title="Nachname" 
		  							size="35"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="NACHNAME" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="NACHNAME">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="NACHNAME" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="NACHNAME" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="NACHNAME" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="NACHNAME">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="NACHNAME" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="NACHNAME" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content NACHNAME End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="VORNAME" name="VORNAME" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content VORNAME Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="VORNAME" title="Vorname">Vorname</fs:label>
		  						<fs:ifFieldHelplinkExists for="VORNAME" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="VORNAME">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="VORNAME" 
		  									name="VORNAME" 
		  							styleclass="standard" 
		  							title="Vorname" 
		  							size="35"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="VORNAME" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="VORNAME">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="VORNAME" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="VORNAME" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="VORNAME" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="VORNAME">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="VORNAME" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="VORNAME" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content VORNAME End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="AK_GRAD GESCHLECHT" blockRowNumber="2" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="AK_GRAD" name="AK_GRAD" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content AK_GRAD Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="AK_GRAD" title="Akademischer Grad">Akademischer Grad</fs:label>
		  						<fs:ifFieldHelplinkExists for="AK_GRAD" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="AK_GRAD">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="AK_GRAD" 
		  									name="AK_GRAD" 
		  							styleclass="standard" 
		  							title="Akademischer Grad" 
		  							size="30"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="AK_GRAD" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="AK_GRAD">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="AK_GRAD" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="AK_GRAD" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="AK_GRAD" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="AK_GRAD">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="AK_GRAD" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="AK_GRAD" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content AK_GRAD End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="GESCHLECHT" name="GESCHLECHT" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_select" >
		  			<%-- Field Content GESCHLECHT Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="GESCHLECHT" title="Geschlecht">Geschlecht</fs:label>
		  						<fs:ifFieldHelplinkExists for="GESCHLECHT" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="GESCHLECHT">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Select Control Start --%>

		  								<ui:select 
		  									id="GESCHLECHT" 
		  									name="GESCHLECHT" 
		  							styleclass="standard" 
		  							title="Geschlecht" />
		  							<%-- Select Control End --%>
		  						<fs:ifFieldHelplinkExists for="GESCHLECHT" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="GESCHLECHT">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="GESCHLECHT" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="GESCHLECHT" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="GESCHLECHT" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="GESCHLECHT">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="GESCHLECHT" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="GESCHLECHT" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content GESCHLECHT End --%>
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
	<%-- ] Block P_PERS1_V1_0 End --%>