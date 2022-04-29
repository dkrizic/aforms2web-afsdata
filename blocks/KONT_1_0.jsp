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
	<%-- Block KONT_V1_0 Start [ --%>
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
		  	<ui:blockContentRowDiv fieldsInRow="TELEFON1 TELEFON2" blockRowNumber="1" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="TELEFON1" name="TELEFON1" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content TELEFON1 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="TELEFON1" title="Telefon 1">Telefon 1</fs:label>
		  						<fs:ifFieldHelplinkExists for="TELEFON1" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="TELEFON1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="TELEFON1" 
		  									name="TELEFON1" 
		  							styleclass="standard" 
		  							title="Telefon 1" 
		  							size="25"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="TELEFON1" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="TELEFON1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="TELEFON1" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="TELEFON1" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="TELEFON1" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="TELEFON1">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="TELEFON1" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="TELEFON1" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content TELEFON1 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv><ui:inlineMessagesCssClassesCellDiv id="TELEFON2" name="TELEFON2" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content TELEFON2 Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="TELEFON2" title="Telefon 2">Telefon 2</fs:label>
		  						<fs:ifFieldHelplinkExists for="TELEFON2" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="TELEFON2">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="TELEFON2" 
		  									name="TELEFON2" 
		  							styleclass="standard" 
		  							title="Telefon 2" 
		  							size="25"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="TELEFON2" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="TELEFON2">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="TELEFON2" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="TELEFON2" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="TELEFON2" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="TELEFON2">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="TELEFON2" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="TELEFON2" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content TELEFON2 End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="FAX" blockRowNumber="2" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="FAX" name="FAX" styleclass="cell" additionalLayoutClasses="cell50 label17 field33 fieldwidthXX controltype_text" >
		  			<%-- Field Content FAX Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="FAX" title="Fax">Fax</fs:label>
		  						<fs:ifFieldHelplinkExists for="FAX" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="FAX">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="FAX" 
		  									name="FAX" 
		  							styleclass="standard" 
		  							title="Fax" 
		  							size="25"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="FAX" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="FAX">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="FAX" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="FAX" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="FAX" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="FAX">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="FAX" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="FAX" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content FAX End --%>
		  		</ui:inlineMessagesCssClassesCellDiv>
		  	</ui:blockContentRowDiv><ui:blockContentRowDiv fieldsInRow="EMAIL" blockRowNumber="3" styleclass="row">
		  		<ui:inlineMessagesCssClassesCellDiv id="EMAIL" name="EMAIL" styleclass="cell" additionalLayoutClasses="cell100 label17 field83 fieldwidthXX controltype_text" >
		  			<%-- Field Content EMAIL Start --%>
		  				<div class="cellinner">
		  					<%-- FieldContent Label Start --%>
		  					<div class="label" >
		  						<fs:label addStatusImages="true" for="EMAIL" title="E-Mail">E-Mail</fs:label>
		  						<fs:ifFieldHelplinkExists for="EMAIL" position="label">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="EMAIL">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					</div>
		  					<%-- FieldContent Label End --%>
		  					<%-- Field Control Cell Start --%>
		  					<div class="field">
		  							<%-- Text Control Start --%>

		  								<ui:text 
		  									id="EMAIL" 
		  									name="EMAIL" 
		  							styleclass="standard" 
		  							title="E-Mail" 
		  							size="35"/>
		  							<%-- Text Control End --%>
		  						<fs:ifFieldHelplinkExists for="EMAIL" position="field">
		  							<div class="info">
		  								<fs:fieldhelplink styleclass="infoI" for="EMAIL">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  						<fs:ifFieldMessageExists for="EMAIL" position="field">
		  							<div class="message">
		  								<fs:afsFieldMessageOut for="EMAIL" />
		  							</div>
		  						</fs:ifFieldMessageExists>
		  					</div>
		  					<%-- Field Control Cell End --%>
		  					<%-- Field Info Cell Start --%>
		  						<fs:ifFieldHelplinkExists for="EMAIL" position="cell">
		  							<div class="info">
		  						   		<fs:fieldhelplink styleclass="infoI" for="EMAIL">i</fs:fieldhelplink> 			
		  							</div>
		  						</fs:ifFieldHelplinkExists>
		  					<%-- Field Info Cell End --%>
		  					<%-- Field Message Cell Start --%>
		  					<fs:ifFieldMessageExists for="EMAIL" position="cell">
		  						<div class="message">
		  							<fs:afsFieldMessageOut for="EMAIL" />
		  						</div>
		  					</fs:ifFieldMessageExists>
		  					<%-- Field Message Cell End --%>
		  				</div><%-- Field Content EMAIL End --%>
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
	<%-- ] Block KONT_V1_0 End --%>