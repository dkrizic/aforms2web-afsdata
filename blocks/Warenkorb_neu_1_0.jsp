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
	<%-- Block Warenkorb_neu_V1_0 Start [ --%>
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
		  	<ui:blockContentRowDiv fieldsInRow="Integer_001 Integer_001_4" blockRowNumber="1" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Integer_001" name="Integer_001" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content Integer_001 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Integer_001" title="Monatliche Kosten in Euro für mein Gerät">Mein Gerät (Monatliche Kosten €)</fs:label>
		  						<fs:ifFieldHelplinkExists for="Integer_001" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="Integer_001" 
		  									name="Integer_001" 
		  							styleclass="standard_number" 
		  							title="Monatliche Kosten in Euro für mein Gerät" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Integer_001">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Integer_001" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Integer_001" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Integer_001" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Integer_001" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Integer_001 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="Integer_001_4" name="Integer_001_4" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content Integer_001_4 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Integer_001_4" title="Einmalige Kosten für mein Gerät  in Euro">Mein Gerät (Einmalige Kosten €)</fs:label>
		  						<fs:ifFieldHelplinkExists for="Integer_001_4" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_4">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="Integer_001_4" 
		  									name="Integer_001_4" 
		  							styleclass="standard_number" 
		  							title="Einmalige Kosten für mein Gerät  in Euro" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_4" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Integer_001_4">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Integer_001_4" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Integer_001_4" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_4" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_4">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Integer_001_4" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Integer_001_4" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Integer_001_4 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Integer_001_1 Integer_001_5" blockRowNumber="2" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Integer_001_1" name="Integer_001_1" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content Integer_001_1 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Integer_001_1" title="Monatliche Kosten in Euro für mein Tarif">Mein Tarif (Monatliche Kosten €)</fs:label>
		  						<fs:ifFieldHelplinkExists for="Integer_001_1" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="Integer_001_1" 
		  									name="Integer_001_1" 
		  							styleclass="standard_number" 
		  							title="Monatliche Kosten in Euro für mein Tarif" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_1" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Integer_001_1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Integer_001_1" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Integer_001_1" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_1" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Integer_001_1" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Integer_001_1" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Integer_001_1 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="Integer_001_5" name="Integer_001_5" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content Integer_001_5 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Integer_001_5" title="Einmalige Kosten für mein Tarif  in Euro">Mein Gerät (Einmalige Kosten €)</fs:label>
		  						<fs:ifFieldHelplinkExists for="Integer_001_5" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_5">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="Integer_001_5" 
		  									name="Integer_001_5" 
		  							styleclass="standard_number" 
		  							title="Einmalige Kosten für mein Tarif  in Euro" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_5" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Integer_001_5">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Integer_001_5" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Integer_001_5" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_5" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_5">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Integer_001_5" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Integer_001_5" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Integer_001_5 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Integer_001_2 Integer_001_6" blockRowNumber="3" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Integer_001_2" name="Integer_001_2" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content Integer_001_2 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Integer_001_2" title="Monatliche WebBonus in Euro">WebBonus (Monatliche Kosten €)</fs:label>
		  						<fs:ifFieldHelplinkExists for="Integer_001_2" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_2">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="Integer_001_2" 
		  									name="Integer_001_2" 
		  							styleclass="standard_number" 
		  							title="Monatliche WebBonus in Euro" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_2" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Integer_001_2">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Integer_001_2" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Integer_001_2" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_2" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_2">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Integer_001_2" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Integer_001_2" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Integer_001_2 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="Integer_001_6" name="Integer_001_6" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content Integer_001_6 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Integer_001_6" title="Einmaliger WebBonus in Euro">Mein Gerät (Einmalige Kosten €)</fs:label>
		  						<fs:ifFieldHelplinkExists for="Integer_001_6" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_6">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="Integer_001_6" 
		  									name="Integer_001_6" 
		  							styleclass="standard_number" 
		  							title="Einmaliger WebBonus in Euro" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_6" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Integer_001_6">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Integer_001_6" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Integer_001_6" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_6" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_6">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Integer_001_6" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Integer_001_6" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Integer_001_6 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Integer_001_3 Integer_001_7" blockRowNumber="4" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Integer_001_3" name="Integer_001_3" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content Integer_001_3 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Integer_001_3" title="Monatliche Kosten in Euro für meine Aktivierungsgebühr">Aktivierungsgebühr (Monatliche Kosten €)</fs:label>
		  						<fs:ifFieldHelplinkExists for="Integer_001_3" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_3">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="Integer_001_3" 
		  									name="Integer_001_3" 
		  							styleclass="standard_number" 
		  							title="Monatliche Kosten in Euro für meine Aktivierungsgebühr" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_3" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Integer_001_3">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Integer_001_3" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Integer_001_3" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_3" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_3">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Integer_001_3" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Integer_001_3" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Integer_001_3 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="Integer_001_7" name="Integer_001_7" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content Integer_001_7 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Integer_001_7" title="Einmalige Kosten für meine Aktivierungsgebühr in Euro">Aktivierungsgebühr (Einmalige Kosten €)</fs:label>
		  						<fs:ifFieldHelplinkExists for="Integer_001_7" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_7">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="Integer_001_7" 
		  									name="Integer_001_7" 
		  							styleclass="standard_number" 
		  							title="Einmalige Kosten für meine Aktivierungsgebühr in Euro" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_7" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Integer_001_7">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Integer_001_7" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Integer_001_7" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_7" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_7">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Integer_001_7" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Integer_001_7" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Integer_001_7 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Integer_001_8 Integer_001_9" blockRowNumber="5" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Integer_001_8" name="Integer_001_8" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content Integer_001_8 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Integer_001_8" title="Summe der monatlichen Kosten in Euro">Summe (Monatliche Kosten €)</fs:label>
		  						<fs:ifFieldHelplinkExists for="Integer_001_8" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_8">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="Integer_001_8" 
		  									name="Integer_001_8" 
		  							styleclass="standard_number" 
		  							title="Summe der monatlichen Kosten in Euro" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_8" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Integer_001_8">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Integer_001_8" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Integer_001_8" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_8" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_8">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Integer_001_8" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Integer_001_8" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Integer_001_8 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="Integer_001_9" name="Integer_001_9" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content Integer_001_9 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Integer_001_9" title="Summe der einmaligen Kosten in Euro">Summe (Einmalige Kosten €)</fs:label>
		  						<fs:ifFieldHelplinkExists for="Integer_001_9" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_9">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="Integer_001_9" 
		  									name="Integer_001_9" 
		  							styleclass="standard_number" 
		  							title="Summe der einmaligen Kosten in Euro" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_9" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Integer_001_9">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Integer_001_9" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Integer_001_9" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Integer_001_9" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Integer_001_9">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Integer_001_9" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Integer_001_9" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Integer_001_9 End --%>
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
	<%-- ] Block Warenkorb_neu_V1_0 End --%>