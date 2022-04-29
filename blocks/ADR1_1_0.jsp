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
	<%-- Block ADR1_V1_0 Start [ --%>
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
		  	<ui:blockContentRowDiv fieldsInRow="STRASSE" blockRowNumber="1" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="STRASSE" name="STRASSE" styleclass="cell" additionalLayoutClasses="cell100 label17 field83 fieldwidthXX controltype_text" >
		  			<%-- Field Content STRASSE Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="STRASSE" title="Strasse">Strasse</fs:label>
		  						<fs:ifFieldHelplinkExists for="STRASSE" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="STRASSE">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="STRASSE" 
		  									name="STRASSE" 
		  							styleclass="standard" 
		  							title="Strasse" 
		  							size="38"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="STRASSE" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="STRASSE">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="STRASSE" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="STRASSE" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="STRASSE" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="STRASSE">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="STRASSE" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="STRASSE" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content STRASSE End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="HAUSNUMMER BIS STIEGE TUER" blockRowNumber="2" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="HAUSNUMMER" name="HAUSNUMMER" styleclass="cell" additionalLayoutClasses="cell25 label17 field08 fieldwidthXX controltype_text" >
		  			<%-- Field Content HAUSNUMMER Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="HAUSNUMMER" title="Hausnummer">Hausnummer</fs:label>
		  						<fs:ifFieldHelplinkExists for="HAUSNUMMER" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="HAUSNUMMER">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="HAUSNUMMER" 
		  									name="HAUSNUMMER" 
		  							styleclass="standard" 
		  							title="Hausnummer" 
		  							size="7"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="HAUSNUMMER" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="HAUSNUMMER">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="HAUSNUMMER" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="HAUSNUMMER" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="HAUSNUMMER" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="HAUSNUMMER">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="HAUSNUMMER" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="HAUSNUMMER" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content HAUSNUMMER End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="BIS" name="BIS" styleclass="cell" additionalLayoutClasses="cell25 label17 field08 fieldwidthXX controltype_text" >
		  			<%-- Field Content BIS Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="BIS" title="bis">bis</fs:label>
		  						<fs:ifFieldHelplinkExists for="BIS" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="BIS">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="BIS" 
		  									name="BIS" 
		  							styleclass="standard" 
		  							title="bis" 
		  							size="7"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="BIS" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="BIS">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="BIS" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="BIS" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="BIS" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="BIS">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="BIS" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="BIS" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content BIS End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="STIEGE" name="STIEGE" styleclass="cell" additionalLayoutClasses="cell25 label17 field08 fieldwidthXX controltype_text" >
		  			<%-- Field Content STIEGE Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="STIEGE" title="Stiege">Stiege</fs:label>
		  						<fs:ifFieldHelplinkExists for="STIEGE" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="STIEGE">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="STIEGE" 
		  									name="STIEGE" 
		  							styleclass="standard" 
		  							title="Stiege" 
		  							size="7"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="STIEGE" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="STIEGE">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="STIEGE" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="STIEGE" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="STIEGE" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="STIEGE">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="STIEGE" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="STIEGE" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content STIEGE End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="TUER" name="TUER" styleclass="cell" additionalLayoutClasses="cell25 label17 field08 fieldwidthXX controltype_text" >
		  			<%-- Field Content TUER Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="TUER" title="Tür">Tür</fs:label>
		  						<fs:ifFieldHelplinkExists for="TUER" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="TUER">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="TUER" 
		  									name="TUER" 
		  							styleclass="standard" 
		  							title="Tür" 
		  							size="7"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="TUER" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="TUER">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="TUER" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="TUER" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="TUER" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="TUER">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="TUER" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="TUER" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content TUER End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="PLZ_OESTERREICH ORT" blockRowNumber="3" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="PLZ_OESTERREICH" name="PLZ_OESTERREICH" styleclass="cell" additionalLayoutClasses="cell25 label17 field08 fieldwidthXX controltype_text" >
		  			<%-- Field Content PLZ_OESTERREICH Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="PLZ_OESTERREICH" title="Postleitzahl">Postleitzahl</fs:label>
		  						<fs:ifFieldHelplinkExists for="PLZ_OESTERREICH" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="PLZ_OESTERREICH">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="PLZ_OESTERREICH" 
		  									name="PLZ_OESTERREICH" 
		  							styleclass="standard" 
		  							title="Postleitzahl" 
		  							size="4"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="PLZ_OESTERREICH" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="PLZ_OESTERREICH">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="PLZ_OESTERREICH" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="PLZ_OESTERREICH" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="PLZ_OESTERREICH" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="PLZ_OESTERREICH">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="PLZ_OESTERREICH" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="PLZ_OESTERREICH" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content PLZ_OESTERREICH End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="ORT" name="ORT" styleclass="cell" additionalLayoutClasses="cell75 label17 field58 fieldwidthXX controltype_text" >
		  			<%-- Field Content ORT Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="ORT" title="Ort">Ort</fs:label>
		  						<fs:ifFieldHelplinkExists for="ORT" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="ORT">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="ORT" 
		  									name="ORT" 
		  							styleclass="standard" 
		  							title="Ort" 
		  							size="35"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="ORT" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="ORT">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="ORT" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="ORT" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="ORT" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="ORT">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="ORT" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="ORT" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content ORT End --%>
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
	<%-- ] Block ADR1_V1_0 End --%>