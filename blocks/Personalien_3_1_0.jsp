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
	<%-- Block Personalien_3_V1_0 Start [ --%>
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
		  	<ui:blockContentRowDiv fieldsInRow="Liste_Kunde" blockRowNumber="1" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Liste_Kunde" name="Liste_Kunde" styleclass="cell" additionalLayoutClasses="cell100 label17 field83 fieldwidthXX controltype_radioGroup" >
		  			<%-- Field Content Liste_Kunde Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Liste_Kunde" title="Sie sind?">Sie sind?</fs:label>
		  						<fs:ifFieldHelplinkExists for="Liste_Kunde" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste_Kunde">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- RadioGroup Control Start --%>
		  							<ui:inputgroupFieldset id="Liste_Kunde" role="radiogroup"  styleclass="colCount2 radioGroup_normal">
		  								<ui:legend name="Liste_Kunde" styleclass="skiplegend" />
		  								<ui:inputgroup name="Liste_Kunde">
		  									<c:if test="${groupstatus.index mod 2 == 0}">
		  										<div class="group_content_row">
		  									</c:if>
		  									<div class="group_cell" >
		  										<ui:label
		  											styleclass="fieldradiolabel"
		  											for="Liste_Kunde_${groupelement.position}"><c:out value="${groupelement.value}" escapeXml="false"/></ui:label>
		  										<span class="radio_wrap"><ui:radio
		  											id="Liste_Kunde_${groupelement.position}"
		  											title="${groupelement.value}"
		  							styleclass="standard"
		  											name="Liste_Kunde"/><span class="radio_rplc"></span></span>
		  									</div>
		  									<c:if test="${(groupstatus.count mod 2 == 0) or (groupstatus.last)}">
		  										</div>
		  									</c:if>
		  								</ui:inputgroup>
		  							</ui:inputgroupFieldset>
		  							<%-- RadioGroup Control End --%>
		  						<fs:ifFieldHelplinkExists for="Liste_Kunde" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Liste_Kunde">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Liste_Kunde" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Liste_Kunde" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Liste_Kunde" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Liste_Kunde">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Liste_Kunde" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Liste_Kunde" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Liste_Kunde End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Anrede" blockRowNumber="2" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Anrede" name="Anrede" styleclass="cell" additionalLayoutClasses="cell100 label17 field83 fieldwidthXX controltype_select" >
		  			<%-- Field Content Anrede Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Anrede" title="Bitte die Anrede auswählen"></fs:label>
		  						<fs:ifFieldHelplinkExists for="Anrede" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Anrede">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Select Control Start --%>

		  								<ui:select 
		  									id="Anrede" 
		  									name="Anrede" 
		  							styleclass="standard" 
		  							title="Bitte die Anrede auswählen" />
		  							<%-- Select Control End --%>
		  						<fs:ifFieldHelplinkExists for="Anrede" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Anrede">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Anrede" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Anrede" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Anrede" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Anrede">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Anrede" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Anrede" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Anrede End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="vorname nachname" blockRowNumber="3" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="vorname" name="vorname" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content vorname Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="vorname" title="Vorname eingaben"></fs:label>
		  						<fs:ifFieldHelplinkExists for="vorname" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="vorname">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="vorname" 
		  									name="vorname" 
		  							styleclass="standard" 
		  							title="Vorname eingaben" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="vorname" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="vorname">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="vorname" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="vorname" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="vorname" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="vorname">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="vorname" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="vorname" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content vorname End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="nachname" name="nachname" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content nachname Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="nachname" title="Nachname eingeben"></fs:label>
		  						<fs:ifFieldHelplinkExists for="nachname" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="nachname">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="nachname" 
		  									name="nachname" 
		  							styleclass="standard" 
		  							title="Nachname eingeben" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="nachname" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="nachname">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="nachname" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="nachname" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="nachname" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="nachname">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="nachname" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="nachname" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content nachname End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="geburtsdatum nation" blockRowNumber="4" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="geburtsdatum" name="geburtsdatum" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content geburtsdatum Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="geburtsdatum" title="Geburtsdatum eingeben"></fs:label>
		  						<fs:ifFieldHelplinkExists for="geburtsdatum" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="geburtsdatum">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="geburtsdatum" 
		  									name="geburtsdatum" 
		  							styleclass="standard" 
		  							title="Geburtsdatum eingeben" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="geburtsdatum" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="geburtsdatum">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="geburtsdatum" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="geburtsdatum" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="geburtsdatum" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="geburtsdatum">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="geburtsdatum" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="geburtsdatum" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content geburtsdatum End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="nation" name="nation" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_select" >
		  			<%-- Field Content nation Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="nation" title="Nationalität eingeben"></fs:label>
		  						<fs:ifFieldHelplinkExists for="nation" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="nation">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Select Control Start --%>

		  								<ui:select 
		  									id="nation" 
		  									name="nation" 
		  							styleclass="standard" 
		  							title="Nationalität eingeben" />
		  							<%-- Select Control End --%>
		  						<fs:ifFieldHelplinkExists for="nation" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="nation">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="nation" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="nation" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="nation" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="nation">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="nation" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="nation" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content nation End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="PLZ ort" blockRowNumber="5" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="PLZ" name="PLZ" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content PLZ Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="PLZ" title="Postleitzahl eingeben"></fs:label>
		  						<fs:ifFieldHelplinkExists for="PLZ" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="PLZ">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="PLZ" 
		  									name="PLZ" 
		  							styleclass="standard" 
		  							title="Postleitzahl eingeben" 
		  							size="5"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="PLZ" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="PLZ">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="PLZ" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="PLZ" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="PLZ" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="PLZ">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="PLZ" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="PLZ" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content PLZ End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="ort" name="ort" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content ort Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="ort" title="Ort eingeben"></fs:label>
		  						<fs:ifFieldHelplinkExists for="ort" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="ort">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="ort" 
		  									name="ort" 
		  							styleclass="standard" 
		  							title="Ort eingeben" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="ort" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="ort">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="ort" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="ort" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="ort" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="ort">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="ort" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="ort" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content ort End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="strasse hausnr" blockRowNumber="6" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="strasse" name="strasse" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content strasse Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="strasse" title="Straße eingeben"></fs:label>
		  						<fs:ifFieldHelplinkExists for="strasse" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="strasse">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="strasse" 
		  									name="strasse" 
		  							styleclass="standard" 
		  							title="Straße eingeben" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="strasse" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="strasse">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="strasse" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="strasse" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="strasse" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="strasse">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="strasse" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="strasse" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content strasse End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="hausnr" name="hausnr" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content hausnr Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="hausnr" title="Hausnummer eingeben">Hausnr.</fs:label>
		  						<fs:ifFieldHelplinkExists for="hausnr" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="hausnr">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="hausnr" 
		  									name="hausnr" 
		  							styleclass="standard" 
		  							title="Hausnummer eingeben" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="hausnr" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="hausnr">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="hausnr" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="hausnr" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="hausnr" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="hausnr">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="hausnr" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="hausnr" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content hausnr End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Telefon" blockRowNumber="7" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Telefon" name="Telefon" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content Telefon Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Telefon" title="Ihre Telefonnummer eingeben">Telefon</fs:label>
		  						<fs:ifFieldHelplinkExists for="Telefon" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Telefon">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="Telefon" 
		  									name="Telefon" 
		  							styleclass="standard" 
		  							title="Ihre Telefonnummer eingeben" 
		  							size="20"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="Telefon" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="Telefon">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="Telefon" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="Telefon" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="Telefon" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="Telefon">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="Telefon" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="Telefon" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content Telefon End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="Ausweisart" blockRowNumber="8" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="Ausweisart" name="Ausweisart" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_radioGroup" >
		  			<%-- Field Content Ausweisart Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="Ausweisart" title="Ausweisart auswählen">Ausweisart</fs:label>
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
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="String_standard" blockRowNumber="9" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="String_standard" name="String_standard" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content String_standard Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="String_standard" title="Ausstellende Behörde auswählen">Ausstellende Behörde</fs:label>
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
		  							title="Ausstellende Behörde auswählen" 
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
	<%-- ] Block Personalien_3_V1_0 End --%>