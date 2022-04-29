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
	<%-- Block Kontodaten_V1_0 Start [ --%>
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
		  	<ui:blockContentRowDiv fieldsInRow="name Vorname" blockRowNumber="1" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="name" name="name" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content name Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="name" title="Name eingeben">Name</fs:label>
		  						<fs:ifFieldHelplinkExists for="name" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="name">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="name" 
		  									name="name" 
		  							styleclass="standard" 
		  							title="Name eingeben" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="name" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="name">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="name" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="name" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="name" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="name">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="name" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="name" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content name End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="Vorname" name="Vorname" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content Vorname Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Vorname" title="Vorname eingaben">Vorname</fs:label>
		  						<fs:ifFieldHelplinkExists for="Vorname" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Vorname">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="Vorname" 
		  									name="Vorname" 
		  							styleclass="standard" 
		  							title="Vorname eingaben" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="Vorname" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Vorname">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Vorname" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Vorname" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Vorname" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Vorname">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Vorname" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Vorname" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Vorname End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="kontonummer BLZ" blockRowNumber="2" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="kontonummer" name="kontonummer" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content kontonummer Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="kontonummer" title="Kontonummer eingeben">Kontonummer</fs:label>
		  						<fs:ifFieldHelplinkExists for="kontonummer" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="kontonummer">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="kontonummer" 
		  									name="kontonummer" 
		  							styleclass="standard" 
		  							title="Kontonummer eingeben" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="kontonummer" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="kontonummer">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="kontonummer" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="kontonummer" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="kontonummer" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="kontonummer">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="kontonummer" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="kontonummer" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content kontonummer End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="BLZ" name="BLZ" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content BLZ Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="BLZ" title="Banklietzahl eingeben">BLZ</fs:label>
		  						<fs:ifFieldHelplinkExists for="BLZ" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="BLZ">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="BLZ" 
		  									name="BLZ" 
		  							styleclass="standard" 
		  							title="Banklietzahl eingeben" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="BLZ" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="BLZ">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="BLZ" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="BLZ" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="BLZ" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="BLZ">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="BLZ" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="BLZ" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content BLZ End --%>
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
	<%-- ] Block Kontodaten_V1_0 End --%>